function longTimeWork(workFine = true, errorMessage = "test") {
    return new Promise( (resolve, reject) => {
        setTimeout( () => {
            (workFine) ? resolve(200) : reject(errorMessage);
        }, 3000);
    })
}

function usingLongTimeWork() {
    longTimeWork(true, "test3434")  // try true/false
    .then(function (e) {
        console.log(e);
    })
    .catch(function (e) {
        console.log(e);
    })
    console.log("processing.....")
}

usingLongTimeWork();
