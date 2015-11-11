class Contact < ActiveRecord::Base
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def name_in_caps
    full_name.upcase
  end

end
