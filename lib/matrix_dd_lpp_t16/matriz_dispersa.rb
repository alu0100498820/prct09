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

# Numeros Nulos
    def num_nulos
       total = @filas*@columnas
       cont = 0

       for i in 0...@filas
         cont += @pos[i].size
       end

       res = total - cont
       res.to_f/total.to_f
     end

# to_s  

    def to_s
      output = ""
      for i in 0...@filas
        output += "Fila #{i}: "
        @pos[i].sort.each{|k, v| output += "#{k}=>#{v} "}
        output += "\n"
      end
      output
    end



  end
end
