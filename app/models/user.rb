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

class User < ActiveRecord::Base
  
  attr_accessor :nome, :email
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, :presence => {:is => true, :message => " - nao foi preenchido."},
                   :length  => {:minimum => 1, :maximium => 40, :message => " - tamanho incorreto."};

  validates :email, :presence => {:is => true, :message => "- nao foi preenchido."},
                    :length => {:minimum => 1, :maximium => 40, :message => "- tamanho incorreto."},
                    :format => {:with => email_regex, :message => " - formato invalido"},
                    :uniqueness => {:case_sensitive => false, :message => " - esse email já foi cadastrado"};

end
