import React, { useState, useEffect } from 'react'
import axios from 'axios'

const RandomPhoto = () => {
  const [randomPhoto, setRandomPhoto] = useState([])
  useEffect(()=>{
    axios.get('/api/v1/photos/random')
    .then(resp=>setRandomPhoto(resp.data.file_path)
    )
    .catch(resp => console.log(resp))
  }, {cache: "no-cache"});
  return ( 
    <React.Fragment>
      <img style={{width:"600px"}} alt="a random photo of Chalamet" src={ randomPhoto }/>
    </React.Fragment>
    )
}
export default RandomPhoto;