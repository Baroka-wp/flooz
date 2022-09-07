module GroupsHelper
  def default_group_icon(name)
    icon = Group.icons[name.to_sym]
    return icon unless icon.nil?

    Group.icons[:default]
  end
end
