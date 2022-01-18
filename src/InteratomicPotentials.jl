################################################################################
#
#    Module Potentials.jl
#
#    This module will implement a variety of interatomic potentials and defines abstract types
#    that allow these potentials to be used in other packages (PotentialLearning.jl, PotentialUQ.jl, 
#    Atomistic.jl, etc...). 
#       'implementation' means:
#           1. Having a defined structure for each potential
#               1.1 The structure holds all of the necessary parameters for evaluating energies, forces, ...
#               1.2 The potential structure should expose the trainable and nontrainable parameters (necessary for learning).
#           2. Having a method to get the potential energy of given configuration, as
#               defined by that potential.
#           3. Having a method to produce the force of a given configuration, as defined
#               by that potential.
#           4. Having a method to produce the stresses of a given configuration, as defined
#               by that potential.
#           5. (For inference) Having a method to produce the gradient of each of the above methods with 
#               respect to the potential parameters.
#

################################################################################
module InteratomicPotentials

using Base: Float64
using StaticArrays
using LAMMPS
using LinearAlgebra
using AtomsBase
using Unitful
using UnitfulAtomic
include("Utilities/utils.jl")
include("PotentialTypes/types.jl")
export NeighborList, neighborlist
export potential_energy, force, virial, virial_stress
export grad_potential_energy, grad_force, grad_virial, grad_virial_stress
export SNAPParams, compute_snap, get_num_coeffs
export EmpiricalPotential, LennardJones
# export BornMayer, Coulomb, GaN, MixedPotential




end