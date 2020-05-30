
# BookクラスとLibraryクラスを定義する演習



# class Book
# def initialized(authour)
#     puts  "Herman Melville"
# end


# class Library

# end

# my_library = Library.new
# Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)
# Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)
# puts my_library

# Library contents:
# Title: Moby-Dick, Author: Herman Melville
# Title: The Ugly Duckling, Author: Hans Christian Andersen

my_library = Library.new
Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)
Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)
puts my_library



class Library
    def initialize
      @books = []
    end
   
    def <<(book)
      @books << book
    end
   
    def to_s
      puts "Library contents:"
      @books.join("\n")
    end
  end
   
  class Book
    attr_accessor :author, :title
    def initialize(args)
      @author = args[:author]
      @title  = args[:title]
      args[:library] << self
    end
   
    def to_s
      "Title: " + @title + ", Author: " + @author
    end
  end
  