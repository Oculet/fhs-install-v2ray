# fhs-install-v2ray


```
installed: /usr/local/bin/v2ray
installed: /usr/local/bin/v2ctl
installed: /usr/local/share/v2ray/geoip.dat
installed: /usr/local/share/v2ray/geosite.dat
installed: /usr/local/etc/v2ray/config.json
installed: /var/log/v2ray/
installed: /var/log/v2ray/access.log
installed: /var/log/v2ray/error.log
installed: /etc/systemd/system/v2ray.service
installed: /etc/systemd/system/v2ray@.service
```


```
// 安裝執行檔和 .dat 資料檔
# bash <(curl -L https://github.com/Oculet/fhs-install-v2ray/master/install-release.sh)
```

### 安裝最新發行的 geoip.dat 和 geosite.dat

```
// 只更新 .dat 資料檔
# bash <(curl -L https://github.com/Oculet/fhs-install-v2ray/master/install-dat-release.sh)
```

### 移除 V2Ray

```
# bash <(curl -L https://github.com/Oculet/fhs-install-v2ray/master/install-release.sh) --remove
```

### 解決問題

* 「[不安裝或更新 geoip.dat 和 geosite.dat](https://github.com/v2fly/fhs-install-v2ray/wiki/Do-not-install-or-update-geoip.dat-and-geosite.dat)」。
* 「[使用證書時權限不足](https://github.com/v2fly/fhs-install-v2ray/wiki/Insufficient-permissions-when-using-certificates)」。
* 「[從舊腳本遷移至此](https://github.com/v2fly/fhs-install-v2ray/wiki/Migrate-from-the-old-script-to-this)」。
* 「[將 .dat 文檔由 lib 目錄移動到 share 目錄](https://github.com/v2fly/fhs-install-v2ray/wiki/Move-.dat-files-from-lib-directory-to-share-directory)」。
* 「[使用 VLESS 協議](https://github.com/v2fly/fhs-install-v2ray/wiki/To-use-the-VLESS-protocol)」。

> 若您的問題沒有在上方列出，歡迎在 Issue 區提出。

**提問前請先閱讀 [Issue #63](https://github.com/v2fly/fhs-install-v2ray/issues/63)，否則可能無法得到解答並被鎖定。**

## 貢獻

請於 [develop](https://github.com/v2fly/fhs-install-v2ray/tree/develop) 分支進行，以避免對主分支造成破壞。

待確定無誤後，兩分支將進行合併。
