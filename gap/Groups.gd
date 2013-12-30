#############################################################################
##
##  Groups.gd                                                 Blocks package
##
##  Copyright 2013,      Mohamed Barakat, University of Kaiserslautern
##
##  Declaration stuff for groups.
##
#############################################################################

#! @Chapter Groups

####################################
#
#! @Section Properties
#
####################################

#! @Description
#!  Checks whether the conjugacy class <A>K</A> is real or not,
#!  i.e, if <A>K</A><M>=</M><C>Involution</C><M>(</M><A>K</A><M>)</M>
#!  (see <Ref Oper="Involution" Label="for CategoryCollections(IsMultiplicativeElementWithInverse)"/>).
#! @Arguments K
DeclareProperty( "IsReal",
        CategoryCollections(IsMultiplicativeElementWithInverse) );
#! @InsertSystem IsReal:cc

####################################
#
#! @Section Attributes
#
####################################

#! @Description
#!  Computes the characteristic subgroup of <A>G</A>
#!  generated by the involutions and the squares (cf. <Cite Key="Serre05" Where="Section 2"/>).
#! @Arguments G
#! @Returns a subgroup of <A>G</A>
#! @Label for IsGroup
DeclareAttribute( "SerreCharacteristicSubgroup",
        IsGroup );
#! @InsertSystem SerreCharacteristicSubgroup

#! @Description
#!  Computes the factor group modulo of <A>G</A>
#!  <C>SerreCharacteristicSubgroup</C><M>(</M><A>G</A><M>)</M>
#!  (see <Ref Attr="SerreCharacteristicSubgroup" Label="for IsGroup"/>).
#! @Arguments G
#! @Returns a factor group of <A>G</A>
#! @Label for IsGroup
DeclareAttribute( "SerreFactorGroup",
        IsGroup );
#! @InsertSystem SerreFactorGroup

#! @Description
#!  Computes the list of conjugacy classes of the group <M>G</M>
#!  which lie in the normal subgroup <A>N</A> <M>\leq G</M>.
#! @Arguments N
#! @Returns a list of conjugacy classes of <M>G</M>
#! @Label for IsGroup
DeclareAttribute( "ConjugacyClassesOfNormalSubgroup",
        IsGroup );
#! @InsertSystem ConjugacyClassesOfNormalSubgroup

#! @Description
#!  Computes the list of conjugacy classes of the group <M>G</M>
#!  which do <E>not</E> lie in the normal subgroup <A>N</A> <M>\leq G</M>.
#! @Arguments N
#! @Returns a list of conjugacy classes of <M>G</M>
#! @Label for IsGroup
DeclareAttribute( "ConjugacyClassesOfComplementOfNormalSubgroup",
        IsGroup );

#! @Description
#!  Computes a list of sets of conjugacy classes
#!  and their inverse classes of the group <M>G</M>
#!  which do <E>not</E> lie in the normal subgroup <A>N</A> <M>\leq G</M>.
#! @Arguments N
#! @Returns a list of conjugacy classes of <M>G</M>
#! @Label for IsGroup
DeclareAttribute( "ConjugacyInvolutoryClassesOfComplementOfNormalSubgroup",
        IsGroup );

####################################
#
#! @Section Operations
#
####################################

#! @Description
#!  Checks if the group element <A>g</A> is <A>p</A>-regular.
#! @InsertCode IsRegular_code
#! @Arguments g, p
#! @Returns <C>true</C> or <C>false</C>
DeclareOperation( "IsRegular",
        [ IsMultiplicativeElementWithInverse, IsInt ] );

#! @Description
#!  Checks whether a representative <M>g=</M><C>Representative</C><M>(</M><A>K</A><M>)</M>
#!  of the conjugacy class <A>K</A><M>=g^G</M> is <A>p</A>-regular
#!  (see <Ref Prop="IsRegular" Label="for IsMultiplicativeElementWithInverse, IsInt"/>).
#! @Arguments K, p
#! @Returns <C>true</C> or <C>false</C>
DeclareOperation( "IsRegular",
        [ CategoryCollections(IsMultiplicativeElementWithInverse), IsInt ] );
#! @InsertSystem IsRegular

#! @Description
#!  Computes the defect <A>p</A>-group of a representative
#!  <M>g=</M><C>Representative</C><M>(</M><A>K</A><M>)</M>
#!  of the conjugacy class <A>K</A><M>=g^G</M> as a subgroup of
#!  <M>G=</M><C>ActingDomain</C><M>(</M><A>K</A><M>)</M>.
#! @InsertCode DefectGroup_code:cc
#! @Arguments K, p
#! @Returns a subgroup of <M>G</M>
DeclareOperation( "DefectGroup",
        [ CategoryCollections(IsMultiplicativeElementWithInverse), IsInt ] );
#! @InsertSystem DefectGroup:cc

#! @Description
#!  Computes the conjugacy class of <M>g^{-1}</M>
#!  where <M>g=</M><C>Representative</C><M>(</M><A>K</A><M>)</M>
#!  is a representative of the conjugacy class <A>K</A><M>=g^G</M>
#!  (see <Ref Prop="IsReal" Label="for CategoryCollections(IsMultiplicativeElementWithInverse)"/>).
#! @Arguments K
#! @Returns a conjugacy class in <M>G</M>
DeclareOperation( "Involution",
        [ CategoryCollections(IsMultiplicativeElementWithInverse) ] );
#! @InsertSystem DefectGroup:cc

#! @Description
#!  Computes the coefficient of the group element <A>g</A>
#!  in the group ring element <A>b</A>.
#! @Arguments b, g
#! @Returns a ring element
DeclareOperation( "Coefficient",
        [ IsElementOfFreeMagmaRing, IsMultiplicativeElementWithInverse ] );
#! @InsertSystem DefectGroup:cc

#! @Description
#!  Computes the coefficient of the conjugacy class <A>K</A>
#!  in the group ring element <A>b</A>, where <A>b</A> his assumed to be central
#!  (see <Ref Prop="Coefficient" Label="for IsElementOfFreeMagmaRing, IsMultiplicativeElementWithInverse"/>).
#! @Arguments b, K
#! @Returns a ring element
DeclareOperation( "Coefficient",
        [ IsElementOfFreeMagmaRing, CategoryCollections(IsMultiplicativeElementWithInverse) ] );

#! @Description
#!  Computes the coefficients of all conjugacy classes
#!  in the group ring element <A>b</A>, where <A>b</A> his assumed to be central
#!  (see
#!  <Ref Prop="Coefficient" Label="for IsElementOfFreeMagmaRing, CategoryCollections(IsMultiplicativeElementWithInverse)"/>).
#! @Arguments b
#! @Returns a list
DeclareOperation( "Coefficients",
        [ IsElementOfFreeMagmaRing ] );

#! @Description
#!  Computes a list of <A>kG</A>-sums of conjugacy classes
#!  and their inverse classes of the group <M>G</M>
#!  which do <E>not</E> lie in the normal subgroup <A>N</A> <M>\leq G</M>.
#! @Arguments kG, N
#! @Returns a list of conjugacy classes of <M>G</M>
#! @Label for IsAlgebra, IsGroup
DeclareOperation( "ConjugacyInvolutoryClassesOfComplementOfNormalSubgroup",
        [ IsAlgebra, IsGroup ] );
