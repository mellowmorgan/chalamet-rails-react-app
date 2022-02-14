import React, { useState, useEffect } from 'react'
import axios from 'axios'

const RandomQuote = () => {
  const [randomQuote, setRandomQuote] = useState([])
  useEffect(()=>{
    axios.get('/api/v1/quotes/random')
    .then(resp=>setRandomQuote(resp.data.content)
    )
    .catch(resp => console.log(resp))
  },[]);
  return ( 
    <React.Fragment>
      <p style={{fontSize:"1.25rem",width:"600px"}}>{ randomQuote }</p>
    </React.Fragment>
    )
}
export default RandomQuote;