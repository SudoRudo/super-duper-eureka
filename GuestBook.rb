require_relative 'GuestBookEntries.rb'

class Guestbook
    attr_reader :name
    attr_writer :pages

    @pages = 200

    def initialize(name)
        @name = name
    end

    def new_entry(name, entry)
        if @pages == 0
            p "No more pages left."
        else
            @pages = 200 - Entry.all.count
            Entry.new(name, entry)
        end


    end

    # def archive
    #     if @pages > 0
    #         p "There's still room left"
    #     else
    #         Archive.all << Entry.all
    #         Entry.all.clear
    #         pages = 200
    #         p "The old guestbook's been burned, here's a new one."
    #     end
    # end
    #~~~ THIS METHOD'S FOR AN ARCHIVE FILE I
    #~~~ WAS TOO LAZY TO BUILD CAUSE IT'S LATE

    def all_entries_on(date)
        Entry.all.select do |entry|
            entry.date == date
        end
    end

    def all_entries_by(name)
        Entry.all.select do |entry|
            entry.author == name
        end
    end

    def all_visitors_on(date)
        self.all_entries_on(date).author.select
    end

    def turn_to_page(num)
        puts Entry.all[num-1]
    end
end
            