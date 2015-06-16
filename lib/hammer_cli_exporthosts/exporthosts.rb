require 'hammer_cli'
require 'hammer_cli_foreman/host'

module HammerCLIExportHosts
  class ExportHostsCommand < HammerCLIForeman::Command

    DEFAULT_PER_PAGE = 1000

    resource :hosts
    action :index

    command_name 'Export Hosts for Migration'

    output do
      field :id, 'id'
      field :name, 'name'
      field :ip, 'ip'
      field :mac, 'mac'
      field :operatingsystem_name, 'os'
    end

    def adapter
      :csv
    end

    def request_params
      params             = super
      params['per_page'] ||= HammerCLI::Settings.get(:ui, :per_page) || DEFAULT_PER_PAGE
      params
    end

    def execute
      print_record(output_definition, hosts)
      
      HammerCLI::EX_OK
    end

    private

    def response
      @response ||= send_request
    end

    def hosts
      @hosts ||= response['results']
    end
  end

  # Plug in to the hammer command
  HammerCLIForeman::Host.subcommand('exporthosts', 'Export basic host information', HammerCLIExportHosts::ExportHostsCommand)
end
