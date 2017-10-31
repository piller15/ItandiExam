
class Juice

    attr_accessor :name, :price, :quantity

    def initialize (name, price, quantity)
        @name       = name
        @price      = price
        @quantity   = quantity
    end #end initialize

    #print info ジュースの情報を出力
    def print_info
        puts "name     : #{@name}"
        puts "price    : #{@price}"
        puts "quantity : #{@quantity}"
    end #end print_info

end #end Class