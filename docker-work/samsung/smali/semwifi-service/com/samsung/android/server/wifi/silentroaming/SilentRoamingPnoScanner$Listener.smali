.class public interface abstract Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;
.super Ljava/lang/Object;
.source "SilentRoamingPnoScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFullScanFailure()V
.end method

.method public abstract onFullScanResults([Landroid/net/wifi/ScanResult;)V
.end method

.method public abstract onPartialScanFailure()V
.end method

.method public abstract onPartialScanResults([Landroid/net/wifi/ScanResult;)V
.end method

.method public abstract onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
.end method
