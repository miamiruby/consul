class Power
  include Consul::Power

  def initialize(user = nil)
    @user = user
  end

  power :clients do
    Client.active
  end

  power :client_notes do |client|
    client.notes
  end

  power :notes do
    Note.scoped(:joins => :client)
  end

  power :always_true do
    true
  end

  power :always_false do
    false
  end

  power :always_nil do
    nil
  end

  power :cakes do
    :cakes
  end

  power :updatable_cakes do
    :updatable_cakes
  end

  power :creatable_cakes do
    :creatable_cakes
  end

  power :destroyable_cakes do
    :destroyable_cakes
  end

  def assignable_user_roles
    %w[guest admin]
  end

end
