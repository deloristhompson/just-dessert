class CookieInventory
  def initialize
    @diff_cookies = {
      peanut_butter: 0,
      chocolate_chip: 0,
      sugar: 0
    }
  end

  def cook_batch!(cookie_type, cookies_baked)
    if cookie_type == "peanut_butter".gsub(/_/, ' ' )
      @diff_cookies[:peanut_butter] += cookies_baked
    elsif cookie_type == "chocolate_chip".gsub(/_/, ' ' )
      @diff_cookies[:chocolate_chip] += cookies_baked
    else
      @diff_cookies[:sugar] += cookies_baked
    end
  end

  def sell!(cookie_type, cookies_sold)
    if cookie_type == "peanut_butter".gsub(/_/, ' ' )
      if cookies_sold > @diff_cookies[:peanut_butter]
        puts "Sold Out!"
      else
        @diff_cookies[:peanut_butter] -= cookies_sold
      end
    elsif cookie_type == "chocolate_chip".gsub(/_/, ' ' )
      if cookies_sold > @diff_cookies[:chocolate_chip]
        puts "Sold Out!"
      else
        @diff_cookies[:chocolate_chip] -= cookies_sold
      end
    else
      if cookies_sold > @diff_cookies[:sugar]
        puts "Sold Out!"
      else
        @diff_cookies[:sugar] -= cookies_sold
      end
    end
  end

  def to_s
    @diff_cookies
  end
end
