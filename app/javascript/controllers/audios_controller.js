import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="audios"
export default class extends Controller {
  connect() {
    console.log('hehe');

  }
  playSound() {
    const audio = new Audio("assets/sounds/clic2.wav")
    audio.play()
  }
}
