require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
  end

  factory :accesibility do
    name { 'Wheelchair Accessible'}
  end

  factory :administrator do
    maker
    makerspace
  end

  factory :age_group do
    name { 'Teen' }
    minimum_age { 10 }
    maximum_age { 18 }
  end

  factory :badge do
    name { 'Master Machinist' }
    description { 'Logged 100hrs on CNC' }
    maker
  end

  factory :bookings do
    start_datetime { 2011-08-12T20:17:46.384Z }
    end_datetime { 2012-08-12T20:17:46.384Z }
    maker
    tool
  end

  factory :chat do
    name { 'Lunch on Wednesday' }
    team
    leader
  end

  factory :comment do
    body { 'This is the best Makerspace' }
    post
    maker
  end

  factory :features do
    name { 'Makers Choice Award' }
    description { 'Chosen by your fellow makers' }
    maker
    project
  end

  factory :follows do
    follower
    following
  end

  factory :invite do
    message { 'Would you like to join our group?' }
    accepted { true }
    inviter
    invited
  end

  factory :leader do
    project
    maker
  end

  factory :maker do
    username { 'Dwarf1978' }
    first_name { 'Bilbo' }
    last_name { 'Baggins' }
    gender { 'male' }
    age { 29 }
    email { 'bbthering@gmail.com' }
    phone_number { 8675309 }
    bio { 'From the Shire' }
    city { 'Gondor' }
  end

  factory :makerspace do
    name { 'Hacker Cambridge' }
    street { '123 Main St' }
    city { 'Boston' }
    country { 'USA' }
    zip_code { '12309' }
    website { 'www.hackitall.com' }
    email { 'hackcambridge@gmail.com' }
    mission { 'To bring computer technology to underdeveloped areas' }
  end

  factory :badge do
    name { 'Master Machinist' }
    description { 'Logged 100hrs on CNC' }
    maker
  end

  factory :match do
    maker
  end

  factory :meeting do
    name { 'Onboarding meetup' }
    date { 2012-08-12 }
    start_time { T23:59:33Z }
    end_time { T23:59:34Z }
    street { '123 Main St' }
    city { 'Boston' }
    country { 'USA' }
    zip_code { '12309' }
    makerspace
    maker
  end

  factory :membership do
    maker
    makerspaces
  end

  factory :message do
    body { 'Hey you forgot your keys!' }
    direct { true }
    sender
    recipient
    chat
  end

  factory :offering do
    name { 'Welding Station' }
  end

  factory :payment_plan do
    name { 'Full Membership' }
    amount { 500 }
    frequency { "monthly" }
    description { '24 hr access and personal workspace' }
    makerspace
  end

  factory :post do
    name { 'Swarmbots' }
    body { 'Hacking a toy is a fun way to see how real-world electronics are designed and built.' }
    link { 'https://makezine.com/projects/diy-swarmbots/' }
    maker
  end

  factory :project do
    name { 'Robotic Bananna Peeler' }
    description { 'Never peel a Bananna by hand again!' }
    street { "123 Main St" }
    city { "Boston" }
    country { "USA" }
    zip_code { "12309" }
    website { "https://Banannabot.com" }
    administrator
  end

  factory :skill do
    name { 'Welding' }
  end

  factory :talent do
    name { 'Mig Welding' }
    name { 2 }
    maker
    skill
  end

  factory :team do
  project
  administrator
  end

  factory :tool do
    name { 'Drill Press' }
    danger { 5 }
    city { "Boston" }
    description { 'Bench mounted Drill Press, 18 Inch drop' }
    maker
  end

  factory :wanted_ad do
    description { '24 hr access and personal workspace' }
    street { '123 Main St' }
    city { 'Boston' }
    country { 'USA' }
    zip_code { '12309' }
    website { 'https://Banannabot.com' }
    maker
    project
  end
end
