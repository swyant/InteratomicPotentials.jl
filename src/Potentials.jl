################################################################################
#
#    Module Potentials.jl
#
#    This module will implement a variety of interatomic potentials. 
#       'implementation' means:
#           1. Having a defined structure for each potential
#               1.1 The potential structure will hold the trainable and nontrainable parameters 
#           2. Having a method to get the potential energy of given configuration, as
#               defined by that potential.
#           3. Having a method to produce the force of a given configuration, as defined
#               by that potential.
#           4. Having a method to produce the stresses of a given configuration, as defined
#               by that potential.
#
#       Right now, this module contains the framework for the following potentials
#           1. Lennard Jones
#           2. Born - Mayer 
#           3. Coulomb
#           4. GaN (special mixed type, more of an application than a true potential)
#           5. SNAP (energy, forces, and stress are yet to be implemented).
#
#       To do:
#           1. Finish SNAP implementation 
#           2. Make usable with PotentialLearning.jl and PotentialUQ.jl
#           3. Implement stresses
#
#
################################################################################
module Potentials

using Base: Float64
using LAMMPS

include("utils.jl")
include("types.jl")
include("energies.jl")
include("forces.jl")
include("virials.jl")
include("gradients.jl")



end