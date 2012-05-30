# -*- encoding: utf-8 -*-
require File.expand_path('../lib/wysihtml5-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nihad Abbasov"]
  gem.email         = ["mail@narkoz.me"]
  gem.description   = %q{A wysiwyg text editor for use in the Rails 3 asset pipeline}
  gem.summary       = %q{wysihtml5 for rails}
  gem.homepage      = "https://github.com/narkoz/wysihtml5-rails"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "wysihtml5-rails"
  gem.require_paths = ["lib"]
  gem.version       = Wysihtml5::Rails::VERSION
end
