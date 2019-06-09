Name: autoinstall
Version: 1.0.0
Release: 1%{?dist}
Summary: Run an install script at boot.

License: GPL3
Source: %{name}.tar.gz

BuildRequires: systemd-units

%description
A oneshot script that runs at boot for the purposes of running an installation
at boot.

%install
%make_install

%files
%{_bindir}/autoinstall.sh
%{_unitdir}/autoinstall.service

%changelog
* Mon Jul 31 2017 Jonathan Camara <jonathan@jonathancamara.com> - 1.0.0-1
- Initial package
