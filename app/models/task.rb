class Task < ApplicationRecord

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :score

  validates :content, presence: true
  validates :content, uniqueness: { scope: :content , message: "はすでにあります" }
  validates :content, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: "は全角で入力してください" }

end
