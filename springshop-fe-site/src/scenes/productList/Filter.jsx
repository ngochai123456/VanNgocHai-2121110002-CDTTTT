import React from 'react'

export default function Filter(props) {
    var handleFilterByName = props.handleFilterByName
    console.log(handleFilterByName)
    var handleFilterByMaxPrice = props.handleFilterByMaxPrice
  return (
    <div className = "well well-small">
        <input type = "text" placeholder="Filter" onChange = {handleFilterByName}/> 
        Max<input type = "number" placeholder="Filter" onChange = {handleFilterByMaxPrice}/> 
     </div>
  )
}