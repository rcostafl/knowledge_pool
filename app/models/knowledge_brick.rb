class KnowledgeBrick < ApplicationRecord
  def self.knowledge_types
    return %w[tutorial snippet command summary other]
  end

  belongs_to :category

  # validates :title, presence: true
  # validates :knowledge_type, presence: true, inclusion: {
  #   in: %w[tutorial snippet command summary other], #Knowledge.types,
  #   message: "%{value} não é um tipo válido!"
  # }
  # validates :description, presence: true
end
