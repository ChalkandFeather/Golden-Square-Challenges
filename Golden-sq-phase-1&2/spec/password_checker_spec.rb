require "password_checker"

RSpec.describe PasswordChecker do
it  "checks length of input password" do
  password_checker = PasswordChecker.new
  expect(password_checker.check("countdown")).to eq true
end

it "has a length less than required" do
  password_checker = PasswordChecker.new
  expect { password_checker.check("short") }.to raise_error "Invalid password, must be 8+ characters."
end
end