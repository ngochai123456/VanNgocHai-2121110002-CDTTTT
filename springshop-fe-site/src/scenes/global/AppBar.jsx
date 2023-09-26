import React from "react";
import { Link } from "react-router-dom";
import { useSelector } from 'react-redux'
import currency from "currency.js";

export default function AppBar() {
  var cartItems = useSelector((state)=> state.cart.items)
  const totaItems = cartItems.reduce((total, item)=> {
    return total + item.count;
  }, 0);
  const total = cartItems.reduce((totalPrice, item) => {
    console.log(item)
    return totalPrice + item.count * item.attributes.price;
  }, 0);
  return (
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="topNav">
        <div class="container">
          <div class="alignR">
            <div class="pull-left socialNw">
              <a href="#st"><span class="icon-twitter"></span></a>
              <a href="#st"><span class="icon-facebook"></span></a>
              <a href="#st"><span class="icon-youtube"></span></a>
              <a href="#st"><span class="icon-tumblr"></span></a>
            </div>
            <a href="index.html"> <span class="icon-home"></span> Home</a>
            <a href="#st"><span class="icon-user"></span> My Account</a>
            <Link to='/register'><span class="icon-edit"></span> Register </Link>
            <Link to='/login'><span class="icon-signin"></span> Login </Link>
            <a href="contact.html"><span class="icon-envelope"></span> Contact us</a>
            <Link to='/cart'><span class="icon-shopping-cart"></span> {totaItems} Item(s) - <span class="badge badge-warning"> [{currency(total, { symbol: 'đ', separator: '.', decimal: ','}).format()}]</span></Link>
          </div>
        </div>
      </div>
    </div>
  )
}