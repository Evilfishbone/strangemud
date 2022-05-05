class NewStuff < ApplicationRecord
  validates(:title, presence: true, length: { maximum: 15} )
  validates(:news, presence: true, length: { maximum: 400} )
  validates(:date, presence: true)
  validate(:date_format)
  
  private
  
  def date_format
    if date.class != Date
      errors.add(:date, "is not a date")
    end
  end
end
