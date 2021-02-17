class Model < Thor::Group
  include Thor::Actions

  # Define arguments and options
  argument :name
  class_option :test_framework, :default => :test_unit

  def self.source_root
    File.dirname(__FILE__)
  end

  def create_model_file
    template('templates/model.erb', "lib/six_saferpay/models/#{name}.rb")
  end

  def create_test_file
    template('templates/spec.erb', "spec/six_saferpay/models/#{name}.rb")
  end

  def create_fabric_file
    template('templates/model.erb', "lib/fabrics/models/#{name}s.rb")
  end

end
