import pytest

from lib import Thing


@pytest.fixture
def thing():
    return Thing()


def test_isthing(thing):
    assert thing.isthing()
