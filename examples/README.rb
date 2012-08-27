$VERBOSE = true

require '../lib/module/interface'

module Runnable

  def walk
  end

  def run
  end

end

class Person
  
  interface Runnable do
  
    def run
    end
  
  end #=> NotDefinedError "must add methods [walk]"

end