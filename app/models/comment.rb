class Comment < ApplicationRecord
  belongs_to :projectt
  belongs_to :bug
end
