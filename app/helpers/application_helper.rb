module ApplicationHelper
  # Title Changer
  def title(text)
    content_for :title, text
  end

  # Meta Description Changer
  def meta_description(text)
    content_for :meta_description, text
  end

  # Meta Keywords Changer
  def meta_keywords(text)
    content_for :meta_keywords, text
  end

  # OG Image
  def og_image(image_name)
    content_for :og_image, image_name
  end

  # Twitter Image
  def twitter_image(image_name)
    content_for :twitter_image, image_name
  end


  require 'net/http'
  require 'uri'

  def fetch_metar_data
    begin
      url = URI.parse('https://aviationweather.gov/cgi-bin/data/metar.php?ids=KPTW')
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = (url.scheme == 'https')
  
      request = Net::HTTP::Get.new(url.request_uri)
      response = http.request(request)
  
      if response.code == '200'
        return response.body
      else
        return 'Failed to fetch METAR data'
      end
    rescue SocketError => e
      return 'Failed to open TCP connection'
    rescue URI::InvalidURIError => e
      return 'Invalid URL'
    rescue StandardError => e
      return "An error occurred: #{e.message}"
    end
  end
end
