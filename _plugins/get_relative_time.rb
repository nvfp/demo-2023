

module GetRelativeTime
  
  def get_relative_time(posted_date)
    puts "DEBUG: posted_date: #{posted_date}"

    if posted_date.nil?
      return "date not provided..."
    end

    curr_ts = Time.now.to_i  # Current timestamp
    post_ts = Time.parse(posted_date.to_s).to_i

    elapsed_time = curr_ts - post_ts
    elapsed_days = elapsed_time / 86_400
    elapsed_months = elapsed_time / 2_592_000
    elapsed_years = elapsed_time / 31_536_000

    if elapsed_months < 1
      if elapsed_days == 0
        approx = 'today'
      elsif elapsed_days == 1
        approx = 'yesterday'
      else
        approx = "#{elapsed_days} days ago"
      end
    elsif elapsed_years < 1
      if elapsed_months == 1
        approx = 'a month ago'
      else
        approx = "#{elapsed_months} months ago"
      end
    else
      if elapsed_years == 1
        approx = 'a year ago'
      else
        approx = "#{elapsed_years} years ago"
      end
    end

    approx
  end
  
  def get_relative_seconds(posted_date)

    if posted_date.nil?
      return "date not provided..."
    end

    curr_ts = Time.now.to_i  # Current timestamp
    post_ts = Time.parse(posted_date.to_s).to_i

    elapsed_time = curr_ts - post_ts

    "#{elapsed_time} seconds ago"
  end
end

Liquid::Template.register_filter(GetRelativeTime)