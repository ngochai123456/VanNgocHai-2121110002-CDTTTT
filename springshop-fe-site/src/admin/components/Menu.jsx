import React from 'react'
import { Link } from 'react-router-dom'

export default function Menu() {
  return (
<aside className="main-sidebar sidebar-dark-primary elevation-4">
  {/* Brand Logo */}
  <a href="../../index3.html" className="brand-link">
    <img src="/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" className="brand-image img-circle elevation-3" style={{opacity: '.8'}} />
    <span className="brand-text font-weight-light">AdminLTE 3</span>
  </a>
  {/* Sidebar */}
  <div className="sidebar os-host os-theme-light os-host-resize-disabled os-host-scrollbar-horizontal-hidden os-host-transition os-host-scrollbar-vertical-hidden"><div className="os-resize-observer-host observed"><div className="os-resize-observer" style={{left: 0, right: 'auto'}} /></div><div className="os-size-auto-observer observed" style={{height: 'calc(100% + 1px)', float: 'left'}}><div className="os-resize-observer" /></div><div className="os-content-glue" style={{margin: '0px -8px', width: 249, height: 502}} /><div className="os-padding"><div className="os-viewport os-viewport-native-scrollbars-invisible os-viewport-native-scrollbars-overlaid" style={{}}><div className="os-content" style={{padding: '0px 8px', height: '100%', width: '100%'}}>
          {/* Sidebar user (optional) */}
          {/* SidebarSearch Form */}
          <div className="form-inline">
            <div className="sidebar-search-results"><div className="list-group"><a href="#st" className="list-group-item"><div className="search-title"><strong className="text-light" />N<strong className="text-light" />o<strong className="text-light" /> <strong className="text-light" />e<strong className="text-light" />l<strong className="text-light" />e<strong className="text-light" />m<strong className="text-light" />e<strong className="text-light" />n<strong className="text-light" />t<strong className="text-light" /> <strong className="text-light" />f<strong className="text-light" />o<strong className="text-light" />u<strong className="text-light" />n<strong className="text-light" />d<strong className="text-light" />!<strong className="text-light" /></div><div className="search-path" /></a></div></div>
          </div>
          {/* Sidebar Menu */}
          <nav className="mt-2">
            <ul className="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
              {/* Add icons to the links using the .nav-icon class
         with font-awesome or any other icon font library */}
              <li className="nav-item menu-is-opening menu-open">
                <a href="#st" className="nav-link">
                  <i className="nav-icon fas fa-table" />
                  <p>
                    Quản lý
                    <i className="fas fa-angle-left right" />
                  </p>
                </a>
                <ul className="nav nav-treeview" style={{display: 'block'}}>
                  <li className="nav-item">
                    <Link to = '/admin/product'className="nav-link">
                      <i className="far fa-circle nav-icon" />
                      <p>Products</p>
                    </Link>
                    
                  </li>
                 
                </ul>
              </li>
            </ul>
          </nav>
          {/* /.sidebar-menu */}
        </div></div></div><div className="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden"><div className="os-scrollbar-track"><div className="os-scrollbar-handle" style={{width: '100%', transform: 'translate(0px, 0px)'}} /></div></div><div className="os-scrollbar os-scrollbar-vertical os-scrollbar-unusable os-scrollbar-auto-hidden"><div className="os-scrollbar-track"><div className="os-scrollbar-handle" style={{height: '100%', transform: 'translate(0px, 0px)'}} /></div></div><div className="os-scrollbar-corner" /></div>
  {/* /.sidebar */}
</aside>


  )
}
