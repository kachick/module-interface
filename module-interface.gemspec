# coding: us-ascii

Gem::Specification.new do |gem|
  # specific

  gem.name          = 'module-interface'
  gem.description   = %q{Force to define methods in module/class}
  gem.summary       = gem.description.dup
  gem.license       = 'MIT'
  gem.version       = '0.1.0'

  gem.add_development_dependency 'test-declare', '~> 0.0.3'
  gem.add_development_dependency 'yard', '>= 0.9.20', '< 2'
  gem.add_development_dependency 'rake', '>= 10', '< 20'
  gem.add_development_dependency 'bundler', '>= 2', '< 3'

  if RUBY_ENGINE == 'rbx'
    gem.add_dependency 'rubysl', '~> 2.0'
    gem.add_dependency 'rubysl-test-unit', '~> 2.0'
  end

  # common

  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end

