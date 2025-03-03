module Unitwise
  # A prefix can be used with metric atoms to modify their scale.
  class Prefix < Base
    liner :scalar

    # The data loaded from the UCUM spec files
    # @api semipublic
    def self.data
      puts('Loading units yaml with safe_load...') if ENV['VERIFY_UNITWISE_SAFE']
      @data ||= YAML.safe_load(File.open(data_file), permitted_classes: [Symbol, BigDecimal])
    end

    # The location of the UCUM spec prefix data file
    # @api semipublic
    def self.data_file
      Unitwise.data_file 'prefix'
    end
  end
end
