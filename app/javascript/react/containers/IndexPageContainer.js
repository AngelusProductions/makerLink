import React, { Component } from 'react'

class IndexPageContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      makers: []
    }
  }

  componentDidMount () {
    fetch(`/api/v1/makers`)
      .then(response => response.json())
      .then(body => { this.setState({ makers: body })})
  }

  render() {
    let pic = ""
    if (this.state.makers.length > 0) {
      const randomNumber = Math.floor(Math.random() * 100)
      pic = <img src={this.state.makers[randomNumber].profile_pic.url} alt="profilePic" className="profile-pic"/>
    }
    return (
	     <div>
\          {pic}
       </div>
    )
  }
}

export default IndexPageContainer
