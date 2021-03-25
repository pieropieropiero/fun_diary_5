FactoryBot.define do
  factory :diary do
    association :user
    category_id          {2}
    score                {100}
    text                 {"EGG"}

    after(:build) do |diary|
      diary.image.attach(io: File.open('app/assets/images/test_image.png'), filename: 'test_image.png')
    end
  end
end   

