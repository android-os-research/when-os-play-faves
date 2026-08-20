.class public interface abstract Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;
.super Ljava/lang/Object;
.source "SemWifiManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiNetworkStateListener"
.end annotation


# virtual methods
.method public abstract onLinkConfiguredChanged()V
.end method

.method public abstract onNetworkStateChanged(Landroid/net/NetworkInfo;)V
.end method
