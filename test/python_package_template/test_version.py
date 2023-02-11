def test_version_pep440():
    from pkg_resources import parse_version
    from pkg_resources.extern.packaging.version import Version
    from python_package_template import __version__

    assert isinstance(parse_version(__version__), Version)
