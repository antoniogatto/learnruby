# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe User do
 
  before(:each) do

    @attr = {
      :name => "Teste Sistema", 
      :email => "teste@teste.com",
      :password => "eitameu",
      :password_confirmation => "eitameu"
    }
  
  end

  it "should create a new instance  given valid attributes" do
    User.create!(@attr)
  end

  it "should have an encrypted password attribute" do
    @user.should respond_to(:encrypted_password)
  end

  #it "should reject invalid email addresses" do
   # addresses = %w[user@foo.com]
   # addresses.each do |address|
   #   invalid_email_user = User.new(@attr.merge(:email => address))
   #   invalid_email_user.should_not be_valid
  #end   
  #end

  it "should reject duplicate email addresses" do
    User.create!(@attr)
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.should_not be_valid
  end

  #testes para a senha
  
  it "should require a password" do
    User.new(@attr.merge(:password => "", :password_confirmation => ""))
    should_not be_valid
  end 

  describe "password encryption" do

    before(:each) do
      @user = User.create!(@attr)
    end

    describe "has_password? method" do

      it "should be true if the password match" do
        @user.has_password?(@attr[:password]).should be_true
      end

      it "should be false if the passwords don't match" do
        @user.has_password?("invalid").should be_false
      end
    end
  end
end
