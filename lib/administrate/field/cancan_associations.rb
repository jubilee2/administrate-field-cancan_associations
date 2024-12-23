# frozen_string_literal: true

require_relative "cancan_associations/version"
require "administrate/field/belongs_to"
require "rails"

module Administrate
  module Field
    class CancanBelongsTo < Administrate::Field::BelongsTo
      include CancanAssociations
      class Engine < ::Rails::Engine; end

      def associated_resource_options(user, ability)
        candidate_resources(user, ability).map do |resource|
          [
            display_candidate_resource(resource),
            resource.send(association_primary_key)
          ]
        end
      end

      private

      def candidate_resources(user, ability)
        scope =
          if options[:scope]
            options[:scope].call(self, user, ability)
          else
            associated_class.all
          end

        order = options.delete(:order)
        order ? scope.reorder(order) : scope
      end

    end
  end
end
