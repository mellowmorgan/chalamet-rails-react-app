class Photo < ApplicationRecord
  validates :file_path, presence: true
end