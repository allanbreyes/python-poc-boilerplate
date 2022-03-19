import pytest

from lib import *


@pytest.fixture
def thing():
    return Thing()


def test_isthing(thing):
    assert thing.isthing()
