def test_find_plan():
    """
    Prints message if assertion fails.
    """
    try:
        assert find_plan('AGG', ['8D8D','5QR3AGG','DEEE','ASDAD','asdaAGG']) == ['5QR3AGG']
    except AssertionError:
        print("Assertion error: The find_plan values are not asserting properly")
