import React, { Component } from 'react'

class IndexPageContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      makers: [],
      makerspaces: []
    }
  }

  componentDidMount() {
    fetch('/api/v1/makers')
    .then(response => response.json())
    .then(body => { this.setState({ makers: body.makers, makerspaces: body.makerspaces })})
  }

  render() {
    return (
      <div id="index-container">
        <h1>Hello World</h1>
      </div>
    )
  }
}

export default IndexPageContainer
