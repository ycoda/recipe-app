# -*- encoding: utf-8 -*-

require "unicode_utils/read_cdata"
require "unicode_utils/simple_upcase"
require "unicode_utils/conditional_casing"

module UnicodeUtils

  SPECIAL_UPCASE_MAP = Impl.read_multivalued_map("special_uc_map") # :nodoc:

  # Perform a full case-conversion of +str+ to uppercase according to
  # the Unicode standard.
  #
  # Some conversion rules are language dependent, these are in effect
  # when a non-nil +language_id+ is given. If non-nil, the
  # +language_id+ must be a two letter language code as defined in BCP
  # 47 (http://tools.ietf.org/rfc/bcp/bcp47.txt) as a symbol. If a
  # language doesn't have a two letter code, the three letter code is
  # to be used. If locale independent behaviour is required, +nil+
  # should be passed explicitely, because a later version of
  # UnicodeUtils may default to something else.
  #
  # Examples:
  #
  #   require "unicode_utils/upcase"
  #   UnicodeUtils.upcase("weiß") => "WEISS"
  #   UnicodeUtils.upcase("i", :en) => "I"
  #   UnicodeUtils.upcase("i", :tr) => "İ"
  def upcase(str, language_id = nil)
    String.new.force_encoding(str.encoding).tap { |res|
      if Impl::LANGS_WITH_RULES.include?(language_id)
        # ensure O(1) lookup by index
        str = str.encode(Encoding::UTF_32LE)
      end
      pos = 0
      str.each_codepoint { |cp|
        special_mapping =
          Impl.conditional_upcase_mapping(cp, str, pos, language_id) ||
          SPECIAL_UPCASE_MAP[cp]
        if special_mapping
          special_mapping.each { |m| res << m }
        else
          res << (SIMPLE_UPCASE_MAP[cp] || cp)
        end
        pos += 1
      }
    }
  end
  module_function :upcase

end
