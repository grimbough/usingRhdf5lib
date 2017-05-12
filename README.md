This is a crude example package to test linking against Rhdf5lib.

It currently contains a single R function `create_dataset()` which will try to create the file *h5tutr_dset.h5* that contains an empty 6 x 2 array.  You can specify the directory this should be created in using the `outputDir` argument e.g.

```
create_dataset(outputDir = "/tmp/")
```

It uses the `.C` interface to run a slightly modified version of the first hdf5 C++ tutorial available at https://support.hdfgroup.org/HDF5/examples/intro.html

## TODO

Currently the path to the hdf5 libraries is hardcoded in src/Makevars to a location on my machine.  I presume for now you'll need to edit this yourself in order to get this test package to install.  I'll update this shortly to allow getting it dynamically.
