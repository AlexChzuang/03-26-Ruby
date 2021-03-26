class ATM
    def initialize(amount)
        @amount = amount
    end

    def deposit(money)
        if money > 0
            @amount = @amount + money
        end
        #   等於 @amount += money if money > 0

    end

    def balance
        @amount
    end

    #上面的三行 等於 attr_reader :balance

    def withdraw(money)
        if money > 0 and money <= @amount
            @amount = @amount - money # 等同 @amount -= money
            return money
        else
            return 0
        end
    end
end

RSpec.describe ATM do
    context "領錢" do
        it "可以領錢" do
            atm = ATM.new(10)
            money = atm.withdraw(5)
            expect(atm.balance).to be 5
            expect(money).to be 5
        end

        it "不能領0元或小於0元" do
            atm = ATM.new(20)
            money = atm.withdraw(-5)
            expect(atm.balance).to be 20
            expect(money).to be 0
        end

        it "不能領超過本身餘額" do
            atm = ATM.new(20)
            money = atm.withdraw(30)
            expect(atm.balance).to be 20
            expect(money).to be 0
        end

    end
end