import React, { Component } from 'react'
import Gallery from 'react-photo-gallery'

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
      .then(data => { this.setState({ makers: data })})
  }

  render() {
    let photos = []
    if (this.state.makers.length > 0) {
      photos = this.state.makers.map( maker => {
        return (
          {
            src: `${maker.profile_pic.url}`,
            width: 1,
            height: 1,
            className: "gallery-image"
          }
        )
      })
    }
    return (
	     <div id="index-container">
          <img id="makersLinking" src="https://s3.amazonaws.com/makerlink-production/makersLinking.png" alt="makersLinking" />
          <div id="makerlink-title">MakerLink</div>
          <div id="photo-gallery">
            <Gallery photos={photos} />
          </div>
       </div>
    )
  }
}

export default IndexPageContainer
