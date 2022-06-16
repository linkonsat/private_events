import React, { Component } from 'react';
import ReactDOM from "react-dom"

class SideBar extends React.Component { 
  constructor(props) {
    super(props);
}

componentDidMount() {
}
render() {
  return (
    <div class="side_panel">
      <div><a href="/">All events.</a></div>
      <div><a href="/events/created_events'">Your events</a>.</div>
      <div><a href="/events/new'">Build event.</a></div>
    </div>
  );
}
}

//ReactDOM.render(<SideBar />, document.getElementById('side_bar'));
