# isis-feedstock

Experimental conda feedstock for building ISIS (Integrated Software for Imagers and Spectrometers).

## About ISIS

ISIS is a software package developed by the USGS Astrogeology Science Center to process planetary images. This feedstock provides an experimental conda recipe for building and distributing ISIS through the conda package manager.

## Building the Package

To build this package locally:

```bash
# Install conda-build if not already installed
conda install conda-build

# Build the package
conda build recipe/

# Install the built package locally
conda install --use-local isis
```

## Package Structure

- `recipe/meta.yaml` - Package metadata and dependencies
- `recipe/build.sh` - Build script for Unix-based systems
- `recipe/conda_build_config.yaml` - Build configuration variants

## Requirements

This feedstock requires:
- conda-build
- A C/C++ compiler toolchain
- CMake >= 3.10

## Status

⚠️ **Experimental**: This feedstock is in early development and may not produce a working ISIS installation. It is intended for testing and development purposes.

## Resources

- [ISIS Homepage](https://isis.astrogeology.usgs.gov/)
- [ISIS GitHub Repository](https://github.com/USGS-Astrogeology/ISIS3)
- [Conda Forge Documentation](https://conda-forge.org/docs/)

## Contributing

Contributions to improve this feedstock are welcome. Please submit issues or pull requests through GitHub.

## License

See LICENSE file for details.
