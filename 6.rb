class Tool
    def use
      puts "Picks up #{@color} #{self.class.to_s}"
    end

    def initialize(color)
      @color = color
    end
  end

class Hammer
    def use
        puts "Bam bam bam"
    end
end

Hammer.new("red").use

# Picks up red Hammer
# Bam bam bam
