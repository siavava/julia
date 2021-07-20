#=
  Control Flow in Julia
=#

∇ = 0
while ∇ < 10
  global ∇ += 1
  println(∇)
end

τ, σ = 5, 5
A = zeros(τ, σ)
for i in 1:τ, j in 1:σ
  global A[i, j] = i + j
end

println(A)
κ = [i + j for i in 0:τ, j in 0:σ]
println(κ)
