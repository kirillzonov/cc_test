Factory.define :user do |factory|
  factory.user_id 1
  factory.email "user@example.org"
  factory.password 'password'
#  factory.password_confirmation { |user| user.password }
end
