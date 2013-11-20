require "./lib/matrix_dd_lpp_t16/matriz.rb"

module MatrixDdLppT16

  class Matriz_Densa < Matriz

    
    def initialize(filas, columnas)
      super
      @pos = Array.new(@filas,0)
      for i in 0...@filas
        @pos[i] = Array.new(@columnas,0)
      end
    end


 # Get (Devuelve el valor guardado del elemento en i,j)
    def get(i, j)
      @pos[i][j]
    end

 # Set (Modifica el valor guardado del elemento en i,j)
    def set(i, j, val)
      @pos[i][j] = val
    end

 
#Metodo to_s  
    def to_s
      s = ""
      for i in 0...@filas
        for j in 0...@columnas
          s += "#{@pos[i][j].to_s} "
        end
        puts " "
      end
      s
    end


 # Suma
    def +(other)
      c = Matriz_Densa.new(@filas, @columnas)
      for i in 0...@filas
        for j in 0...@columnas
          c.set(i, j, get(i,j) + other.get(i,j))
        end
      end
      c
    end

# Resta        
    def -(other)
      c = Matriz_Densa.new(@filas, @columnas)
      for i in 0...@filas
        for j in 0...@columnas
          c.set(i, j, get(i,j) - other.get(i,j))
        end
      end
      c
    end

# Multiplicacion
    def *(other)
        c = Matriz_Densa.new(@filas, other.columnas)
        for i in 0...@filas
          for j in 0...@columnas
            for k in 0...@columnas
              c.set(i, j, get(i, k) * other.get(k,j) + c.get(i,j))
            end          
          end        
        end
        c
    end
end
end
