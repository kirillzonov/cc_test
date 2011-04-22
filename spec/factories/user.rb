Factory.define :user do |factory|
  factory.email "user@example.org"
  factory.password 'password'
#  factory.password_confirmation { |user| user.password }
end
