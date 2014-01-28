# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :yarn do
    brand "MyString"
    name "MyString"
    cyc_weight 1
    name_weight "MyString"
    ply_weight 1
    wpi_weight 1
    knit_weight 1
  end
end
