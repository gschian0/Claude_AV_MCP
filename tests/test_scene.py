import pytest

from av_mcp.core.scene import Scene


def test_update_returns_only_changes():
    s = Scene()
    assert s.update(energy=0.5) == {}  # already 0.5
    assert s.update(energy=0.8, section="drop") == {"energy": 0.8, "section": "drop"}


def test_none_means_unchanged():
    s = Scene()
    assert s.update(bpm=None, key=None) == {}


def test_macros_merge():
    s = Scene()
    s.update(macros={"a": 0.1})
    assert s.update(macros={"b": 0.2}) == {"macros": {"b": 0.2}}
    assert s.macros == {"a": 0.1, "b": 0.2}


@pytest.mark.parametrize(
    "changes",
    [{"energy": 1.5}, {"bpm": 5}, {"palette": []}, {"macros": {"x": -1}}, {"nope": 1}],
)
def test_validation(changes):
    with pytest.raises(ValueError):
        Scene().update(**changes)
