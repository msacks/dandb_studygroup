class MyResource < Webmachine::Resource
  def to_html
    "<html><body>Default message that doesn't contain a greeting or planet<br><br>
     Word of the day: #{pick_random_line}
</body></html>"
  end
  def pick_random_line
    chosen_line = nil
    File.foreach("data.txt").each_with_index do |line, number|
      chosen_line = line if rand < 1.0/(number+1)
    end
    return chosen_line
  end
end
