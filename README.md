# AMBER-Apptainer-Recipes

## Building torchani-amber
```
module laod python cuda/12.9 protobuf abseil \
    cudnn cudss cusparselt sleef xnnpack
virtualenv --no-download --clear ani-amber
. ani-amber/bin/activate
pip install --no-index torch==2.10.0

git config --global url."https://github.com/".insteadOf "git@github.com:"
git clone --recurse-submodules  https://github.com/roitberg-group/torchani-amber.git
cd torchani-amber
# edit run-cmake: b)  torch_cuda_archs="9.0"
./run-cmake
```
