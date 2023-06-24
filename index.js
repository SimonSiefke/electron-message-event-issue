const worker = new Worker('./worker.js', {
    type: 'module'
})

setInterval(() => {

    worker.postMessage({
      value: 1
      })
}, 100)