function asciiToNumber(string) {
    let res = 0;
    for (let i = 0; i < string.length;) {
        const point = string.codePointAt(i);
        res += point;
        i += point > 0xFFFF ? 2 : 1;
    }
    return res;
}

console.log(asciiToNumber("Botanical Pots"));