# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{secret_key}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Winton Welsh"]
  s.date = %q{2009-07-18}
  s.email = %q{mail@wintoni.us}
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["gemspec.rb", "lib", "lib/secret_key.rb", "MIT-LICENSE", "Rakefile", "README.markdown", "secret_key.gemspec", "spec", "spec/secret_key_spec.rb", "spec/spec.opts", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/winton/secret_key}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Provides an accessor for a secret key stored in tmp}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
