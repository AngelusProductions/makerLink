import React, { Component } from 'react'
import { withRouter } from 'react-router-dom';

import Gallery from 'react-photo-gallery'
import Profile from './Profile'

class LandingPage extends Component {
  constructor(props) {
    super(props)
    this.state = {
      makers: []
    }
    this.onPicClick = this.onPickClick.bind(this)
  }

  componentDidMount () {
    fetch(`/api/v1/makers`)
      .then(response => response.json())
      .then(data => { this.setState({ makers: data })})
  }

  onPickClick (e) { this.props.history.push(`makers/${e.target.id}`) }

  render() {
    let photos = []
    if (this.state.makers.length > 0) {
      photos = this.state.makers.map( maker => {
        return ({
            id: `${maker.id}`,
            src: `${maker.profile_pic.url}`,
            width: 1,
            height: 1,
            className: "gallery-image"
          })
      })
    }
    return (
	     <div id="landing-page-wrapper">
          <img id="makersLinking" src="https://s3.amazonaws.com/makerlink-production/makersLinking.png" alt="makersLinking" />
          <div id="makerlink-title">MakerLink</div>
          <div id="photo-gallery"><Gallery photos={photos} onClick={this.onPicClick}/></div>
       </div>
    )
  }
}

export default withRouter(LandingPage)
