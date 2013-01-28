# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :presentation do
    conference_id 1
    title "MyString"
    autor "MyString"
    video_embed "MyText"
    file_name "MyString"
    file "MyString"
  end
end
