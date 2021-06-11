import React, { useState, useEffect } from 'react';
import axios from 'axios'
import Header from './Header'
import styled from 'styled-components'

const Wrapper = styled.div`
    margin-left: auto;
    margin-right: auto;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
`
const Column = styled.div`
    background: #fff;
    height: 100vh;
    overflow: scroll;
`
const Main = styled.div``

const Restaurant = (props) => {
    const [ restaurant, setRestaurant] = useState({})
    const [ review, setReview] = useState({})
    const [loaded, setLoaded] = useState(false)

    useEffect(()=>{
        const slug = props.match.params.slug
        const url = `/api/v1/restaurants/${slug}`
        //api/v1/restaurant/name-restaurant
        // restaurants/name-restaurant

        axios.get(url)
        .then(resp => {
            setRestaurant(resp.data)
            setLoaded(true) 
        })
        .catch(resp => console.log(resp))
        
    }, [])

    return (
        <div className="wrapper">
            <div className="column">
                <div className="main">
                    { 
                        loaded && 
                        <Header 
                            attributes= {restaurant.data.attributes}
                            reviews= {restaurant.included}
                        />
                    }
                    <div className="reviews"></div>
                </div>
            </div>
            <div className="column">
                <div className="review-form">[Reviews Form goes here]</div>
            </div>
        </div>
    )
}

export default Restaurant