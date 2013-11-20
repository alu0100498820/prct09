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

  end

end
