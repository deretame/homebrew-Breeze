# Homebrew Breeze

- 本项目旨在降低Breeze在macOS上下载的难度

### 如何通过 Homebrew 安装 Breeze (macOS)

如果你是 macOS 用户，推荐使用 Homebrew 来安装和管理 Breeze。

**1. 添加软件源 (Tap)**
首先，将本仓库添加到你的 Homebrew 源列表中：

```bash
brew tap deretame/breeze
```

**2. 安装 Breeze**
执行以下命令，Homebrew 会自动下载并安装最新版本到你的“应用程序”目录：

```bash
brew install breeze
```

**3. 更新 Breeze**
当 Breeze 发布新版本后，你可以通过以下命令一键升级：

```bash
brew upgrade breeze
```

**4. 彻底卸载**
如果你需要卸载 Breeze，并希望同时清理底层的数据库、缓存和配置文件，请务必加上 `--zap` 参数（**注意：这不会删除你手动导出的文件，但会清空 App 内部数据**）：

```bash
brew uninstall --zap breeze
```

> **⚠️ 首次启动注意事项 (macOS Gatekeeper)**
> 由于本项目为开源免费软件，未进行 Apple 开发者签名。安装后首次打开时，如果系统提示 **“应用已损坏”** 或 **“无法验证开发者”**，请在终端中执行以下命令予以放行，之后即可正常使用：

```bash
xattr -cr /Applications/Breeze.app 
 ```