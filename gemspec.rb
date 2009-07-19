GEM_NAME = 'secret_key'
GEM_FILES = FileList['**/*'] - FileList['coverage', 'coverage/**/*', 'pkg', 'pkg/**/*', 'spec/tmp', 'spec/tmp/**/*']
GEM_SPEC = Gem::Specification.new do |s|
  # == CONFIGURE ==
  s.author = "Winton Welsh"
  s.email = "mail@wintoni.us"
  s.homepage = "http://github.com/winton/#{GEM_NAME}"
  s.summary = "Provides an accessor for a secret key stored in tmp"
  # == CONFIGURE ==
  s.extra_rdoc_files = [ "README.markdown" ]
  s.files = GEM_FILES.to_a
  s.has_rdoc = false
  s.name = GEM_NAME
  s.platform = Gem::Platform::RUBY
  s.require_path = "lib"
  s.version = "0.1.0"
end