.class public interface abstract Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;
.super Ljava/lang/Object;
.source "GnssNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/hal/GnssNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LppeHelperCallbacks"
.end annotation


# virtual methods
.method public abstract onRequestFlpLocation(I)V
.end method

.method public abstract onRequestLppeCommonIesCapability()V
.end method

.method public abstract onRequestUbpCapability()V
.end method

.method public abstract onRequestUbpInfo(I)V
.end method

.method public abstract onRequestWifiCapability()V
.end method

.method public abstract onRequestWifiScan(I)V
.end method
