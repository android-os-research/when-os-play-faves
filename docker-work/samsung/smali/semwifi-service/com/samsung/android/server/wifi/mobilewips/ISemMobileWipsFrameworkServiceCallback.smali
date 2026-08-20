.class public interface abstract Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;
.super Ljava/lang/Object;
.source "ISemMobileWipsFrameworkServiceCallback.java"


# virtual methods
.method public abstract sendDnsResponse(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendScanResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendServiceHandlerMessage(Landroid/os/Message;)V
.end method

.method public abstract sendServiceMessage(Landroid/os/Message;)V
.end method
