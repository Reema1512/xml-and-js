const data=[
    { born: 1870, died: 1924 },
    { born: 1893, died: 1976 },
    { born: 1869, died: 1948 },
    { born: 1901, died: 1989 },
];

const age= data.map((person) =>({
    age :person.died - person.born
}));


console.log(age);

const filtered=age.filter((number) => number.age>75);
console.log("Age greater than 75");
console.log(filtered);

const oldest=filtered.reduce((acc,number) => {
    return (acc < number ? acc : number) 
});

console.log("Oldest");
console.log(oldest);

console.log("Using chaining")

const result=data
.map((person) => person.died-person.born)
.filter((number) => number>75)
.reduce((acc,n1) =>  acc <n1.number ? acc : n1);
console.log(result);

