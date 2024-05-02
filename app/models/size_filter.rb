class SizeFilter < AbsFilter
  def initialize(reservations, size)
    super(reservations)
    @size = size
  end

  def apply
    @reservations.where(party_size: @size)
  end
end
