
module MatrixDdLppT16
	class Fraccion

	  # Módulo Comparable
	  include Comparable 
	  
	  attr_reader :num, :dem
	  def initialize(num,dem)
		@num, @dem = num, dem
		mcm = gcd(num, dem)
		    @num = num/mcm
		    @dem = dem/mcm
	  end

	  def gcd(u, v)
	     u, v = u.abs, v.abs
	     while v != 0
	       u, v = v, u % v
	     end
	    u
	  end

	  def to_s
	    "#{@num}/#{@dem}"
	  end

	  def coerce(something)
              [something, self]
          end
	end
end
