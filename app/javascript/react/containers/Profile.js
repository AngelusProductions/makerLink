import React, { Component } from 'react'

class Profile extends Component {
  constructor(props) {
    super(props)
    this.state = {
      maker: {}
    }
  }

  componentDidMount() {
    fetch(`/api/v1/makers/${this.props.match.params.id}`)
      .then(response => response.json())
      .then(data => { this.setState({ maker: data })})
  }

  render() {
    let pic
    if (Object.keys(this.state.maker).length > 0) {
      pic = <img id="profile-pic" src={this.state.maker.profile_pic.url} alt="profile-pic"/>
    }
    return (
      <div id="profile-page-wrapper">
        <div id="profile-pic-wrapper">
          {pic}
        </div>
      </div>
    )
  }
}

export default Profile
