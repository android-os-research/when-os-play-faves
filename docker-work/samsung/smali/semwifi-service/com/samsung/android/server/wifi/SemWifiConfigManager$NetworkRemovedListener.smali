.class public interface abstract Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;
.super Ljava/lang/Object;
.source "SemWifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkRemovedListener"
.end annotation


# virtual methods
.method public abstract onNetworkRemoved(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract onNetworkReset()V
.end method
