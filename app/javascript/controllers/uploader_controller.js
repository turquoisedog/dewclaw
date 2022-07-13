import { Controller } from "@hotwired/stimulus"
import * as FilePond from "filepond"
import FilePondPluginFileValidateType from 'filepond-plugin-file-validate-type';

// Connects to data-controller="uploader"
export default class extends Controller {
  connect() {
    FilePond.registerPlugin(FilePondPluginFileValidateType)

    FilePond.create(this.element, {
      name: 'filepond',
    })
  }
}
