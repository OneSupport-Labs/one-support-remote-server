<p align="center">
  <img src="res/logo-header.png" alt="One Support Remote Server"><br>
  <a href="#build">Build</a> •
  <a href="#docker">Docker</a> •
  <a href="#features">Features</a><br>
</p>

# One Support Remote Server

**One Support Remote Server** is a customized self-hosted server for [RustDesk](https://github.com/rustdesk/rustdesk), featuring a **GUI management interface**.
This project is open-source and licensed under the **GNU Affero General Public License v3 (AGPL-3.0)**.

> [!IMPORTANT]
> **Attribution**: This software is a fork of [RustDesk Server](https://github.com/rustdesk/rustdesk-server). We respect the original work and the open-source community.
> The full source code and modifications are available in this repository in compliance with the AGPL-3.0 license.

---

### 🇰🇷 한국어 소개 (Korean Introduction)

**One Support Remote Server**는 [RustDesk Server](https://github.com/rustdesk/rustdesk-server)를 기반으로 **GUI 관리 인터페이스**를 추가한 맞춤형 자체 호스팅 서버 솔루션입니다.
이 프로젝트는 오픈 소스이며 **GNU Affero General Public License v3 (AGPL-3.0)** 라이선스를 따릅니다.

> [!IMPORTANT]
> **저작권 고지**: 이 소프트웨어는 RustDesk Server의 포크(Fork) 버전입니다. 우리는 원작자의 작업과 오픈 소스 커뮤니티를 존중합니다.
> 전체 소스 코드와 수정 사항은 AGPL-3.0 라이선스에 따라 이 저장소에 공개되어 있습니다.

## License / 라이선스
This project is licensed under the **AGPL-3.0** license. See the [LICENSE](LICENSE) file for details.
If you use this software to provide a service over a network, you are obligated to make the source code available to your users.

이 프로젝트는 **AGPL-3.0** 라이선스를 따릅니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참고하세요.
네트워크를 통해 이 소프트웨어를 서비스 형태로 제공하는 경우, 사용자에게 반드시 소스 코드를 공개할 의무가 있습니다.

## Features / 주요 기능

- **ID & Relay Server**: Includes `hbbs` (ID Server) and `hbbr` (Relay Server) for full self-hosting capabilities.
  - **ID 및 릴레이 서버**: `hbbs`와 `hbbr`을 포함하여 완벽한 자체 호스팅을 지원합니다.
- **GUI Management**: Added a **Tauri-based GUI** for easier server configuration and monitoring (located in `ui/`).
  - **GUI 관리 도구**: 서버 설정과 모니터링을 쉽게 할 수 있도록 **Tauri 기반의 GUI**를 추가했습니다 (`ui/` 디렉토리).

## Build / 빌드 방법

### Server Binaries / 서버 바이너리
```bash
cargo build --release
```

### GUI Management Tool / GUI 관리 도구
The GUI is built with [Tauri](https://tauri.app/).
```bash
cd ui
cargo tauri build
```

---
*This project is not affiliated with the official RustDesk team but is developed using their open-source code under AGPL-3.0.*
