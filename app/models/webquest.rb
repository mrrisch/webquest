class Webquest < ActiveRecord::Base

	belongs_to :lehrer
	belongs_to :fach

	has_attached_file :image, styles: {medium: "300x300>"}
	validates_attachment_content_type :image , :content_type => /\Aimage\/.*\Z/

	has_attached_file :anhang
	validates_attachment_content_type :anhang, :content_type => ['application/pdf', 'application/msword', 'text/plain', 
		'application/vnd.openxmlformats-officedocument.wordprocessingml.document']

end
