class DateFilter < AbsFilter
  def initialize(reservations, date)
    super(reservations)
    @date = date
  end

  def apply
    @reservations.where(date: @date)
  end
end
