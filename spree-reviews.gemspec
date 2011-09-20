Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree-reviews'
  s.version     = '3.2'
  s.summary     = 'Allows reviews'
  s.description = 'Allows reviews'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'sandeep srinivasa'
  s.email             = 'sss@lambdacurry.com'
  s.homepage          = 'http://spreecommerce.com'
  s.rubyforge_project = 'spree-reviews'

  s.files        = Dir['README.md', 'lib/**/*', 'app/**/*', 'config/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core')
end
