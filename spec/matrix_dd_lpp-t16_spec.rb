require "./lib/matrix_dd_lpp_t16.rb"

describe MatrixDdLppT16::Matriz_Densa do
 
    before :each do
        @m1 = MatrixDdLppT16::Matriz_Densa.new(2,2)
        @m2 = MatrixDdLppT16::Matriz_Densa.new(2,2)

        @m1.set(0,0,1)
        @m1.set(0,1,2)
        @m1.set(1,0,3)
        @m1.set(1,1,4)

        @m2.set(0,0,1)
        @m2.set(0,1,2)
        @m2.set(1,0,3)
        @m2.set(1,1,4)

    end
    describe " # Almacenamiento de matrices. " do
        it " # Debe poderse acceder a los datos almacenados en la matriz " do
            @m1.get(0,0).should eq(1)
            @m1.get(0,1).should eq(2)
        end
        it " # Debe poderse modificar los datos almacenados en la matriz " do
            @m1.set(0,0,5)
            @m1.get(0,0).should eq(5)

            @m1.set(0,1,8)
            @m1.get(0,1).should eq(8)
        end

    end

    describe " # Operaciones con matrices densas. " do
        it " # Sumar dos matrices " do
                @m3 = MatrixDdLppT16::Matriz_Densa.new(2,2)
                @m3.set(0,0,2)
                @m3.set(0,1,4)
                @m3.set(1,0,6)
                @m3.set(1,1,8)

                (@m1+@m2).to_s.should eq(@m3.to_s)
        end

        it " # Restar dos matrices " do
                @m3 = MatrixDdLppT16::Matriz_Densa.new(2,2)
                @m3.set(0,0,0)
                @m3.set(0,1,0)
                @m3.set(1,0,0)
                @m3.set(1,1,0)

                (@m2-@m1).to_s.should eq(@m3.to_s)
        end
	it " # Multiplicar dos matrices " do
                @m3 = MatrixDdLppT16::Matriz_Densa.new(2,2)
                @m3.set(0,0,7)
                @m3.set(0,1,10)
                @m3.set(1,0,15)
                @m3.set(1,1,22)

                (@m1*@m2).to_s.should eq(@m3.to_s)
        end
    end
    describe " # max y min " do
        it " # Maximo de una matriz" do
                @m1.max.should == 4
        end
        it " # Minimo de una matriz" do
                @m1.min.should == 1
        end
    end

end
