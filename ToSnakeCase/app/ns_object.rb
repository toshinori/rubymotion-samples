class NSObject

  def method_missing(name, *args)
    camel_case = name.camel_case
    if self.class.instance_methods.find(camel_case)
      return send(camel_case.to_sym, *args)
    end
    super
  end

end
