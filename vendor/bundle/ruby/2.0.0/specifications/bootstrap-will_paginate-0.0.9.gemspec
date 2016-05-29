# -*- encoding: utf-8 -*-
# stub: bootstrap-will_paginate 0.0.9 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap-will_paginate".freeze
  s.version = "0.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nicholas Fine".freeze, "Isaac Bowen".freeze]
  s.date = "2012-09-25"
  s.description = "Hooks into will_paginate to format the html to match Twitter Bootstrap styling.  Extension code was originally written by Isaac Bowen (https://gist.github.com/1182136).".freeze
  s.email = ["nicholas.fine@gmail.com".freeze, "ikebowen@gmail.com".freeze]
  s.homepage = "http://ndfine.com/2011/12/17/twitter-bootstrap-will-paginate.html".freeze
  s.rubyforge_project = "bootstrap-will_paginate".freeze
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Format will_paginate html to match Twitter Bootstrap styling.".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<will_paginate>.freeze, [">= 0"])
    else
      s.add_dependency(%q<will_paginate>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<will_paginate>.freeze, [">= 0"])
  end
end
