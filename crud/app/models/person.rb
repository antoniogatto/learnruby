class Person < ActiveRecord::Base

	#Duas Maneiras de Fazer validacao se foi preenchido ou nao. A segunda tem a personalizacao da mensagem mostrada.
	#e.g1: validates :full_name, :presence => true;
	#e.g2:
	validates_presence_of :full_name,
			      :message => "- nao foi preenchido.";

	validates_format_of :full_name, 
			    :with => /\A[a-zA-Z]/,
			    :message => " - Caracteres invalidos foram usados";	

	#validar tamanho do email	
	validates :email,     :presence => {:is => true, :message => "- nao foi preenchido."},
			      :length => {:minimum => 5, :maximum => 10, :message => "- Tamanho invalido"};

	validates_confirmation_of :email;
	
	validates :telephone, :presence => {:is => true, :message => "- nao foi preenchido. "};
	
	validates :password,  :presence => {:is => true, :message => "- nao foi preenchido.",
					    :length => {:in => 6..20, :message => "- tamanho permitido entre 6 e 20 caracteres"}};

	#validates_acceptance_of :termos_servico;

end
