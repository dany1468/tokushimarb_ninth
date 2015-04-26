class Following
  include Mongoid::Document
  belongs_to :from_user, class_name: 'User', inverse_of: nil
  belongs_to :to_user, class_name: 'User', inverse_of: nil
end
