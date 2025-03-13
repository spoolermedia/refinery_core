class DeliveryLog < ApplicationRecord
  belongs_to :article
  belongs_to :transformation, optional: true # Some articles might be delivered without modifications

  validates :status, presence: true
end
