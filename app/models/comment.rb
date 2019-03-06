# Comments application record
class Comment < ApplicationRecord
  belongs_to :article
end
