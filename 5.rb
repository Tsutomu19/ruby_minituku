コード例
buy_tickets("Sam", "Dave", "David")
buy_tickets("John", "Paul", "Ringo", "George")
出力例
Buying a ticket for Sam.
Buying a ticket for Dave.
Buying a ticket for David.
Buying a group ticket for John, Paul, Ringo, George.



# 可変長引数
# *をつければ引数を、配列に指定できる。
# めそっどには一つの引数の定義で、複数の引数を設定でき、配列として結果を返す。
# これを可変長引数という。

def buy_tickets()
    if names.length > 3
        puts "Buying a group ticket for #{names.join(", ")}."
    end
end

def buy_tickets(*names)
    if names.length > 3
      puts "Buying a group ticket for #{names.join(", ")}."
    else
      names.each do |name|
        puts "Buying a ticket for #{name}."
      end
    end
  end
  
# アスタリスクはきたものを配列に
# defのなかで場合分け