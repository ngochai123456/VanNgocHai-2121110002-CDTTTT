import React from 'react'
import AppBar from "./scenes/global/AppBar";
import Banner from "./scenes/global/Banner";
import NavBar from "./scenes/global/NavBar";
import Footer from "./scenes/global/Footer";
import Copyright from "./scenes/global/Copyright";
import { Outlet } from 'react-router-dom'
import { Provider } from 'react-redux';
import store from './state/store'
import SelectBox from './components/SelectBox';
import CategorySelect from './components/CategorySelect';
import FileUpload from './components/FileUpload';
// import Loading from './components/Loading';
export default function App() {
  return (
    <div>
      <Provider store={store}>
        <AppBar />
        <div className='container'>
          <Banner />
          <NavBar />
          <Outlet />
          <Footer />
          <FileUpload />
          
        </div>
        {/* <Loading /> */}
        <Copyright />
      </Provider>
    </div>
  )
}
