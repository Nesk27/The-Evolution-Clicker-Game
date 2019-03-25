FactoryGirl.define do
	factory :player do
		sequence(:name) { |i| "name#{i}" }
	end
end
