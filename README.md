# AMBER-Apptainer-Recipes

## Building torchani-amber
```
module load python/3.11.5 cuda/12.9 protobuf/24.4 \
    abseil/20230125.3 cudnn/9.13.1.26 cudss/0.7.1.4 \
    cusparselt/0.8.1.1 sleef/3.8 xnnpack/20250930
virtualenv --no-download --clear ani-amber
. ani-amber/bin/activate
pip install --no-index torch==2.10.0

git config --global url."https://github.com/".insteadOf "git@github.com:"
git clone --recurse-submodules  https://github.com/roitberg-group/torchani-amber.git
cd torchani-amber
patch -p0 < ../cuda_arch-sm90.patch
./run-cmake -b -T
```
