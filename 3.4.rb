



  

  module Mail
    require 'Date'
    def write(text)
      @write = text
    end
    def send
      puts "Postcard of " + DateTime.now.strftime("%a %b %d %H:%M:%S %z") + ": Sending a Postcard to #{@recipient}"
    end
    def to_s
      "Dear #{@recipient},\ñ#{@write}\n\nSincerely,\n\n#{@sender}"
    end
  end
  
  class Postcard
    include Mail
  
    def initialize(sender, recipient)
      @sender, @recipient = sender, recipient
    end
  end
  
  card = Postcard.new("Me", "Friend")
  card.write("Did you forget my birthsday?")
  card.send
  puts "-" * 60
  sleep(2)
  puts card



#   mail moduleを作ろう
#   Tue Mar 22 11:59:16 +0900 2011: 
# Sending a Postcard to Friend.
# -dateクラスいるな
# card.write("Did you forget my birthsday?")
# テキスといるな。別のとこで使うな

# card.send

# sendメソッドの中には日付いるな

# putsと同時に文字にしてる

















4



# 自分の回答

class Planet
    def life?
      puts "Who knows?"
    end
  end
   
  pluto = Planet.new()
  earth = Planet.new()
  mars = Planet.new()

class World < Planet
  def life?
    puts "Probably not."
  end
  def life?
    puts "Probably not."
  end
end
  pluto.life?()  #=> Probably not.
  earth.life?()  #=> Positively!
  mars.life?()   #=> Who knows?
  





  class Planet
    def life?
      puts "Who knows?"
    end
  end
   
  pluto = Planet.new()
  earth = Planet.new()
  mars = Planet.new()

def earth.life?()
    puts "ositively!"
end

def pluto.life?()
    puts "Probably not."
end

  pluto.life?()  #=> Probably not.
  earth.life?()  #=> Positively!
  mars.life?()   #=> Who knows?





#   この演習問題を解答するには、同じクラスのインスタンスであるオブジェクトに、同じ名前で異なった動作のメソッドを持たせる必要があります。

# この解答例のコードでは、Rubyの機能として用意してある特異メソッドを使ってその条件を達成します。特異メソッドは、クラスに対してではなく、むしろインスタンス化済みのオブジェクトに対して定義するメソッドです。そして、特異メッソドは、あるクラスの全てオブジェクトが共有するものではなく、ある一つのオブジェクトの特有なものです。つまり、

# def earth.life?()
#   puts "Positively!"
# end
# は「Planet」クラスに影響なく、「earth」変数が参照するオブジェクトだけの「life?」メソッドを再定義します。




# obj.method の形で定義
# すべてのクラスはClassクラスのインスタンスです。

# ということで先ほどのクラスメソッドの定義と同じように、何らかのインスタンスに対してdef obj.methodのような形でメソッドを定義してみます。

