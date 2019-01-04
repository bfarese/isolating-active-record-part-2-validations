class Users::Repository
  def initialize(relation: Users::Relation, klass: Users::User)
    @relation = relation
    @klass = klass
  end

  def find(id)
    @klass.new(relation_attributes(id))
  end

  def find_name(id)
    @klass.new(relation_name(id))
  end

  private

  def relation_attributes(id)
    @relation.attribute_values(id)
  end

  def relation_name(id)
    @relation.find_name(id)
  end
end
