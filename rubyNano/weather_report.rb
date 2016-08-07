class WeatherReport
  def initialize(options={})
    @data = options
  end

  def report
    return "It's raining outside!" if is_raining?
    return "It's hot outside!" if is_hot?
    # return "It's warm outside!" if is_warm?
    # return "It's cold outside!" if is_cold?
  end

  def is_hot?
    @data[:temp] >= 80
  end

  def is_raining?
    @data[:precip]
  end
end
