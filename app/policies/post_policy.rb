class PostPolicy < ApplicationPolicy
  class Scope < Scope
    attr_reader :user, :post

    def initialize(user, post)
      @user = user
      @post = post
    end

    def update?
      user.admin? or not post.published?
    end





    def resolve
      scope
    end





  end
end
