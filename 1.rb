
# BookクラスとLibraryクラスを定義する演習



class Book
def initialized(authour)
    puts  "Herman Melville"
end


class Library

end

my_library = Library.new
Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)
Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)
puts my_library

Library contents:
Title: Moby-Dick, Author: Herman Melville
Title: The Ugly Duckling, Author: Hans Christian Andersen