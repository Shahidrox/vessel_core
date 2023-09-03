$LOAD_PATH.push File.expand_path("lib", __dir__)

require_relative "lib/vessel_core/version"

Gem::Specification.new do |s|
  s.name        = "vessel_core"
  s.version     = VesselCore::VERSION
  s.authors     = ["Shahid"]
  s.email       = ["shahid.devel@gmail.com"]
  s.homepage    = "https://github.com/Shahidrox/vessel_core"
  s.summary     = "This is VesselCore."
  s.description = "Description of VesselCore."
  s.license     = "MIT"

  s.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  s.add_dependency 'rails', '>= 7.0.3.1'
  s.add_dependency 'pg'
  s.add_dependency 'active_model_serializers' # response in JSON format
  s.add_dependency 'annotate' # Add a comment summarizing the current schema to the top or bottom 
  s.add_dependency 'faker' #　Faker generates data at random
  s.add_dependency 'rspec-rails'
  s.add_dependency 'rspec-retry' # RSpec::Retry adds a :retry option for intermittently failing rspec examples. 
  s.add_dependency 'rubocop'
  s.add_dependency 'rubocop-rails'
end
