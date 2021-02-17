class Newgem < Thor::Group
  include Thor::Actions

  # Define arguments and options
  argument :name
  class_option :test_framework, :default => :test_unit

  def self.source_root
    File.dirname(__FILE__)
  end

  def create_lib_file
    template('templates/newgem.tt', "#{name}/lib/#{name}.rb")
  end

  def create_test_file
    test = options[:test_framework] == "rspec" ? :spec : :test
    create_file "#{name}/#{test}/#{name}_#{test}.rb"
  end

end
