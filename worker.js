
const handleMessage = event=>{
    if(!(event instanceof MessageEvent)){
        throw new Error(`event is not of type MessageEvent`)
    }
    console.log({event})
}

onmessage = handleMessage