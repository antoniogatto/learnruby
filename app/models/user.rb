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
require'digest'

class User < ActiveRecord::Base
  attr_accessor :password 
  attr_accessible :name, :email, :password, :password_confirmation

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => {:is => true, :message => " - nao foi preenchido."},
                   :length  => {:minimum => 1, :maximium => 40, :message => " - tamanho incorreto."};

  validates :email, :presence => {:is => true, :message => "- nao foi preenchido."},
                    :length => {:minimum => 1, :maximium => 40, :message => "- tamanho incorreto."},
                    :format => {:with => email_regex, :message => " - formato invalido"},
                    :uniqueness => {:case_sensitive => false, :message => " - esse email já foi cadastrado"};

  validates :password, :presence => { :is => true, :message => " - Nao foi preenchido."},
                       :confirmation => { :is => true },
                       :length => { :within => 6..40};

  before_save :encrypt_password

  def has_password?(submitted_password)
  end

  private

      def encrypt_password
        self.encrypted_password = encrypt(password)
      end
      
      def encrypt(string)
         secure_hash(string)
      end 
      
      def secure_hash(string)
        Digest::SH2.hexdigest(string)
      end

  end
