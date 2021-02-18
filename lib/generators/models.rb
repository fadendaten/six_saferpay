require "thor"
require 'active_support/inflector'

module SixSaferpay
  module Generators
    class Model < Thor::Group
      include Thor::Actions

      attr_accessor :attributes, :file_name

      argument :name
      argument :method_attributes, optional: true, type: :hash
      class_option :test_framework, :default => :test_unit

      def self.source_root
        File.dirname(__FILE__)
      end

      def file_name
        @file_name = name.underscore
      end

      def create_attributes_array
        @attributes = []
        if method_attributes
          method_attributes.each do |key, value|
            split = value.split(':')

            name = key.underscore
            type = split.first
            if split.length == 2
              mandatory = split.last
            else
              mandatory = false
            end

            attribute = Attribute.new(name, type, mandatory)

            @attributes << attribute
          end
        end
      end

      def create_model_file
        template('templates/model.erb', "lib/six_saferpay/models/#{@file_name}.rb")
      end

      def create_test_file
        template('templates/spec.erb', "spec/six_saferpay/models/#{@file_name}_spec.rb")
      end

      def create_fabric_file
        template('templates/fabric.erb', "spec/fabrics/six_saferpay/models/#{@file_name.pluralize}.rb")
      end

    end

    class Attribute
      attr_accessor :name, :type, :mandatory

      def initialize(name, type, mandatory = false)
        @name = name
        @type = type
        if mandatory == "true"
          @mandatory = true
        elsif mandatory == "false"
          @mandatory = false
        else
          @mandatory = mandatory
        end
      end

      def mandatory?
        @mandatory
      end

      def string?
        @type == "String"
      end

      def to_s
        to_h
      end

      def to_h
        hash = Hash.new
        hash.merge!(name: name)
        hash.merge!(type: type)
        hash.merge!(mandatory: mandatory)
        hash
      end

    end

  end
end
