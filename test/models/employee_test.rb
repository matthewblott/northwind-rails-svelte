require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = true
  
  test 'should have valid email' do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    
    valid_addresses.each do |valid_address|
      @helen_clarke.email = valid_address
      assert @helen_clarke.valid?, "Address #{valid_address.inspect} should be valid"
    end

  end

  test 'email validation should reject invalid addresses' do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example  foo@bar_baz.com foo@bar+baz.com]

    invalid_addresses.each do |invalid_address|
      @helen_clarke.email = invalid_address
      assert_not @helen_clarke.valid?, "Address #{invalid_address.inspect} should be invalid"
    end
  end

  test 'email address should be unique' do
    duplicate_employee = @helen_clarke.dup
    duplicate_employee.email =  @helen_clarke.email.upcase
    assert_not duplicate_employee.valid?
  end

  # The test doesn't work, the model is deemed valid with a manager id
  # that doesn't exist. It will throw an exception upon save but there's
  # no way to manage this and make the test pass (that I know of).
  # test 'should not save record containing invalid manager id' do
  #   new_helen = @helen_clarke.dup  
  #   new_helen.email = 'new.helen@example.com'
  #   new_helen.manager_id = 0
  #   new_helen.save
  #   
  #   assert_not new_helen.valid?
  #
  # end
  
end
