class ApplicationRecord < ActiveRecord::Base
  # primary_abstract_class

  def something
    one = 1
    two = 2

    three = one + two
    three
  end

end
