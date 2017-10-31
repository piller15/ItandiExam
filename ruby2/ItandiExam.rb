require_relative 'Jihanki'

puts "ItandiExam"

input = 0
jihanki = Jihanki.new

while input != 4

    #メニューを出力
    puts    "money : #{jihanki.money}yen"
    puts    "1. insert money"
    puts    "2. buy juice"
    puts    "3. get change"
    puts    "4. exit"
    print   "select : "
    input = Integer(gets)

    #1. insert money
    if input == 1
        jihanki.insert_coin()
    end #end if

    #2. buy juice
    if input == 2

        #ジュースのリストを出力
        jihanki.print_juice_list()
        print "select : "
        select_juice_num = Integer(gets)

        #ジュースを買う
        jihanki.buy_juice(select_juice_num)
    end #end if

    #3. get change
    if input == 3
        #お返しをもらう
        jihanki.change_print()
    end #end if

    #4. exit
    if input == 4
        #お返しをもらう -> 売り上げも出力 -> 終了。
        jihanki.change_print()
        puts "sales : #{jihanki.sales}yen"
        exit()
    end #end if

end #end while