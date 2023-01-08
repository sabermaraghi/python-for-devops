import wikipedia


def wiki(name="War Goddes", length=1):
    """This is a wikipedia fetcher."""

    my_wiki = wikipedia.summary(name, length)
    return my_wiki


def search_wiki(name):
    """Search Wikipedia for names."""

    results = wikipedia.search(name)
    return results
    