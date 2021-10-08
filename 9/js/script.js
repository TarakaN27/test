var matrixExample = [
    [ 1, 2, 3, 4 ],
	[ 4, 5, 6, 5 ],
	[ 7, 8, 9, 7 ],
	[ 7, 8, 9, 7 ]
];
// Первый вариант
function sumUpDiagonals_one(matrix) {
	var principal = 0;
	var secondary = 0;
	for (i = 0; i < matrix.length; i++) 
    {
        for (j = 0; j < matrix[i].length; j++) 
        {
            if (i == j)
                principal += matrix[i][j];
            if ((i + j) == (matrix.length - 1))
                secondary += matrix[i][j];
        }
    }
	return principal+" "+secondary;
}
//Второй вариант
function sumUpDiagonals_two(matrix) {
	var sum_one = matrix.reduce((t,c, idx) => t+ (c[idx] || 0) , 0);
	var sum_two = matrix.reverse().reduce((t,c, idx) => t+ (c[idx] || 0) , 0);
	return sum_one+" "+sum_two;
}
console.log(sumUpDiagonals_one(matrixExample));
console.log(sumUpDiagonals_two(matrixExample));




