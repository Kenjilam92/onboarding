let headline = "Hey Parents";

// console.log(getHashTag(headline));


const getHashTag = x => {
    let result = [];
    let words = x.split(" ");
    let top1 = top2 = top3 = "";
    words.forEach(word => {
        let w = word.toLowerCase();
        if (w.length > top1.length) {
            top3 = top2;
            top2 = top1;
            top1 = w;
        }
        else if (w.length > top2.length){
            top3 = top2;
            top2 = w;
        }
        else if (w.length > top3.length) top3 = w;
    });
    if(top1.length>0) result.push("#"+top1);
    if(top2.length>0) result.push("#"+top2);
    if(top3.length>0) result.push("#"+top3);

    return result; 
}

console.log(getHashTag(headline));
