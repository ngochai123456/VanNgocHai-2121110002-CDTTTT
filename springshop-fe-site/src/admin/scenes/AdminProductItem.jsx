import React from 'react'
import AppUrl from '../../API/AppUrl'
import { Link } from 'react-router-dom';

export default function AdminProductItem(props) {
  var stt=props.stt;
  var product = props.product
  var handleDelete = props.handleDelete
  var handlePublish = props.handlePublish
  var myView = product.attributes.publishedAt == null ? (<input type="range" min="0" max="1" value="0" style={{width: '40px'}} onClick={handlePublish} name={product.id} />):(<input type="range" min="0" max="1" value="1" style={{width: '40px'}} onClick={handlePublish} name={product.id} />)
  return (
    <tr className="odd">
      
    <td className="dtr-control sorting_1" tabIndex={0}>{stt}</td>

    <td>{product.id}</td>

    <td>{product.attributes.productName}</td>

    <td><img style={{width:'80px', height: '80px'}} src={AppUrl.ImageURL+product.attributes.image.data[0].attributes.url} alt="hinh san pham" /></td>

    <td>{product.attributes.price}</td>

    <td>{myView}</td>

    <td style={{ fontSize: "1.2em" }}>
        <i class="icon-eye-open"></i> <Link to={'/admin/product/edit/'+product.id}> <i class="icon-edit"></i> </Link> <i name={product.id} class="fas fa-trash" onClick={handleDelete}></i>
      </td>

</tr>
  )
}
