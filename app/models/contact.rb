class Contact
   include ActiveModel::Model

   attr_accessor :name, :email, :subject, :message

   validates :name, presence: true
   validates :email, presence: true 
   validates :subject, length: { maximum: 60 }
   validates :message, presence: true, length: { maximum: 1000 }   
  
end