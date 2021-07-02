
module Neural

  using Statistics

  export Network, setup, train!, predict!

  #=
  ...
    Neural network abstraction
  ...
  =#
  mutable struct Network
    a::Array{Any,1}     # Inputs: 1-dimensional array of elements of any (numerical) type
    W::Array{Any,1}     # Weights: 1-dimensional array of elements of any type
    b::Array{Any,1}     # Error correction: 1-dimensional array of elements of any type
    epsilon::Float64    # Step size; hyperparameter for gradient descent
    result::Array       # prediction results
  end

  # TODO: Important functions we'll need in out Neural Network

  #1 sigmoid function
  function sigmoid(x)
    return 1 ./ (1 .+ exp.(-x))
  end

  # sigmoid derivative
  function sigmoid_derivative(sig_x)
    sigmoid_derivative = sig_x .* (1 .- sig_x)
  end

  # tanh function
  function tanh(x)
    return (exp.(x) - exp.(-x)) / (exp.(x) + exp.(-x))
  end

  # tanh derivative
  function tanh_derivative(tanh_x)
    tanh_derivative = 1 - tanh_x.^2
  end

  #=
  ...
    Setup neural network with a specific input size & output size
    setup(input_size, hidden_sizes, output_size, epsilon=0.01)

    # Arguments
    input_size : dimensionality of input
    hidden_sizes : dimensionality of hidden layers
    output_size : required dimensionality of output
  ...
  =#
  function setup(input_size, hidden_sizes, output_size, epsilon=0.01)
    # Get number of all neurons in Network
    sizes = [input_size hidden_sizes output_size]

    W = []  # Array to hold weights
    for i = 2:length(sizes)
      # For a start, randomly generate weights
      push!(W, randn((sizes[i-1], sizes[i])))
    end

    b = []     # Array to hold error correction values
    for i = 2:length(sizes)
      # For a start, set all error-correction values to ZERO
      push!(b, zeros((1, sizes[i])))
    end

    # create a Neural network with the generated weights and error corrections
    return Network([], W, b, epsilon, [])
  end

  #=
  ...
    Forward-propagation routine --> generating predictions
    forward!(network::Network, X)

    # Arguments
    network : Neural network
    X : input values
  ...
  =#
  function forward!(network::Network, X)
    network.a = [X]     # Plug inputs into Network

    # TODO Step 1: For each weight, multiply with corresponding input, and add corresponding error correction
    for i = 1:length(network.W)
      # z = W*a + b --> modelled after y = mx + b
      z = network.a[i] * network.W[i] .+ network.b[i]

      # TODO: Step 2: Compute sigmoid of value computed by linear regression and re-insert into Array of inputs for next iteration
      push!(network.a, sigmoid(z))
    end
    # Results are last N values computed by final layer
    network.result = network.a[end]

    return network
  end

  #? backward propagation --> Process of modifying model parameters
  #=
  ...
    #* Backward propagation routine --> modifying parameters
    #? backward!(network::Network, X, y)

    #! Argunemts:
      #? network::Network : Neural Network to be propagated backward
      #? X : input data values
      #? y : accurate input labels on the data
  ...
  =#
  function backward!(network::Network, X, y)
    # Compute error in network's predictions
    error = y - network.result
    # Find step amount by multilying error with sigmoid derivative of results
    delta = error .* sigmoid_derivative(network.result)

    # Compute new weights and insert into Array of weights
    network.W[end] += network.epsilon * transpose(network.a[end-1]) * delta

    # Compute new error corrections (average of step amounts)
    network.b[end] .+= network.epsilon * mean(delta)

    # Get number of nodes in network and back-propagate,
    # excluding final layer which has already been handled above
    W_length = length(network.W)
    for i = 1:W_length-1
      j = W_length - i

      error = delta * transpose(network.W[j+1])
      delta = error .* sigmoid_derivative(network.a[j+1])
      network.W[j] += network.epsilon * transpose(network.a[j]) * delta
      network.b[j] .+= network.epsilon * mean(delta)
    end
    return network
  end

  #=
  ...
    Training routine
    train(network::Network), X, y, n = 1000

    # Arguments
    network : Neural network to be trained
    X : Array of input data values
    y : Array of pre-determined (and accurate!) data labels
  ...
  =#
  function train!(network::Network, X, y, n=1000)
    # For each data iteration,
    for step in 1:n
      # Step 1: forward-propagate to get predictions
      forward!(network, X)

      # Step 2: backpropagate to update model
      backward!(network, X, y)
      step = 0
    end
  end

  #=
  ...
    Prediction routine
    predict!(network::Network, XP)

    # Arguments
    network : Neural network to be used to generate predictions
    XP : data to be analyzed for patterns
  ...
  =#
  function predict!(network::Network, XP)
    # Forward propagate through network to get predictions
    forward!(network, XP)
  end

end
