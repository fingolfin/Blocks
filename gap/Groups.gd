#############################################################################
##
##  Groups.gd                                                 Blocks package
##
##  Copyright 2013,      Mohamed Barakat, University of Kaiserslautern
##
##  Declaration stuff for groups.
##
#############################################################################

####################################
#
# attributes:
#
####################################

DeclareAttributeWithDocumentation( "SerreCharacteristicSubgroup",
        IsGroup,
        [ "Computes the characteristic subgroup of <A>G</A>",
          "generated by the involutions and the squares.",
          "<#Include Label=\"SerreCharacteristicSubgroup\">" ],
        "a subgroup of <A>G</A>",
        "G",
        [ "Groups", "Operations" ],
        rec( function_label := "for IsGroup" )
        );

DeclareAttributeWithDocumentation( "SerreFactorGroup",
        IsGroup,
        [ "Computes the factor group modulo of <A>G</A>",
          "<C>SerreCharacteristicSubgroup</C><M>(</M><A>G</A><M>)</M>",
          "(&see; <Ref Attr=\"SerreCharacteristicSubgroup\" Label=\"for IsGroup\"/>).",
          "<#Include Label=\"SerreFactorGroup\">" ],
        "a factor group of <A>G</A>",
        "G",
        [ "Groups", "Operations" ],
        rec( function_label := "for IsGroup" )
        );

DeclareAttributeWithDocumentation( "NumberOfQuadraticEquationsOfUnitaryGroup",
        IsGroup,
        [ "Computes the number of quadratic equations",
          "defining the unitary group of the group ring of <A>G</A>",
          "in characteristic <M>2</M>.",
          "<#Include Label=\"NumberOfQuadraticEquationsOfUnitaryGroup\">" ],
        "a nonnegative integer",
        "G",
        [ "Groups", "Operations" ],
        rec( function_label := "for IsGroup" )
        );

DeclareAttributeWithDocumentation( "DimensionOfUnitaryGroup",
        IsGroup,
        [ "Computes the dimension of the unitary group",
          "of the group ring of <A>G</A> in characteristic <M>2</M>.",
          "<#Include Label=\"DimensionOfUnitaryGroup\">" ],
        "a nonnegative integer",
        "G",
        [ "Groups", "Operations" ],
        rec( function_label := "for IsGroup" )
        );

####################################
#
# global functions and operations:
#
####################################

# basic operations:
