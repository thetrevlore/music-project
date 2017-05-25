class Band < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :albums,
    foreign_key: :band_id,
    primary_key: :id,
    class_name: 'Album'
end
