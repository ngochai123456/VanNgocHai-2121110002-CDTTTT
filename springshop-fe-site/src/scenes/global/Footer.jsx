import React from 'react'
import FooterBox from './FooterBox'
export default function Footer() {
    return (
<footer className="footer">
  <div className="row-fluid">
    <div className="span2">
      <h5>Your Account</h5>
      <a href="#st">YOUR ACCOUNT</a><br />
      <a href="#st">PERSONAL INFORMATION</a><br />
      <a href="#st">ADDRESSES</a><br />
      <a href="#st">DISCOUNT</a><br />
      <a href="#st">ORDER HISTORY</a><br />
    </div>
    <div className="span2">
      <h5>Iinformation</h5>
      <a href="contact.html">CONTACT</a><br />
      <a href="#st">SITEMAP</a><br />
      <a href="#st">LEGAL NOTICE</a><br />
      <a href="#st">TERMS AND CONDITIONS</a><br />
      <a href="#st">ABOUT US</a><br />
    </div>
    <div className="span2">
      <h5>Our Offer</h5>
      <a href="#st">NEW PRODUCTS</a> <br />
      <a href="#st">TOP SELLERS</a><br />
      <a href="#st">SPECIALS</a><br />
      <a href="#st">MANUFACTURERS</a><br />
      <a href="#st">SUPPLIERS</a> <br />
    </div>
    <div className="span6">
      <h5>The standard chunk of Lorem</h5>
      The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for
      those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et 
      Malorum" by Cicero are also reproduced in their exact original form, 
      accompanied by English versions from the 1914 translation by H. Rackham.
    </div>
  </div>
</footer>

    )
}