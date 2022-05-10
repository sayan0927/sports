class User < ApplicationRecord
     validates :username, length: { minimum: 5 }
     has_secure_password
     validates :username, uniqueness: true
end