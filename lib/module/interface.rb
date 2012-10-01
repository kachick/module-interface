# Copyright (c) 2012 Kenichi Kamiya

require_relative 'interface/version'

class Module
  
  module Interface

    # @param [Module] base_mod
    # @param [Boolean] include_base_mod
    # @return [self]
    # @example
    #   module Runnable
    #     def walk; end
    #     def run; end
    #   end
    #   
    #   class Person
    #
    #     interface Runnable do
    #       def run; end
    #     end #=> NotImplementedError "must add methods [walk]"
    #
    #   end
    def interface(base_mod, include_base_mod=true)
      module_eval do
        include base_mod if include_base_mod
        
        yield
        
        shortage = base_mod.instance_methods(false) - instance_methods(false)
        unless shortage.empty?
          raise NotImplementedError, "must add methods [#{shortage.join ', '}]"
        end
      end
    end

  end
  
end

require_relative 'interface/core_ext'
