Gem::Specification.new do |gem|
  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.summary       = %q{BlockScope for to force define methods in module/class.}
  gem.description   = %q{BlockScope for to force define methods in module/class.}
  gem.homepage      = 'https://github.com/kachick/module-interface'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features|declare)/})
  gem.name          = 'module-interface'
  gem.require_paths = ['lib']
  gem.version       = '0.0.3'

  gem.required_ruby_version = '>=1.9.2'

  gem.add_development_dependency 'test-declare', '~> 0.0.2'
  gem.add_development_dependency 'yard', '~> 0.8'
end

