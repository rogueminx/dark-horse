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
      @full_name = object['person']['name']
      @party = object['party']
      @phone = object['phone']
      @address = object['extra']['address']
      @contact_form = object['extra']['contact_form']
      Senator.create!(firstname: @firstname, lastname: @lastname, state: @state, full_name: @full_name, party: @party, phone: @phone, address: @address, contact_form: @contact_form)
      puts "Created Senator #{@firstname} #{@lastname} a #{@party} from #{@state}. Fullname is #{@full_name}. Contact them at #{@phone}, #{@address}, #{@contact_form}."
    end
  end
end

Seed.begin
