class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  validates :birth_date, presence: true
  validates :color, presence: true, inclusion: { in: ['White', 'Black', 'Brown', 'Orange']}
  validates :name, presence: true
  validates :sex, presence: true, inclusion: { in: ['M', 'F']}
  validates :description, presence: true

  def age(birth_date)
    time_ago_in_words(birth_date)
  end

  has_many :rental_requests,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy

end
