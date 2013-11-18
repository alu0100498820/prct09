require "matrix_dd_lpp_t16/version"

#module MatrixDdLppT16
 
class Matriz
        
        include Enumerable
        
        attr_reader :fil, :col, :matriz

        def initialize(fil, col)
                @fil = fil 
		@col = col
        end

end
#----------------------------------------------------------------

class Matriz_Densa < Matriz

  def initialize(fil, col)
  end

  def to_s()
  end

  def +(other)
  end
  
  def *(other)
  end

end

####################################################################

class Matriz_Dispersa < Matriz

  def initialize(fil, col)
  end

  def to_s()
  end

  def +(other)
  end
  
  def *(other)
  end

end

#---------------------------------------------------------------- 
#end
