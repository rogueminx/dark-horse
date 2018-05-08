require 'pry'
Senator.destroy_all

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_senators
  end

  def generate_senators
    response = JSON.parse(File.read(Rails.root + 'app/controllers/senators.json'))
    response['objects'].each do |object|
      @firstname = object['person']['firstname']
      @lastname = object['person']['lastname']
      @state = object['state']

      Senator.create!(firstname: @firstname, lastname: @lastname, state: @state)
      puts "Created Senator #{@firstname} #{@lastname} from #{@state}."
    end
  end
end

Seed.begin
