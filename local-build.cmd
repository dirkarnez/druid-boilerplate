@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads

set USERPROFILE=%DOWNLOADS_DIR%\rust-portable
set CARGO_HOME=%USERPROFILE%\.cargo
set RUST_PATH=%DOWNLOADS_DIR%\rust-portable\.cargo\bin
set RUSTUP_HOME=%USERPROFILE%\.rustup

set PATH=^
%DOWNLOADS_DIR%\rust-portable\.cargo\bin;^
%DOWNLOADS_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
%DOWNLOADS_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;


@REM set USERPROFILE=D:\Softwares\rust-portable
@REM set CARGO_HOME=%USERPROFILE%\.cargo
@REM set RUST_PATH=D:\Softwares\rust-portable\.cargo\bin
@REM set RUSTUP_HOME=%USERPROFILE%\.rustup

@REM set PATH=^
@REM D:\Softwares\rust-portable\.cargo\bin;^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;


rustup set default-host x86_64-pc-windows-gnu
@REM rustup install stable
@REM rustup default stable

cd src
@REM 
@REM cargo install --path .
cargo build --release
pause
