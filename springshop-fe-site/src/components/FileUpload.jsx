import axios from 'axios'
import React, { useState } from 'react'

export default function FileUpload() {
    var [file, setFile] = useState(null)
    const handleChange = (e) =>{
        setFile(e.target.files[0])
        console.log('chon file', e.target.files)
    }
    const handleUpload = async (e)=>{
        console.log('send file', file)
        const data=new FormData();
        data.append('files',file)
        e.target.innerText='Uploading...'
        const response = await axios({
            method: 'POST',
            url: 'http://localhost:1337/api/upload',
            data
        })
        e.target.innerText='Upload'
        var id = response.data[0].id
        var url = response.data[0].url
        console.log('id', id)
    }

  return (
   <div className='fileUpload'>
        <input type='file' onChange={handleChange} />
        <button onClick={handleChange}>Upload</button>
   </div>
  )
}
