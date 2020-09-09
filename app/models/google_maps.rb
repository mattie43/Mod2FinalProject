class GoogleMaps
  def self.map_display(first,second)
    # binding.pry
    # "https://www.google.com/maps/embed/v1/view?key=#{ENV['GOOGLE_API']}&center=#{lat},#{long}&zoom=18"
    "https://www.google.com/maps/embed/v1/place?key=#{ENV['GOOGLE_API']}&q=#{first},#{second}"
  end
end