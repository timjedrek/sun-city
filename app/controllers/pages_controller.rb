class PagesController < ApplicationController
  def home
  end

  def about_us
  end

  def fixed_wing
  end

  # NEW TO FLYING

  def why_pilot
  end

  # COURSES
  
  def private_pilot
    @book_download = BookDownload.new
  end

  def instrument
    @book_download = BookDownload.new
  end

  def commercial
    @book_download = BookDownload.new
  end

  def multi
    @book_download = BookDownload.new
  end

  def pilot_training
    @book_download = BookDownload.new
  end
  
  def airline_pilot_courses
    @book_download = BookDownload.new
  end

  def cfi
    @book_download = BookDownload.new
  end

  def atp
    @book_download = BookDownload.new
  end

  def seaplane
    @book_download = BookDownload.new
  end

  def bfr
    @book_download = BookDownload.new
  end

  def ipc
    @book_download = BookDownload.new
  end

  def wingman
    @book_download = BookDownload.new
  end

  def professional_pilot_course
    @book_download = BookDownload.new
  end

  # YOUTH

  def youth
  end


  ## PREVIOUS METHODS ##

  def timeline
    @book_download = BookDownload.new
  end

  def stratus
  end

  def meritize
  end

  def why_simplifly
  end

  def accelerated
  end

  def flexible
  end
  
  def cost
  end

  def pilot_programs
  end

  def aircraft_rental
  end
  
  def rotary_wing
  end

  def airplane_training
  end

  def helicopter_training
  end

  def advanced_training
  end

  def our_team
  end

  def pilot_resources
  end

  def careers
  end
end
