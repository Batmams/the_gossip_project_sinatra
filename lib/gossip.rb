require 'csv'
class Gossip
    attr_accessor :content, :author

    def initialize(author, content)
        @content = content
        @author = author
    end

    def save
        CSV.open("./db/gossip.csv", "ab") do |csv|
            csv << [@author, @content]
    end

end

def self.all
    all_gossips = []
    CSV.read("db/db.csv").each do |csv_line|
        all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end

    return all_gossips
end

def self.find(id)
return Gossip.all[id.to_i]
end

def self.update(new_content)
    self.content = new_content
end
end

Gossip.new("Mams", "contenue du message").save
Gossip.new("Mams", "contenue du message").save
Gossip.new("Mams", "contenue du message").save
Gossip.new("Mams", "contenue du message").save
Gossip.new("Mams", "contenue du message").save
