# http://stackoverflow.com/questions/9524457/converting-string-from-snake-case-to-camel-case-in-ruby
class NSString
  def camel_case
    self.split('_').inject([]){ |buffer,e| buffer.push(buffer.empty? ? e : e.capitalize) }.join
  end
end
