class Pin < ActiveRecord::Base
  validates :description, presence: true
  validates :user_id, presence: true


  belongs_to :user
  has_attached_file :image, styles: { thumb: 'x100', small: '300x300', medium: '600x600>', big: '1000x1000>' }


  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/,
                                    size: { less_than: 5.megabytes }
end
