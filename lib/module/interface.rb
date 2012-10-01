# Copyright (c) 2012 Kenichi Kamiya

class Module
  
  module Interface

    # @param [Module] mod
    # @return [self]
    # @example
    #   module Runnable
    #     def walk; end
    #     def run; end
    #   end
    #   
    #   class Person
    #     include Runnable
    #     interface Runnable do
    #       def run; end
    #     end #=> NotImplementedError "shortage methods: [:walk]"
    #   end
    def interface(mod)
      yield
      
      shortages = (mod.instance_methods(false) | mod.private_instance_methods(false)) - \
                  (instance_methods(false) | private_instance_methods(false))
        
      unless shortages.empty?
        raise NotImplementedError, "shortage methods: #{shortages.inspect}"
      end
      
      self
    end

  end
  
end

require_relative 'interface/core_ext'
