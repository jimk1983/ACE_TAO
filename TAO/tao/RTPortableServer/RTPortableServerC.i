// -*- C++ -*-
//
// $Id$

// ****  Code generated by the The ACE ORB (TAO) IDL Compiler ****
// TAO and the TAO IDL Compiler have been developed by:
//       Center for Distributed Object Computing
//       Washington University
//       St. Louis, MO
//       USA
//       http://www.cs.wustl.edu/~schmidt/doc-center.html
// and
//       Distributed Object Computing Laboratory
//       University of California at Irvine
//       Irvine, CA
//       USA
//       http://doc.ece.uci.edu/
//
// Information about TAO is available at:
//     http://www.cs.wustl.edu/~schmidt/TAO.html


// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/interface_ci.cpp:68

#if !defined (_RTPORTABLESERVER_POA___CI_)
#define _RTPORTABLESERVER_POA___CI_

ACE_INLINE
CORBA::Boolean
RTPortableServer::POA::marshal (TAO_OutputCDR &)
{
  return 0;
}

template<>
ACE_INLINE
CORBA::Boolean
TAO::Any_Impl_T<RTPortableServer::POA>::to_object (
    CORBA::Object_ptr &_tao_elem
  ) const
{
  _tao_elem = CORBA::Object::_duplicate (this->value_);
  return 1;
}

template<>
ACE_INLINE
CORBA::Boolean
TAO::Any_Impl_T<RTPortableServer::POA>::marshal_value (TAO_OutputCDR &)
{
  return 0;
}

template<>
ACE_INLINE
CORBA::Boolean
TAO::Any_Impl_T<RTPortableServer::POA>::demarshal_value (TAO_InputCDR &)
{
  return 0;
}

#endif /* end #if !defined */

