import React, { useState } from 'react'
import { ToastContainer, toast } from 'react-toastify'
import CategorySelect from './../../components/CategorySelect';
import { validateProduct } from './../../helpers/validate';
import { productApi } from './../../API/productApi';
import 'react-toastify/dist/ReactToastify.css';


export default function AdminProductEdit() {
  const [data, setData] = useState({
    "productName": "",
    "description": "",
    "category": "",
    "price": "",
    "Image": ["1", "2"],

  });
  
    const handleSubmit = (e) => {
      e.preventDefault();
      var err = (validateProduct(data))
      if (err == '') {
        const response = async (data) => {
          var senData = {
            "data": data
          }
          try {
            document.getElementById("submit").innerText = 'Update Product...'
            const response = await productApi.add(senData);
            console.log(response)
            if (response.status == '200') toast.success('success');
            document.getElementById('editProduct').reset();
            document.getElementById("submit").innerText='Submit'
            setData({
              productName: '',
              description: '',
              category: '',
              price: '',
              Image: [],
            })
          }
          catch (error) {
            toast.error('Error' + error)
          }
        }
        AdminProductEdit(data);
      }
      else {
        toast.error(err);
        return false;
      }
    }
    const handleChange = (event) => {
      setData({
        ...data,
        [event.target.name]: event.target.value
      })
      console.log('data'.data)
  }
  return (
    <div>
      <form id='editProduct' onSubmit={handleChange}>
        <div>
          <div className="form-group row">
            <label htmlFor="productName" className="col-4 col-form-label">Product Name</label>
            <div className="col-8">
              <input id="productName" name="productName" placeholder="productName" type="text" className="form-control" required="required" onChange={handleChange} />
            </div>
          </div>
          <div className="form-group row">
            <label htmlFor="description" className="col-4 col-form-label">description</label>
            <div className="col-8">
              <textarea id="description" name="description" onChange={handleChange} cols={40} rows={5} className="form-control" defaultValue={""} />
            </div>
          </div>
          <div className="form-group row">
            <label htmlFor="price" className="col-4 col-form-label">price</label>
            <div className="col-8">
              <input id="price" name="price" type="number" onChange={handleChange} className="form-control" required="required" />
            </div>
          </div>
          <div className="form-group row">
            <label htmlFor="select" className="col-4 col-form-label">category</label>
            <div className="col-8">
              <CategorySelect handleChange={handleChange} />
            </div>
          </div>
          <div className="form-group row">
            <div className="offset-4 col-8">
              <button name="submit" type="submit" className="btn btn-primary">Submit</button>
            </div>
          </div>
        </div>
      </ form>

      <ToastContainer
        position="top-right"
        autoClose={5000}
        hideProgressBar={false}
        closeOnClick
        rtl={false}
        pauseOnFocusLoss
        draggable
        pauseOnHover
        theme="colored"
      />
    </div>
  );
}
