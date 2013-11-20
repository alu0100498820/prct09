require "./lib/matrix_dd_lpp_t16/matriz.rb"
require "./lib/matrix_dd_lpp_t16/matriz_densa.rb"

module MatrixDdLppT16

  class Matriz_Dispersa < Matriz

    def new_initialize
      @pos = Array.new(@filas)
      for i in 0...@filas
        @pos[i] = {} 
      end
    end

    def initialize(filas, columnas)
      super
      new_initialize
    end

  # Creacion matriz dispersa
    def self.copy(matriz)

    obj = new(matriz.filas, matriz.columnas)

    for i in 0...matriz.filas
      for j in 0...matriz.columnas
        val = matriz.get(i,j)
        if(val != 0)
          obj.pos[i][j] = val
          end
      end
    end
    obj
    end

  # Get

   def get(i, j)
      if(@pos[i][j] != nil)
        return @pos[i][j]
      else
        return 0
      end
    end
 
  # Set

    def set(i, j, val)
      if(val == nil or val == 0)
        @pos[i].delete(j)
      else
        @pos[i][j] = val
      end
    end

  end

end
