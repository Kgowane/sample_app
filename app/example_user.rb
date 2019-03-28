class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @firstname  = attributes[:firstname]
    @lastname = attributes[:lastname]
    @email = attributes[:email]
  end

  def full_name
    "#{@firstname} #{@lastname}"
  end

  def formatted_email
    full_name " <#{@email}>"
  end

  def alphabetical_name
    "#{@lastname}, #{@firstname}"
  end
end
