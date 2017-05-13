FactoryGirl.define do
  factory :device do
    device_mac FFaker::Lorem.word
    serial_no FFaker::Lorem.word
    color FFaker::Lorem.word
    name FFaker::Name.name
    description FFaker::Lorem.paragraph
    building FFaker::Lorem.word
    level FFaker::Lorem.word
    device_threshold 1
  end
end
