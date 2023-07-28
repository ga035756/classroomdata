function happy(data, timeCount) {
    return new Promise(function (resolve, reject) {
        setTimeout(function () {
            resolve(data);
        }, timeCount)
    })
}

function sad(data, timeCount) {
    return new Promise(function (resolve, reject) {
        setTimeout(function () {
            resolve(data);
        }, timeCount)
    })
}


async function living() {
    var d = new Date();
    console.log(d.getMinutes() + ":" + d.getSeconds())
    var promise1 = happy(200, 2000);
    var promise2 = sad(-100, 3000);
    console.log("processing....")
    var result1 = await promise1;
    var result2 = await promise2;
    var total = result1 + result2;
    // console.log(d.getMinutes() + ":" + d.getSeconds())
    console.log(Date())
    console.log("total:", total);
}

living();

