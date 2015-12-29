class Admission < ActiveRecord::Base
	#field not remain blank
  validates :sname, :pname, :dob, :address, :city, :course, :contact, presence: true
#field must contain alphabets
  validates :sname, :pname,:city , format: { with: /\A[a-zA-Z\s]+\z/,
    message: "only alphabets and spaces are allowed" }

#fields must choose a valid option	
	validates :course, :bldgrp ,  exclusion: { in: %w(Select),message: "Select a valid option" }

	validates :contact, numericality: { only_integer: true }

	validates :contact, length: { is: 10,message: "must be of 10 digits" }

end
