.class public interface abstract Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScanBroadcastListener;
.super Ljava/lang/Object;
.source "SemWifiManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScanBroadcastListener"
.end annotation


# virtual methods
.method public abstract onScanFailed()V
.end method

.method public abstract onScanResultAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation
.end method
