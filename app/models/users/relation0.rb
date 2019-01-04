class Users::Relation < ApplicationRecord
  def self.attribute_values(id)
    name, email = where(id: id).pluck(:name, :email)[0]

    { id: id, name: name, email: email }
  end

  def self.find_name(id)
    where(id: id).pluck(:name)[0]
  end
end
