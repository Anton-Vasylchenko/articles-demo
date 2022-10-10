class User < ApplicationRecord                
        include ImageUploader::Attachment(:image)

        before_save { 
            self.email = email.downcase
            
            # if self.image_data.nil? == false
            #     self.image_data = image_data.squish
            # end
            
            # if image_data === ""
            #     self.image_data = nil
            # end
        }        

        has_many :articles, dependent: :destroy

        validates :username, presence: true,
            uniqueness: { case_sensitive: false },
            length: {minimum: 3, maximum: 25}        
        
        VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

        validates :email, presence: true,
            uniqueness: { case_sensitive: false },
            length: {maximum: 105},
            format: {with: VALID_EMAIL_REGEX}

        has_secure_password
end