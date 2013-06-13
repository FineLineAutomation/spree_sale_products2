Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_sale_products'
  s.version     = '1.0.0'
  s.summary     = 'Adds a sale price field to Spree::Product'
  s.description = 'Adds a sale price field to Spree::Product. Works with spree_volume_pricing'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Michael Bianco'
  s.email             = 'info@cliffsidedev.com'
  s.homepage          = 'http://github.com/iloveitaly/spree_sale_products'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 1.1.3'

  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails', '~> 1.7.0'
  s.add_development_dependency 'rspec-rails', '~> 2.9.0'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'sqlite3'
end
