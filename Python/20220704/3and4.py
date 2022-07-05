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
