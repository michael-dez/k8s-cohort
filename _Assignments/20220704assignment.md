## Problem 1: Provide Use Cases for using Python's data types
- **`string`** Storing the name of a user
- **`int`** Storing the age of a user
- **`list`** Because lists are mutable use them to store a collection that may be frequently changed, e.g. a list of currently online users.
- **`tuple`** Because tuples are immutable use them to store a collection that will be infrequently changed, like a user's archived login history.
- **`range`** A range is an immutable sequence. You might pair it with a collection to define iteration, e.g. define a range to iterate through a user's archived login history in intervals of 1 day for the past 7 days.
- **`dict`** A dict or dictionary is a key value store. Use it to define common attributes of a user like `lastLoginTime`, `accountCreateDate`, and `failedLogins`
- **`set`** A set is an unordered collection of unique items. One could think of it as a dictionary without values. You could use it to store used account names to quickly check if an account name is available.
- **`bool`** stores True or False. Use to store a boolean variable, like `isAuthorized`
## Problem 2: Write a program to print even numbers using a for loop.
**NOTE**: Combined with Problem 3
## Problem 3: Write a program to print odd numbers using a while loop.
```python
#! usr/bin/python3

"""Returns the even numbers of a given range using a for loop."""


def getEvens(intRange):
    if type(intRange) is not range:
        raise TypeError("intRange not of type range")
    out = list()

    for x in intRange:
        if x % 2 == 0:
            out.append(x)

    return out


"""Returns the odd numbers of a given range using a while loop."""


def getOdds(intRange):
    if type(intRange) is not range:
        raise TypeError("intRange not of type range")
    out = list()
    iRange = iter(intRange)

    while (x := next(iRange, None)) is not None:
        if x % 2 != 0:
            out.append(x)

    return out


def main():
    testRange = range(1, 20)
    # test of getEvens method
    result1 = getEvens(testRange)
    print(result1)

    # test of getEvens method
    result2 = getOdds(testRange)
    print(result2)


if __name__ == "__main__":
    main()
```
