Gem::Specification.new do |s|
  s.name        = 'hammer_cli_exporthosts'
  s.version     = '0.5.0'
  s.licenses    = ['GPLv3+']
  s.summary     = "Export hosts for later import"
  s.description = "Exports the necessary information to recreate hosts in another foreman/satellite instance"
  s.authors     = ["Matt Hyclak"]
  s.email       = 'matt.hyclak@cbts.net'

  s.files       = Dir['{config,lib}/**/*', 'README*']
  s.require_paths = ["lib"]
end
