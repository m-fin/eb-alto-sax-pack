"""The generators must reproduce the committed LilyPond sources."""
import pathlib
import sys
import unittest

ROOT = pathlib.Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'tools'))

import check_drift  # noqa: E402


class DriftTests(unittest.TestCase):
    def test_generators_match_committed_sources(self):
        self.assertEqual(check_drift.problems(), [])

    def test_generators_do_not_seed_from_hash(self):
        self.assertEqual(check_drift.unseeded_hash_uses(), [])


if __name__ == '__main__':
    unittest.main()
