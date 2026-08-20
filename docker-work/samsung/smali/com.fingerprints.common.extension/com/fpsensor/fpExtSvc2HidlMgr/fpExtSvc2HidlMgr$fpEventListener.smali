.class public interface abstract Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;
.super Ljava/lang/Object;
.source "fpExtSvc2HidlMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "fpEventListener"
.end annotation


# virtual methods
.method public abstract onFingerDetected(I)V
.end method

.method public abstract onImgCaptured(I[B)V
.end method

.method public abstract onPassiveRspRcved([B)V
.end method
