FactoryBot.define do
  factory :message do
    content {Faler::Lorne.sentence}
    image {File.open("#{Rails.root}/public/images/test_image.jpg")}
    user
    group
  end
end