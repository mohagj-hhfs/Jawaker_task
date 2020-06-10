class Handler
  def nextHandler=(handler)
    raise NotImplementedError
  end

  def handle(card)
    raise NotImplementedError
  end
end
