# Largest Prime Factor
The third Project Euler challenge consists of finding the largest prime factor for the number 600851475143. The following will discuss my thought process and some of the challenges I faced whilst tackling this problem 

## How To Find The Largest Prime Factor
* First, take the number you wish to find the largest prime factor of and for all the integers between 1 and that number, test if they are a factor. Divide the number we wish to find the largest prime factor for wish respect to each of these numbers individually and if the remainder is zero then we have a factor (not a prime factor yet). Push all the factors into a seperate array.
* Now repeat this process for all the factors which we have found. Find their respective factors, and push to a new array. If the length of this array is 2 then we have found a prime number (by definition of a prime having only 2 factors, itself and 1). If the factor is a prime factor then push to another new array to store the prime factors.
* With an array of prime factors, the largest prime factor is easily determined.

## Challenges Faced
* The only challenged faced was that with the computational time for very large numbers, such as the one in question. To progress I must either find a new way to calculate prime factors more efficiently or re-work my current code such that the computational time is drastically reduced.