


# コンテンツ概要
# コード例で呼び出しているclever_printメソッドを定義しましょう。clever_printメソッドのおこなう処理は、コメントアウトされている出力例から推測してください。

# この演習を回答するのに必要と思われる時間は、10分です。

# 演習
# 以下のコードがコメント部分の通りの出力となるように、「clever_print」メソッドの定義を書いてください。



clever_print(["Ruby"], "the", ["Programming", "Language"])
#=> Ruby the Programming Language
 
clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })
#=> Agile Web Development with Rails 3.0

def clever_print(*args)
    converted = []
    args.each { |arg|
      converted << (arg.is_a?(String) ? arg : arg.to_a)
    }
    puts converted.join(" ")
  end
  


def clever_print(f,s,t)
    array = []
    # (["Ruby"], "the", ["Programming", "Language"]を入れる
    p array.join("")
end



def clever_print(*args)
  converted = []
  args.each { |arg| converted << arg.to_a }
  puts converted.join(" ")
end



def array(*a)
    pp a
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




  class Postcard
    module Mail
        def

        end
    end
  end



module Mail
    attr_reader :sender, :recipient, :text, :date
    def send
        puts "#{@date = Time.now}:Sending a #{self.class} to #{self.recipient}."
    end

    def write(text)
        @text = text
    end

    def to_s
        "#{self.class} of #{@date}:\n\nDear #{@recipient},\n\n#{@text}\n\nS"
    end
end















module Mail
    require 'Date'
  
    def write(text)
      @write = text
    end
  
    def send
      puts "Postcard of " + DateTime.now.strftime("%a %b %d %H:%M:%S %z")
    end
  
    def to_s
      "Dear #{@recipient},
  
      #{@write}
  
      Sincerely,
      #{@sender}"
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
