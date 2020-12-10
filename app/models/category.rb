class Category < ApplicationRecord
  belongs_to :user
  belongs_to :parent,   class_name: 'Category', optional: true            # Self-reference
  has_many   :children, class_name: 'Category', foreign_key: 'parent_id'  # self-reference
  has_many   :knowledge_bricks

  validates :name, presence: true
  validates :description, presence: true

  # Return true if the category has parent
  def has_parent?
    return self.parent.nil? ? false : true
  end

  # Returns true if the current category has children
  def has_children?
    return self.children.size > 0 ? true : false
  end
end
