class Genre < ApplicationRecord
  has_many :genre_series, class_name: 'GenreSerie'
  has_many :series, through: :genre_series, class_name: 'Serie', source: :serie
  has_many :child_filters, dependent: :destroy
end
