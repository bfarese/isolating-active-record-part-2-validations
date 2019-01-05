module Users::User
  attr_reader :id, :name, :email

  def initialize(args)
    @id = args.fetch(:id)
    @name = args.fetch(:name)
    @email = args.fetch(:email)
  end
end
