# coding: us-ascii

$VERBOSE = true

require_relative '../lib/module/interface'

module Runnable
  def walk; end
  def run; end
end

class Person
  include Runnable
  extend Module::Interface
  interface Runnable do
    def run; end
  end #=> NotImplementedError "shortage methods: [:walk]"
end
