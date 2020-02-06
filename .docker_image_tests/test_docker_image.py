import sys
import unittest


class TestPythonConstraints(unittest.TestCase):
    def test_import_neomodel(self):
        import neomodel
        print("Package 'neomodel' could be loaded. Good.")

    def test_is_python3(self):
        python_version = sys.version_info
        self.assertGreater(python_version, (3,))
        print("Current Python version {python_version} is Python3. Good.".format(
            python_version=python_version))


if __name__ == '__main__':
    unittest.main()
