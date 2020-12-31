// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import {Controller} from "stimulus"

console.log("autoloaded reset_form!")

export default class extends Controller {

  reset() {
    console.log("reached! reset!")
    this.element.reset()
  }


}
