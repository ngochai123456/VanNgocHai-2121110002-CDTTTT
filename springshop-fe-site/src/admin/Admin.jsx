import React from 'react'
import TopNav from './components/TopNav'
import Menu from './components/Menu'
import { Outlet } from 'react-router-dom';

export default function Admin() {
  var ss= document.createElement("Link")
  ss.rel = "stylesheet";
  ss.type = "text/css";
  ss.href = "/admin/dist/css/adminlte.min.css";
  document.head.appendChild(ss);

  return (
 <div className="wrapper">
  <TopNav />
  <Menu />
  menu
  <div className="content-wrapper">
    {/* Content Header (Page header) */}
    <section className="content-header">
      <div className="container-fluid">
        <div className="row mb-2">
          <div className="col-sm-6">
            <h1>Fixed Layout</h1>
          </div>
        </div>
      </div>
    </section>
    <section className="content">
      <div className="container-fluid">
        <div className="row">
          <div className="col-12">
            <Outlet />
          </div>
        </div>
      </div>
    </section>
  </div>
</div>

  )
}
