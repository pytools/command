# -*- coding: utf-8 -*-

import unittest
from .context import pytools_command


class TestSimpleCalls(unittest.TestCase):

    def test_exec_command(self):
        result = pytools_command.exec_command(['echo 1'], shell=True)

        self.assertTrue(result.success())
        self.assertFalse(result.failure())

    def test_observe_command(self):
        result = pytools_command.observe_command(['echo 1'], shell=True)

        self.assertTrue(result.success())
        self.assertFalse(result.failure())


if __name__ == '__main__':
    unittest.main()
