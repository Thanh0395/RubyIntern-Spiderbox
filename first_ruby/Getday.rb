require 'date'
class Getday
    def initialize()
        @Today=Time.now
    end

    def printDay()
        puts "Today is #{@Today}, bla bla."
        puts @Today.getutc
    end

    def printCalendar()
        days= Date.new(@Today.year,@Today.month,-1).day
        puts days
        for day in 1..days do
            eachday = Time.new(@Today.year,@Today.month,day)
            puts "Day is: #{eachday.strftime("%A %D")} "
            # puts Time.irretorday.strftime("%A %D")
        end

        # daysOfWeek = Date::ABBR_DAYNAMES.map{|x|"#{x}"} 
        # puts daysOfWeek.length
        # monthName = Date::MONTHNAMES[@Today.month]

        # yearMonthStr = "#{@Today.year} - #{monthName}"

        # cellLength = daysOfWeek.first.length
        # lineLength = cellLength*daysOfWeek.length
        # padding = lineLength/2 - yearMonthStr.length/2

        # puts yearMonthStr.rjust(yearMonthStr.length + padding, ' ')
        # puts daysOfWeek.join("   ")


        # currWeekDay = @Today.wday
        # currMonth   = @Today.month
        # prevPadding = "".ljust(currWeekDay*cellLength, ' ')

        # while @Today.month==currMonth
        #     while currWeekDay < daysOfWeek.length and @Today.month == currMonth
        #         dayStr = @Today.day.to_s.rjust(cellLength, ' ')
        #         cell = "#{prevPadding}#{dayStr}"
        #         prevPadding =""
        #         print cell
        #         @Today +=1
        #         currWeekDay += 1
        #     end
        #     currWeekDay=0
        #     puts
        # end
    end
end

MonthCalendar = Getday.new()
MonthCalendar.printCalendar
