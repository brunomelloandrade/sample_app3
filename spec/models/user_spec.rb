# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe User do

  before do 
  	@user = User.new(name: "Example User", email: "user.example.com", 
        password: "foorbar", password_confirmation: "foorbar") 
	end

  subject { @user }

    it { should respond_to(:name) }
    it { should respond_to(:email) }
    it { should respond_to(:password_digest) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }


    it { should be_valid }

    describe "Enquanto nao houve nome" do
    	before { @user.name = " " }
    	it { should_not be_valid }
    end

    describe "Enquanto nao houve email" do
    	before { @user.email = " " }
    	it { should_not be_valid }
    end

    describe "Enquanto o email for igual" do
    	before do
    		user_with_same_email = @user.dup
    		user_with_same_email = @user.email.upcase
    		user_with_same_email.save
    	end

    	it { should_not be_valid }
    end

    describe "Equanto nao houve senha" do
        before do
            @user = User.new(name: "Example User", email: "user@example.com",
                     password: " ", password_confirmation: " ")
        end
        it { should_not be_valid }
    end
end