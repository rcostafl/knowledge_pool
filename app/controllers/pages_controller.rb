class PagesController < ApplicationController
  def home
    # this query returns all the user's categories that has no parent
    # No parent means that the category is a base category (a database of knowledge) from the user's point of view
    @categories = Category.where(user: current_user, parent: nil)
  end
end
