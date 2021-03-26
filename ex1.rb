# ATM 測試

# 存錢
# 可以存錢
# 不可以存0元或小於0元
# 領錢
# 可以領錢
# 不能領0元或小於0元
# 不能領超過本身餘額

class ATM
    def initialize(amount)
        @amount = amount
    end

    def deposit(money)
        if money > 0
        @amount = @amount + money
        end
    end

    def balance
        @amount
    end

    
end

RSpec.describe ATM do
  context ("存錢") do
    it ("可以存錢") do
        atm = ATM.new(10)
        atm.deposit(5)
        expect(atm.balance).to be (15)   # 預期()中的值會是15
    end

    it ("可以存錢2") do
        atm = ATM.new(10)
        atm.deposit(10)
        expect(atm.balance).to be (20)   # 預期()中的值會是20
    end

    it ("不可以存0元或小於0元") do
        atm = ATM.new(10)
        atm.deposit(-5)
        expect(atm.balance)
    end
  end
end













# class ATM
# end

#   balance = money

#   def deposit (x)
#     balance = money + (x)
#     x > 0
#   end

#   def withdrow (y)
#     balance = money - (y)
#     y > 0
#     y < balance
#   end

# it ("不可以存0元或小於0元") do
#     atm = ATM.new(10)
#     atm.deposit(-5)
#     expect(atm.balance).to be (10)  # 溫和做法
# end