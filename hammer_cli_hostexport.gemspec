$:.unshift File.expand_path("../lib", __FILE__)
require "hammer_cli_hostexport/version"

Gem::Specification.new do |s|

  s.name        = 'hammer_cli_hostexport'
  s.authors     = ["Matt Hyclak"]
  s.email       = 'matt.hyclak@cbts.net'

  s.version     = HammerCLIHostExport.version.dup

  s.licenses    = ['GPLv3+']
  s.summary     = "Export hosts for later import"
  s.description = "Exports the necessary information to recreate hosts in another foreman/satellite instance"

  s.files       = Dir['{config,lib}/**/*', 'README*']
  s.require_paths = ["lib"]
end
