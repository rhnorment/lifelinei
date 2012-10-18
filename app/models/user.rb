# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  customer        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  remember_token  :string(255)
#  admin           :boolean         default(FALSE)
#  client_admin    :boolean         default(FALSE)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

class User < ActiveRecord::Base

  # class attributes:
  attr_accessible :admin, :email, :name, :password_digest, :remember_token, :customer_admin,  :customer

  # model validations:



  # callback methods:


  # public methods:



  # private methods:



end
