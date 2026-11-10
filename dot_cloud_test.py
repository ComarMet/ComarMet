"""Small, dependency-free GitHub publishing smoke test.

Run with Python 3: python3 dot_cloud_test.py
"""


def add(left: int, right: int) -> int:
    return left + right


def main() -> None:
    assert add(2, 3) == 5
    assert add(-2, 2) == 0
    assert add(0, 0) == 0
    print("PASS: all 3 smoke tests passed")


if __name__ == "__main__":
    main()
