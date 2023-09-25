require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = true
  
  test 'should have valid email' do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]

    valid_addresses.each do |valid_address|
      @employee.email = valid_address
      assert @employee.valid?, "Address #{valid_address.inspect} should be valid"
    end
  end

  test 'email validation should reject invalid addresses' do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example  foo@bar_baz.com foo@bar+baz.com]

    invalid_addresses.each do |invalid_address|
      @employee.email = invalid_address
      assert_not @employee.valid?, "Address #{invalid_address.inspect} should be invalid"
    end
  end

  test 'email address should be unique' do
    duplicate_employee = @employee.dup
    duplicate_employee.email = @employee.email.upcase
    @employee.save
    assert_not duplicate_employee.valid?
  end

end
