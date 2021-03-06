require 'data_mapper/support/veritas/adapter'

module Veritas
  module Adapter

    # A veritas in memory adapter
    #
    # This is basically a "null adapter"
    # as it doesn't make use of it's uri
    # and only passes through the given
    # +relation+ in {#gateway}
    #
    class InMemory

      extend Adapter

      include Equalizer.new(:uri)

      uri_scheme :in_memory

      # The URI this adapter uses for establishing a connection
      #
      # @return [Addressable::URI]
      #
      # @api private
      attr_reader :uri

      # Initialize a new instance
      #
      # @param [Addressable::URI] uri
      #   the URI to use for establishing a connection
      #
      # @return [undefined]
      #
      # @api private
      def initialize(uri)
        @uri = uri
      end

      # Return the passed in relation
      #
      # @param [Veritas::Relation] relation
      #   the relation to be returned as is
      #
      # @return [Veritas::Relation]
      #
      # @api private
      def gateway(relation)
        relation
      end

    end # class InMemory
  end # module Adapter
end # module Veritas
