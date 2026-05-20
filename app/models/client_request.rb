class ClientRequest < ApplicationRecord
  validates :name, :email, :message, presence: true
end
