import React, { useEffect, useState } from 'react'
import { categoryApi } from '../API/categoryApi';
import SelectBox from './SelectBox';

export default function CategorySelect(props) {
    const [categories, setCategories] = useState([])
    const [loading, setLoading] = useState(true)
    const handleChange=props.handleChange
    var myView = loading === true ? <select><option>Loading categories...</option></select> :<SelectBox name='category'  data={categories} defaultValue='3'handleChange={handleChange}/>
    useEffect(()=> {
    const fetchData = async () =>{
        var response = await categoryApi.getAll();
        var temp = response.data.data;
      
        setCategories(  temp.map(category=>{
            return {
                label: category.attributes.categoryName,
                value: category.id
            }
        }))
        console.log(categories)
        setLoading(false);
        }
        fetchData()
},[])


    return (
    <div>
        <>
        {myView}
        </>
    </div>
  )
}
