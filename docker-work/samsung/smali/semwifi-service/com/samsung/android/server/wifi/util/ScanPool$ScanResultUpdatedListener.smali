.class public interface abstract Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;
.super Ljava/lang/Object;
.source "ScanPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/util/ScanPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScanResultUpdatedListener"
.end annotation


# virtual methods
.method public abstract onScanResultUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation
.end method
