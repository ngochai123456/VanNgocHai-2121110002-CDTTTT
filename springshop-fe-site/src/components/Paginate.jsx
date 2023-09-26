import React from 'react'
import { Link } from 'react-router-dom';

export default function Paginate(props) {
    var totaPage= props.totaPage;
    var currentPage= parseInt(props.currentPage);
    var basePath= props.basePath
    var allLi=[];
    if (currentPage != 1) allLi.push(<li><Link to={basePath + 1}>First</Link></li>);
    if (currentPage > 1) allLi.push(<li><Link to={basePath +(currentPage - 1)}>Previous</Link></li>)
    for (let i =currentPage - 5; i <= currentPage - 1; i++)
      if(i >= 1) allLi.push(<li><Link to={basePath + i}>{i}</Link></li>)
    allLi.push(<li><Link style={{ color: 'red'}} to={basePath + currentPage}>{currentPage}</Link></li>)
    for (let i = 1 +currentPage; i <= 5 + currentPage; i++)
      if(i >= 1 && i <= totaPage) allLi.push(<li><Link to={basePath+ i}>{i}</Link></li>)
    if (currentPage <totaPage) allLi.push(<li><Link to={basePath + (currentPage + 1)}>Next</Link></li>);
    if (currentPage != totaPage) allLi.push(<li><Link to={basePath + totaPage}>Last</Link></li>);





  return (
    <div class="pagination pagination-centered">
  <ul>
    {allLi}
  </ul>
</div>
  )
}
