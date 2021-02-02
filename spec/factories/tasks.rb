FactoryBot.define do
  factory :task do
    name { 'テストを各' }
    description { 'Rspec&Capybara&FactoryBotを準備する' }
    user
  end
end