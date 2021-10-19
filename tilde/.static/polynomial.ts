
const sumArray = (array: number[]) =>
array.reduce((partialSum, nextValue) => partialSum + nextValue, 0);

const createArrayFromFunction = <T>(length: number, fn: (i: number) => T) =>
Array.from(new Array(length), (_, i) => fn(i));

class Polynomial {
private static DEFAULT_VARIABLE = 'x';

static create = (coefficients: number[]) => new Polynomial(coefficients);

static multiply = (polyA: Polynomial, polyB: Polynomial) =>
  Polynomial.create(createArrayFromFunction(
    polyA.getDegree() + polyB.getDegree(),
    k => sumArray(createArrayFromFunction(
      k + 1, // number of weak compositions of k with 2 parts
      i => polyA.getCoefficient(i) * polyB.getCoefficient(k - i)
    ))
))

private constructor(private _coefficients: number[]) {}

getDegree = () => this._coefficients.length + 1;

getCoefficient = (k: number) => this._coefficients[k] || 0;
}

const test = () => {
const polyA = Polynomial.create([2, 3, 5]);
const polyB = Polynomial.create([0, 1]);

const product = Polynomial.multiply(polyA, polyB);

console.log(product);
};
