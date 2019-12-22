class User
  attr_accessor :name, :last_name, :email

  def initialize(attributes = {})
    @name = attributes[:name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end

  def full_name
    "#{@name} #{@last_name}"
  end

  def alphabetical
    "#{@last_name}, #{@name}"
  end

  def formatted_email
    "#{full_name} <#{@email}>"
  end
end
