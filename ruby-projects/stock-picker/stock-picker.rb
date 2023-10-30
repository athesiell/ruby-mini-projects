def stock_picker(array)
    answer = []
    day_buy = 0
    day_sell = 0
    profit = 0
    array.each_with_index do |buy, buy_index|
        array[(buy_index + 1)..array.length].each_with_index do |sell, sell_index|
            #buy_index + 1 means that the program won't pick the same index when stock was bought, instead it would skip it
            #and continue to iterate and find the best index to sell in order to get the best possible profit
            if (sell - buy) > profit
                profit = sell - buy
                day_buy = buy_index
                day_sell = sell_index + (buy_index + 1)
            end
        end
    end
    answer = [day_buy, day_sell]
end

p stock_picker([17,3,6,9,15,8,6,1,10])