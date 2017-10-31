require_relative 'Juice'

class Jihanki
    
    attr_accessor :money, :sales

    def initialize
        @juice_list =   [
                            Juice.new("cola",       120, 5), 
                            Juice.new("red bull",   200, 5),
                            Juice.new("water",      100, 5)
                        ]
        @money      = 0
        @sales      = 0
    end #end initialize

    #insert coin
    def insert_coin

        loop do
            #入れろお金を選択
            puts "Please put your money"
            puts "01. 1yen"
            puts "02. 5yen"
            puts "03. 10yen"
            puts "04. 50yen"
            puts "05. 100yen"
            puts "06. 500yen"
            puts "07. 1000yen"
            puts "08. 2000yen"
            puts "09. 5000yen"
            puts "10. 10000yen"
            puts "11. stop"
            puts "money： #{@money}yen"
            print "select : "
            input = Integer(gets)

            #10 ~ 1000円　以外の金はお返し
            case input
                when 1 
                    then puts "change : 1"
                when 2
                    then puts "change : 5"
                when 3
                    then @money += 10
                when 4
                    then @money += 50
                when 5
                    then @money += 100
                when 6
                    then @money += 500
                when 7
                    then @money += 1000
                when 8
                    then puts "change : 2000"
                when 9
                    then puts "change : 5000"
                when 10
                    then puts "change : 10000"   
            end # end case
        
            #stop
            break if input == 11

        end #end loop

    end #insert coin
    
    #print_juice_list -> 自販機が持っているジュースの情報を出力。
    def print_juice_list
        
        for i in 0..@juice_list.length - 1
            puts "#{i + 1}."
            @juice_list[i].print_info()
        end #end for

    end #end print_juice_list

    #buy_juice
    def buy_juice(num)
        
        #配列の間違って接近を防ぐ
        if (num <= @juice_list.length)

            #ジュースの残りを確認
            if (@juice_list[num - 1].quantity < 1)

                puts "There are no products!!"

            #値段と入れたお金を比較。                                              
            elsif (@juice_list[num - 1].price > @money)

                puts "insert money!!"

            else
                #購入
                @money -= @juice_list[num - 1].price
                @sales += @juice_list[num - 1].price
                @juice_list[num - 1].quantity -= 1
                puts "bought a #{@juice_list[num - 1].name}"
                puts "change : #{@money}yen"

            end #end if elsif
        
        else
            puts "It doesn't exist!!"
        end #end if

    end #end buy_juice

    #change_print
    def change_print

        puts "change : #{@money}yen"
        @money = 0
    end #end change_print

end #end class