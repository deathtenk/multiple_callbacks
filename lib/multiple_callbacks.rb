module MultipleCallbacks
  module_function

  def call(result,success,failure)
    if result == "success"
      success.call
    else
      failure.call
    end
  end
end
