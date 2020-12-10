class KnowledgeBrick < ApplicationRecord
  # validates the knowledge type available
  def self.knowledge_types
    return %w[tutorial snippet command summary other]
  end

  belongs_to :category

  validates :title, presence: true

  validates :knowledge_type, presence: true, inclusion: {
    in: KnowledgeBrick.knowledge_types,
    message: "%{value} não é um tipo válido de conhecimento!"
  }

  validates :description, presence: true
end
