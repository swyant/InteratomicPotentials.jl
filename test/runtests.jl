using Test

@time begin
@testset "Potentials.jl" begin
    include("lennard_jones_test.jl")
    print("\n")
    include("lennard_jones_parameter_estimation_test.jl")
end
end