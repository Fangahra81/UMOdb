from cx_Freeze import setup, Executable

setup(
    name="UMOdb",
    version="1.0",
    description="Umodb",
    executables=[Executable("UMOdb.py")]
)