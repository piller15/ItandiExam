require_relative 'Drink'

class SoftDrink < Drink

    def initialize (name, price, quantity)
        super(name, price, quantity)
    end #end initialize

    #print info ジュースの情報を出力
    def print_info
        super
        puts "kind : SoftDrink"
        puts "case : CAN"
    end #end print_info

end #end Class