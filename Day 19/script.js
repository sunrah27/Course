let money = 20;

function compound(){
    let year1 = money + (money * 0.02);
    let year2 = year1 * 1.02;
    let year3 = year2 * 1.02;

    console.log('year 1', year1);
    console.log('year 2', year2);
    console.log('year 3', year3);
    return [year3, year2, year1];
};

compound();
let year3 = compound();
console.log(year3);

//calculate the area of a rectangle
function calculateRectangleArea(length, width) {
    const area = length * width;
    console.log("Area of the rectangle: " + area);
}
  
//calculate the perimeter of a rectangle
function calculateRectanglePerimeter(length, width) {
const perimeter = 2 * (length + width);
console.log("Perimeter of the rectangle: " + perimeter);
}
  
//calculate area and perimeter
function calculateAreaAndPerimeter(length, width) {
calculateRectangleArea(length, width);
calculateRectanglePerimeter(length, width);
}

calculateAreaAndPerimeter(4, 6);