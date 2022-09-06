module GroupsHelper
  def default_group_icon(name)
    Group.icons[name.to_sym]
  end
end
