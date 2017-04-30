require 'fix'

# Namespace for the Fix framework.
#
# @api public
#
module Fix
  # Open the on class.
  #
  # @api private
  #
  class On
    # @api public
    #
    # @example Let's define the answer to the Ultimate Question of Life, the
    #   Universe, and Everything.
    #
    #   let(:answer) { 42 }
    #
    # @param method_name [Symbol] The identifier of a method.
    # @param block       [Proc]   A spec to compare against the computed value.
    #
    # @return [#object_id] List of results.
    def let(method_name, &block)
      helpers.update(method_name => block)
    end
  end

  # Open the it class.
  #
  # @api private
  #
  class It
    private

    # Override Ruby's method_missing in order to provide `On#let` interface.
    #
    # @api private
    #
    # @since 0.11.0
    #
    # @raise [NoMethodError] If doesn't respond to the given method.
    def method_missing(name, *args, &block)
      helpers.key?(name) ? helpers.fetch(name).call : super
    end

    def respond_to_missing?(name, include_private = false)
      helpers.key?(name) || super
    end
  end
end
