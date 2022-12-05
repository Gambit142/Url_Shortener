import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "maximumAliasOutput", 'aliasField' ];

  static classes = [ "overLimit" ];

  static values = {
    aliasCount: Number
  }

  connect() {
    this.change()
  }

  change() {
    let length = this.aliasCountValue;
    let inputtedCharacter = this.aliasFieldTarget.value.length;
    this.aliasFieldTarget.setAttribute('maxlength', length);
    this.maximumAliasOutputTarget.textContent = inputtedCharacter
    if (inputtedCharacter === length) {
      this.maximumAliasOutputTarget.textContent = "Maximum character reached"
      this.maximumAliasOutputTarget.classList.add(this.overLimitClass)
    } else {
      this.maximumAliasOutputTarget.classList.remove(this.overLimitClass)
    }
  }
}