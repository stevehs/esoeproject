// Copyright (C) 2005-2007 Code Synthesis Tools CC
//
// This program was generated by CodeSynthesis XSD, an XML Schema to
// C++ data binding compiler.
//
// Licensed under the Apache License, Version 2.0 (the "License"); you may not 
// use this file except in compliance with the License. You may obtain a copy of 
// the License at 
// 
//   http://www.apache.org/licenses/LICENSE-2.0 
// 
// Unless required by applicable law or agreed to in writing, software 
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT 
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the 
// License for the specific language governing permissions and limitations under 
// the License.

/**
 * @file
 * @brief Generated from ../saml2cpp/schema/xml.xsd.
 */

#ifndef XML_HXX
#define XML_HXX

// Begin prologue.
//
#include "saml2/SAML2Defs.h"
//
// End prologue.

#include <xsd/cxx/version.hxx>

#if (XSD_INT_VERSION != 3000000L)
#error XSD runtime version mismatch
#endif

#include <xsd/cxx/pre.hxx>

#ifndef XSD_USE_WCHAR
#define XSD_USE_WCHAR
#endif

#ifndef XSD_CXX_TREE_USE_WCHAR
#define XSD_CXX_TREE_USE_WCHAR
#endif

#include "saml2/xsd/xml-schema.hxx"

// Forward declarations.
//
namespace namespace_
{
  class lang;
  class space;
}


#include <memory>    // std::auto_ptr
#include <algorithm> // std::binary_search

#include <xsd/cxx/tree/exceptions.hxx>
#include <xsd/cxx/tree/elements.hxx>
#include <xsd/cxx/tree/containers.hxx>
#include <xsd/cxx/tree/list.hxx>

#include <xsd/cxx/xml/dom/parsing-header.hxx>

#include <xsd/cxx/xml/dom/auto-ptr.hxx>
#include <xsd/cxx/tree/containers-wildcard.hxx>

/**
 * @brief C++ namespace for the %http://www.w3.org/XML/1998/namespace
 * schema namespace.
 */
namespace namespace_
{
  /**
   * @brief Union class corresponding to the %lang
   * schema type.
   *
   * The mapping represents unions as strings.
   */
  class SAML2EXPORT lang: public ::xml_schema::string
  {
    public:

    /**
     * @brief Default constructor.
     *
     * Note that this constructor may leave the instance in an
     * invalid state.
     */
    lang ();

    /**
     * @brief Construct an instance from a string.
     *
     * @param v A string value.
     */
    lang (const ::std::wstring& v);

    /**
     * @brief Construct an instance from a DOM element.
     *
     * @param e A DOM element to extract the data from.
     * @param f Flags to construct the new instance with.
     * @param c A pointer to the object that will contain the new
     * instance.
     */
    lang (const ::xercesc::DOMElement& e,
          ::xml_schema::flags f = 0,
          ::xml_schema::type* c = 0);

    /**
     * @brief Construct an instance from a DOM attribute.
     *
     * @param a A DOM attribute to extract the data from.
     * @param f Flags to construct the new instance with.
     * @param c A pointer to the object that will contain the new
     * instance.
     */
    lang (const ::xercesc::DOMAttr& a,
          ::xml_schema::flags f = 0,
          ::xml_schema::type* c = 0);

    /**
     * @brief Construct an instance from a string fragment.
     *
     * @param s A string fragment to extract the data from.
     * @param e A DOM element containing the string fragment.
     * @param f Flags to construct the new instance with.
     * @param c A pointer to the object that will contain the new
     * instance.
     */
    lang (const ::std::wstring& s,
          const ::xercesc::DOMElement* e,
          ::xml_schema::flags f = 0,
          ::xml_schema::type* c = 0);

    /**
     * @brief Copy constructor.
     *
     * @param x An instance to make a copy of.
     * @param f Flags to construct the copy with.
     * @param c A pointer to the object that will contain the copy.
     *
     * For polymorphic object models use the _clone function instead.
     */
    lang (const lang& x,
          ::xml_schema::flags f = 0,
          ::xml_schema::type* c = 0);

    /**
     * @brief Copy the object polymorphically.
     *
     * @param f Flags to construct the copy with.
     * @param c A pointer to the object that will contain the copy.
     * @return A pointer to the dynamically allocated copy.
     *
     * This function ensures that the dynamic type of an instance is
     * used for copying and should be used for polymorphic object
     * models instead of the copy constructor.
     */
    virtual lang*
    _clone (::xml_schema::flags f = 0,
            ::xml_schema::type* c = 0) const;
  };

  /**
   * @brief Enumeration class corresponding to the %space
   * schema type.
   */
  class SAML2EXPORT space: public ::xml_schema::ncname
  {
    public:

    /**
     * @brief Underlying enum type.
     */
    enum value
    {
      default_,
      preserve
    };

    /**
     * @brief Default constructor.
     *
     * Note that this constructor may leave the instance in an
     * invalid state.
     */
    space ();

    /**
     * @brief Construct an instance from the underlying enum value.
     *
     * @param v A enum value.
     */
    space (value v);

    /**
     * @brief Construct an instance from the base value.
     *
     * @param v A base value.
     */
    space (const ::xml_schema::ncname& v);

    /**
     * @brief Construct an instance from a DOM element.
     *
     * @param e A DOM element to extract the data from.
     * @param f Flags to construct the new instance with.
     * @param c A pointer to the object that will contain the new
     * instance.
     */
    space (const ::xercesc::DOMElement& e,
           ::xml_schema::flags f = 0,
           ::xml_schema::type* c = 0);

    /**
     * @brief Construct an instance from a DOM attribute.
     *
     * @param a A DOM attribute to extract the data from.
     * @param f Flags to construct the new instance with.
     * @param c A pointer to the object that will contain the new
     * instance.
     */
    space (const ::xercesc::DOMAttr& a,
           ::xml_schema::flags f = 0,
           ::xml_schema::type* c = 0);

    /**
     * @brief Construct an instance from a string fragment.
     *
     * @param s A string fragment to extract the data from.
     * @param e A DOM element containing the string fragment.
     * @param f Flags to construct the new instance with.
     * @param c A pointer to the object that will contain the new
     * instance.
     */
    space (const ::std::wstring& s,
           const ::xercesc::DOMElement* e,
           ::xml_schema::flags f = 0,
           ::xml_schema::type* c = 0);

    /**
     * @brief Copy constructor.
     *
     * @param x An instance to make a copy of.
     * @param f Flags to construct the copy with.
     * @param c A pointer to the object that will contain the copy.
     *
     * For polymorphic object models use the _clone function instead.
     */
    space (const space& x,
           ::xml_schema::flags f = 0,
           ::xml_schema::type* c = 0);

    /**
     * @brief Copy the object polymorphically.
     *
     * @param f Flags to construct the copy with.
     * @param c A pointer to the object that will contain the copy.
     * @return A pointer to the dynamically allocated copy.
     *
     * This function ensures that the dynamic type of an instance is
     * used for copying and should be used for polymorphic object
     * models instead of the copy constructor.
     */
    virtual space*
    _clone (::xml_schema::flags f = 0,
            ::xml_schema::type* c = 0) const;

    /**
     * @brief Assign the underlying enum value.
     *
     * @param v A enum value.
     * @return A refernce to the instance.
     */
    space&
    operator= (value v);

    /**
     * @brief Implicit conversion operator to the underlying
     * enum value.
     *
     * @return A enum value.
     */
    virtual
    operator value () const
    {
      return _xsd_space_convert ();
    }

    protected:
    value
    _xsd_space_convert () const;

    public:
    static const wchar_t* const _xsd_space_literals_[2];
    static const value _xsd_space_indexes_[2];
  };
}

#include <iosfwd>

#include <xercesc/dom/DOMDocument.hpp>
#include <xercesc/dom/DOMInputSource.hpp>
#include <xercesc/dom/DOMErrorHandler.hpp>

namespace namespace_
{
}

#include <iosfwd>

#include <xercesc/dom/DOMDocument.hpp>
#include <xercesc/dom/DOMErrorHandler.hpp>
#include <xercesc/framework/XMLFormatter.hpp>

#include <xsd/cxx/xml/dom/auto-ptr.hxx>

namespace namespace_
{
  SAML2EXPORT
  void
  operator<< (::xercesc::DOMElement&, const lang&);

  SAML2EXPORT
  void
  operator<< (::xercesc::DOMAttr&, const lang&);

  SAML2EXPORT
  void
  operator<< (::xsd::cxx::tree::list_stream< wchar_t >&,
              const lang&);

  SAML2EXPORT
  void
  operator<< (::xercesc::DOMElement&, const space&);

  SAML2EXPORT
  void
  operator<< (::xercesc::DOMAttr&, const space&);

  SAML2EXPORT
  void
  operator<< (::xsd::cxx::tree::list_stream< wchar_t >&,
              const space&);
}

#include <xsd/cxx/post.hxx>

// Begin epilogue.
//
//
// End epilogue.

#endif // XML_HXX