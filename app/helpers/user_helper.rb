module UserHelper
  def format_class_name(name)
    name.split(" ").join("-").downcase
  end
end
