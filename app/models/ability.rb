class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, Group, user_id: user.id
    can :manage, Entity, user_id: user.id
    can :manage, User, id: user.id
  end
end
