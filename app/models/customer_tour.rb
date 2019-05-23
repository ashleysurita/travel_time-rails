class CustomerTour < ApplicationRecord
  belongs_to :tour
  belongs_to :customer
  # validates :tour_id, :customer_id, presenced: true
  
  def self.find_join(customer, tour)
    self.find_by(customer_id: customer.id, tour_id: tour.id)
  end

end