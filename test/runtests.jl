# This file is a part of JuliaFEM.
# License is MIT: see https://github.com/JuliaFEM/Mortar2D.jl/blob/master/LICENSE

using Base.Test
using TimerOutputs
const to = TimerOutput()

test_files = String[]
push!(test_files, "test_calculate_normals.jl")
push!(test_files, "test_calculate_projections.jl")
push!(test_files, "test_calculate_segments.jl")
push!(test_files, "test_calculate_mortar_matrices.jl")
push!(test_files, "test_calculate_mortar_assembly.jl")

@testset "Mortar2D.jl" begin
    for fn in test_files
        timeit(to, fn) do
            include(fn)
        end
    end
end
println()
println("Test statistics:")
println(to)
