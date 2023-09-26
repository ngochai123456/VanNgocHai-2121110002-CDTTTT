import React, { useState, useEffect } from "react";
import CategoryMenu from "./CategoryMenu";
import ProductBox from "../../components/ProductBox";
import Loading from "../../components/Loading";


import { useParams } from "react-router-dom";

import Filter from "./Filter";
import { productApi } from "../../API/productApi";
import { categoryApi } from './../../API/categoryApi';
import Paginate from "../../components/Paginate";


export default function ProductList() {
    var { pageNum } = useParams()
    var [categories, setCategories] = useState([])
    var [products, setProducts] = useState([])
    var [loading, setLoading] = useState(true);
    var [totaPage, setTotalPage] = useState(1);
    var params = {
        populate: '*',
        'pagination[page]': pageNum ? pageNum : 1,
        'pagination[pageSize]': 12
    }

     


    var [filterKey, setFilterKey] = useState('');
    var [maxPrice, setMaxPrice] = useState(null);
    var [category, setCategory] = useState(null);


    const handleFilterByName = (e) => {
        setFilterKey(e.target.value)
    }

    const handleFilterByMaxPrice = (e) => {
        setMaxPrice(e.target.value)
    }

    const handleFilterByCategory = (e) => {
        if (e.target.innerText === 'All categories')
            setCategory(null)
        else
            setCategory(e.target.innerText)
    }

    var params = {
        populate:"*" ,

        pagination: {
            page: pageNum ? pageNum : 1,
            pageSize: 12
        },
        filters: {
            productName: {
                $contains: filterKey ? filterKey : null,
            },
            price: {
                $lt: maxPrice ? maxPrice : null,
            },
            category: {
                categoryName: {
                    $eq: category ? category : null
                }
            }
        }
    }

    var myView1 = loading === true ? <Loading /> : <CategoryMenu categories={categories} handleFilterByCategory={handleFilterByCategory} />
    var myView2 = loading === true ? <Loading /> : <ProductBox products={products} />
    // console.log('pro', products)
    useEffect(() => {
        const fetchData = async () => {

            var response1 = await categoryApi.getAll();
            var response2 = await productApi.getAll(params);

            console.log("rs2", response2)
            setCategories(response1.data.data)
            setProducts(response2.data.data)
            setTotalPage(response2.data.meta.pagination.pageCount)
            setLoading(false);
        }
        fetchData()
    }, [pageNum, filterKey, maxPrice, category])

    return (
        <div className="row">
            <div id="sidebar" className="span3">
                {myView1}
            </div>
            <div className="span9">
                <Filter handleFilterByName={handleFilterByName} handleFilterByMaxPrice={handleFilterByMaxPrice} />
                {myView2}
                <Paginate totaPage={totaPage} currentPage={pageNum ? pageNum : 1} basePath='http://localhost:3000/product/page/' />
            </div>
        </div>
    );
}