import React from 'react'
import RandomQuote from './RandomQuote'
import RandomPhoto from './RandomPhoto'
const Home = () => {
  const handleClick = () => {
    window.location.reload(false);
  }
  return ( 
    <React.Fragment>
      <h1>Have a Chalamet Day!</h1>
      <p><h4>Here's a random Timothee Chalamet quote and picture to make your day nicer.</h4></p>
      <div><button onClick={handleClick}>Get Another!</button></div>
      <RandomQuote />
      <RandomPhoto />
    </React.Fragment>
    )
}
export default Home;