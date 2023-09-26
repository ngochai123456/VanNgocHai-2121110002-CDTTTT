import React, { useEffect, useState } from "react";
import ProductBox from "../../components/ProductBox";

import Loading from "../../components/Loading";
import { useParams } from "react-router-dom";

import MainCarouser from "./MainCarouser";
import { productApi } from './../../API/productApi';

export default function Home() {
    var [products, setProducts] = useState({});
    var [loading, setLoading] = useState(true);
    var myView1 =
        loading === true ? <Loading /> : <ProductBox products={products} />;

    // var { pageNum } = useParams();
    var params = {
        populate: '*'
    }

    useEffect(() => {
        const fetchData = async () => {
            var response = await productApi.getAll(params);
            // console.log(response)
            setProducts(response.data.data);
            setLoading(false);
        };
        fetchData();
    }, []);
    return (
        <div>
            <MainCarouser />
            {myView1}
        </div>
    );
}