require_relative 'Drink'

class Water < Drink

    def initialize (name, price, quantity)
        super(name, price, quantity)
    end #end initialize

    #print info ジュースの情報を出力
    def print_info
        super
        puts "kind : Water"
        puts "case : PET"
    end #end print_info

end #end Class