module RefineryCore
  class DeliveryLog < ApplicationRecord
    self.table_name = "delivery_logs"

    belongs_to :article
    belongs_to :transformation
  end
end
