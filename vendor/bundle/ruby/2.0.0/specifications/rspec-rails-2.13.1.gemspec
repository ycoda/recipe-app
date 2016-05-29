# -*- encoding: utf-8 -*-
# stub: rspec-rails 2.13.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-rails".freeze
  s.version = "2.13.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Chelimsky".freeze]
  s.date = "2013-04-27"
  s.description = "RSpec for Rails".freeze
  s.email = "rspec-users@rubyforge.org".freeze
  s.homepage = "http://github.com/rspec/rspec-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubyforge_project = "rspec".freeze
  s.rubygems_version = "2.6.4".freeze
  s.summary = "rspec-rails-2.13.1".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.0"])
      s.add_runtime_dependency(%q<actionpack>.freeze, [">= 3.0"])
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.0"])
      s.add_runtime_dependency(%q<rspec-core>.freeze, ["~> 2.13.0"])
      s.add_runtime_dependency(%q<rspec-expectations>.freeze, ["~> 2.13.0"])
      s.add_runtime_dependency(%q<rspec-mocks>.freeze, ["~> 2.13.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0.0"])
      s.add_development_dependency(%q<cucumber>.freeze, ["~> 1.1.9"])
      s.add_development_dependency(%q<aruba>.freeze, ["~> 0.4.11"])
      s.add_development_dependency(%q<ZenTest>.freeze, ["= 4.9.0"])
      s.add_development_dependency(%q<ammeter>.freeze, ["= 0.2.5"])
      s.add_development_dependency(%q<capybara>.freeze, [">= 2.0.0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 3.0"])
      s.add_dependency(%q<actionpack>.freeze, [">= 3.0"])
      s.add_dependency(%q<railties>.freeze, [">= 3.0"])
      s.add_dependency(%q<rspec-core>.freeze, ["~> 2.13.0"])
      s.add_dependency(%q<rspec-expectations>.freeze, ["~> 2.13.0"])
      s.add_dependency(%q<rspec-mocks>.freeze, ["~> 2.13.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0.0"])
      s.add_dependency(%q<cucumber>.freeze, ["~> 1.1.9"])
      s.add_dependency(%q<aruba>.freeze, ["~> 0.4.11"])
      s.add_dependency(%q<ZenTest>.freeze, ["= 4.9.0"])
      s.add_dependency(%q<ammeter>.freeze, ["= 0.2.5"])
      s.add_dependency(%q<capybara>.freeze, [">= 2.0.0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 3.0"])
    s.add_dependency(%q<actionpack>.freeze, [">= 3.0"])
    s.add_dependency(%q<railties>.freeze, [">= 3.0"])
    s.add_dependency(%q<rspec-core>.freeze, ["~> 2.13.0"])
    s.add_dependency(%q<rspec-expectations>.freeze, ["~> 2.13.0"])
    s.add_dependency(%q<rspec-mocks>.freeze, ["~> 2.13.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0.0"])
    s.add_dependency(%q<cucumber>.freeze, ["~> 1.1.9"])
    s.add_dependency(%q<aruba>.freeze, ["~> 0.4.11"])
    s.add_dependency(%q<ZenTest>.freeze, ["= 4.9.0"])
    s.add_dependency(%q<ammeter>.freeze, ["= 0.2.5"])
    s.add_dependency(%q<capybara>.freeze, [">= 2.0.0"])
  end
end
