import React from 'react'
import AppUrl from './../API/AppUrl';
import { Link } from "react-router-dom";
import currency from 'currency.js';
import { useDispatch } from 'react-redux';
import { addToCart } from '../state/cartSlice';

export default function Product(props) {
  const dispath=useDispatch()
  var product = props.product
  console.log(product)
  return (
    <div className="thumbnail" style={{ height: '340px' }}>

      {/* <a className="zoomTool" href="product_details.html" title="add to cart" style={{ display: 'none' }}><span className="icon-search" /> QUICK VIEW</a> */}

      <Link to={'/product/' + product.id}><img src={AppUrl.ImageURL + product.attributes.image.data[0].attributes.url} alt='tam' /></Link> 
      <div className="caption cntr">
        <Link to={'/product/' + product.id}><p>{product.attributes.productName}</p></Link>
        <p><strong>{product.attributes.price}</strong></p>
        <h4> <Link className="shopBtn" to='#st' onClick={() => dispath(addToCart({ item: { ...product, count: 1 } }))}> Add to cart </Link></h4>
        <div className="actionList">
          <a className="pull-left" href="#st">Add to Wish List </a>
          <a className="pull-left" href="#st"> Add to Compare </a>
        </div>
        <br className="clr" />
      </div>
    </div>

  )

  }
