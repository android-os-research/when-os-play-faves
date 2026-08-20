.class public interface abstract Lcom/android/server/enterprise/proxy/ProxyManagerCallbacks;
.super Ljava/lang/Object;
.source "ProxyManagerCallbacks.java"


# virtual methods
.method public abstract clearNotificationDialog()V
.end method

.method public abstract clearProxyServerCache()V
.end method

.method public abstract getAppUidBrowserList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppUidFromSocketPortNumber(I)Ljava/lang/String;
.end method

.method public abstract getCurrentAppliedProxy()Lcom/samsung/android/knox/net/ProxyProperties;
.end method

.method public abstract getGlobalProxyCache()Lcom/samsung/android/knox/net/ProxyProperties;
.end method

.method public abstract getLocalProxyInfo()Landroid/net/ProxyInfo;
.end method

.method public abstract getProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;
.end method

.method public abstract refreshCredentialsDialogFails()V
.end method

.method public abstract removeWifiProxy(Ljava/lang/String;)V
.end method

.method public abstract setProxyCredentials(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
.end method

.method public abstract showCredentialsDialogNotification(Ljava/lang/String;)V
.end method

.method public abstract updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V
.end method

.method public abstract updateWifiBackCompatCredentialsCache(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateWifiProxy(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/ProxyProperties;",
            ">;)V"
        }
    .end annotation
.end method
