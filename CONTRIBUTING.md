# Contributing to isis-feedstock

Thank you for your interest in contributing to the ISIS conda feedstock!

## How to Contribute

### Reporting Issues

If you encounter problems with the feedstock, please open an issue on GitHub with:
- A clear description of the problem
- Steps to reproduce the issue
- Your operating system and conda version
- Any relevant error messages or logs

### Improving the Recipe

To improve the conda recipe:

1. Fork the repository
2. Create a new branch for your changes
3. Make your modifications to the recipe files
4. Test your changes locally:
   ```bash
   conda build recipe/
   ```
5. Submit a pull request with a clear description of your changes

### Testing Changes Locally

Before submitting changes, test them locally:

```bash
# Install conda-build if not already installed
conda install conda-build

# Build the package
conda build recipe/

# Install the built package to test it
conda install --use-local isis

# Test basic functionality
# (Add specific ISIS commands to test here)
```

## Recipe Structure

- `recipe/meta.yaml` - Package metadata, dependencies, and build configuration
- `recipe/build.sh` - Build script for Unix-based systems (Linux, macOS)
- `recipe/conda_build_config.yaml` - Build configuration for multiple variants

## Coding Standards

- Follow conda-forge conventions for recipe structure
- Use Jinja2 templating for version variables
- Ensure all dependencies are available in conda-forge or defaults channels
- Test on multiple platforms when possible

## Questions?

If you have questions about contributing, feel free to open an issue for discussion.
