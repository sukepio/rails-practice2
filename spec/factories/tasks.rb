FactoryBot.define do
  
  
  factory :task do
    name { 'テストを各' }
    description { 'Rspec&Capybara&FactoryBotを準備する' }
    user
  end
  
  def self.ransackable_attributes(auth_object = nil)
    %w[name created_at]
  end
  
  def self.ransackable_associations(auth_object = nil)
    []
  end
end