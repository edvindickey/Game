class Userparam < ApplicationRecord
	belongs_to :user
	validates :firstname, :lastname, :age, presence: true
	validates :age, numericality: { only_integer: true }

	 has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
