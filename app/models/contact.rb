class Contact < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :subject, :description
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/i
end
