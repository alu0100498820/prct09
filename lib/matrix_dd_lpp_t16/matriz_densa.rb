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


 # (Devuelve el valor del elemento en la posision i,j)
    def get(i, j)
      @pos[i][j]
    end

 # (Modifica el valor del elemento en la posicion i,j)
    def set(i, j, val)
      @pos[i][j] = val
    end

 # Numeros nulos
    def num_nulos
      total = @filas*@columnas
      cont = 0

      for i in 0...@filas
         for j in 0...@columnas
           if(@pos[i][j] != 0)
             cont += 1
           end
         end
       end

      res = total - cont
      res.to_f/total.to_f

    end

 
 # Metodo to_s  
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
 # Maximo
    def max
        max = get(0,0)
        for i in 0...@filas
                for j in 0...@columnas
                        if (get(i,j) > max)
                                max = get(i,j)
                        end
                end
        end
        max
    end

 # Minimo
    def min
        min = get(0,0)
	for i in 0...@filas
                 for j in 0...@columnas
                        if (get(i,j) < min)
                                min = get(i,j)
                        end
                end
        end
        min
    end
end
end
