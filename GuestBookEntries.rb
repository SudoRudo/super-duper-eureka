class Entry
        attr_accessor :author, :entry
        attr_reader :date

        @@all = []

        def initialize(name, entry)
            @author = name
            @entry = entry
            @date = Time.now

            @@all << self
        end

        def self.all
            @@all
        end
end
