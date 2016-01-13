module ChameleonModule
  def to_dollars(float)
    float = sprintf('%.2f', float).to_s
    float = float.split(".")
    num = ""
    i = -3
    while i >= -(float[0].length)
      if i % 4 == 0
        float[0][i] += ","
        i -= 1
      end
      i -= 1
    end
    return final = "$" + float.join(".")
  end

  def date_view(date)
    date = date.to_s.split("-")
    temp = date[0]
    date[0] = date[1]
    date[1] = date[2]
    date[2] = temp

    months = {
      "01" => "January",
      "02" => "February",
      "03" => "March",
      "04" => "April",
      "05" => "May",
      "06" => "June",
      "07" => "July",
      "08" => "August",
      "09" => "September",
      "10" => "October",
      "11" => "November",
      "12" => "December"
    }

    date[0] = months[date[0]]
    date[1] += ","

    if date[1][0] == "0"
      date[1][0] = ""
    end
    return date.join(" ")
  end
end
