class CatRentalRequest < ApplicationRecord
  
  validates :status, inclusion: { in: ['PENDING', 'APPROVED', 'DENIED'] } , presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :no_conflicts

  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: :Cat

  def no_conflicts

    self.cat.rental_requests.each do |request|
      if request != self
        return false if overlaps?(request)
      end
    end

    true
  end

  def overlaps?(other_request)
    if self.start_date > other_request.end_date
      return false
    elsif other_request.start_date > self.end_date
      return false
    else
      true
    end
  end



  def overlapping_requests
    
    
  end
  
end
