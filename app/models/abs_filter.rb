class AbsFilter
  def initialize(reservations)
    @reservations = reservations
  end

  def apply
    raise NotImplementedError, 'Subclasses must implement the #apply method'
  end
end
