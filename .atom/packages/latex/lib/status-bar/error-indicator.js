/** @babel */
/** @jsx etch.dom */

import _ from 'lodash'
import etch from 'etch'

export default class ErrorIndicator {
  constructor (model) {
    this.model = model

    etch.initialize(this)
    this.subscribeToEvents()
  }

  render () {
    return (
      <div className='latex-error-indicator inline-block'>
        <a>LaTeX compilation error</a>
      </div>
    )
  }

  update (model) {
    return etch.update(this)
  }

  subscribeToEvents () {
    console.debug(this)
    const clickHandler = () => this.openLogFile()
    this.element.querySelector('a').addEventListener('click', clickHandler)
  }

  openLogFile () {
    if (!this.model || !this.model.errors) { return }

    atom.workspace.open(this.model.logFilePath).then(editor => {
      const position = this.getFirstErrorPosition()
      editor.scrollToBufferPosition(position, {center: true})
    })
  }

  getFirstErrorPosition () {
    const firstError = _.find(this.model.messages, (message) => { return message.type === 'Error' })
    return firstError ? firstError.logRange[0] : [0, 0]
  }
}
