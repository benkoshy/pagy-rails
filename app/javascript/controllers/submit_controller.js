import { Controller } from "@hotwired/stimulus";

import debounce from 'lodash.debounce'; // yarn add lodash.debounce
import throttle from 'lodash.throttle'; // yarn add lodash.throttle

// lodash and debounce help limit the rate 
// at which requests hit your server.

export default class extends Controller {
  static targets = ["submitButton"]

  connect(){    
    console.log("hello world - this is from the stimulus js submit controller")
  	this.submit = debounce(this.submit, 250).bind(this)
    this.submit = throttle(this.submit, 250).bind(this)
  }
  
  submit(event) {
    this.element.requestSubmit();
  };

  reset(event){    
    this.submitButtonTarget.disabled = false;
  }
}


