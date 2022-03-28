# To create a virtual environment
Create a virtual environment named `venv_dir`, directory with the binaries:

```console
python -m venv <venv_dir>
```

# To activate your virtual environment in Linux
```console
source <venv_dir>/bin/activate
```

# To upgrade pip
```console
python -m pip install --upgrade pip
```

# To install and enable VIM in Jupyter Notebook (The plugin is not longer maintained)
```console
pip install --upgrade jupyterthemes
```
To list jupyter themes on terminal or in a notebook:
```console
jt -l
!jt -l
```
```console
pip install jupyter notebook
pip install jupyter_contrib_nbextensions
pip install jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user
```
Check where is the directory that jupyter looks for extensions with:
```console
jupyter --data-dir
```
In my case was `~/.local/share/jupyter/`
```console
cd ~/.local/share/jupyter/
git clone <chosen extension>
```
Then launch jupyter and configure the extensions in Edit->Nbextensions

# Check GPU usage

```console
watch -n -1 nvidia-smi
```
