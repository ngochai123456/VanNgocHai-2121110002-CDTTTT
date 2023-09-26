import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import Admin from './admin/Admin';
import ProductList from './scenes/productList/ProductList';
import ProductDetail from './scenes/productDetail/ProductDetail';

import Checkout from './scenes/checkout/Checkout';
import Confirmation from './scenes/checkout/Confirmation';
import {RouterProvider, createBrowserRouter} from 'react-router-dom';
import CartMenu from './scenes/global/CartMenu';
import Home from './scenes/home/Home';
import Dashboard from './admin/scenes/Dashboard';
import AdminProduct from './admin/scenes/AdminProduct';
import AdminProductBox from './admin/scenes/AdminProductBox';
import AdminProductDetail from './admin/scenes/AdminProductDetail';
import AdminProductAdd from './admin/scenes/AdminProductAdd';
import AdminProductEdit from './admin/scenes/AdminProductEdit';
import Register from './Auth/Register';
import Login from './Auth/Login';


const root = ReactDOM.createRoot(document.getElementById('root'));
const router = createBrowserRouter([
  {
    path: '/',
    element: <App />,
    children: [
      {
        index: true,
        element: <Home />
      },
      {
        path: 'register',
        element: <Register />
      },
      {
        path: 'login',
        element: <Login />
      },
      {
        path: 'product',
        element: <ProductList/>
      },
      {
        path: 'product/page/:pageNum',
        element: <ProductList />  
      },
      {
        path: 'product/:id',
        element: <ProductDetail />
      },
      {
        path:'checkout',
        element: <Checkout />
      },
      {
        path: 'checkout/success',
        element: <Confirmation />
      },
      {
        path: 'cart',
        element: <CartMenu />
      },

    ]
  },
  {
    path: '/admin',
    element: <Admin />,
    children: [
      {
        index: true,
        element: <Dashboard />
      },
      {
        path: '/admin/product',
        element: <AdminProduct />,
        children: [
          {
            index: true,
            element: <AdminProductBox />
          },
          {
            path: '/admin/product/page/:pageNum',
            element: <AdminProductBox />
          },
          {
            path: '/admin/product/:id',
            element: <AdminProductDetail />
          },
          {
            path: '/admin/product/add',
            element: <AdminProductAdd />
          },
          {
            path: '/admin/product/edit/:id',
            element: <AdminProductEdit />
          },
        ]
      },

    ]
  }
])
root.render(
  <React.StrictMode>

    <RouterProvider router={router}>
    </RouterProvider>
  </React.StrictMode>
);



