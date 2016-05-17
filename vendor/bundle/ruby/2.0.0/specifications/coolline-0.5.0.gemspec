# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "coolline"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mon ouie"]
  s.date = "2014-09-14"
  s.description = "A readline-like library that allows to change how the input\nis displayed.\n"
  s.email = "mon.ouie@gmail.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "http://github.com/Mon-Ouie/coolline"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Sounds like readline, smells like readline, but isn't readline"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<unicode_utils>, ["~> 1.4"])
      s.add_development_dependency(%q<riot>, [">= 0"])
    else
      s.add_dependency(%q<unicode_utils>, ["~> 1.4"])
      s.add_dependency(%q<riot>, [">= 0"])
    end
  else
    s.add_dependency(%q<unicode_utils>, ["~> 1.4"])
    s.add_dependency(%q<riot>, [">= 0"])
  end
end
