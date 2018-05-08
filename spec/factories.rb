FactoryBot.define do
  factory(:senator) do
    firstname = Faker::Name.first_name
    lastname = Faker::Name.last_name
    state = Faker::Address.state
    full_name = Faker::Name.name
    party = "Democrat"
    phone = Faker::PhoneNumber.phone_number
    address = Faker::Address.street_address
    contact_form = Faker::File.file_name
  end
end
