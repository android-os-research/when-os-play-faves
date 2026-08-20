.class public interface abstract Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;
.super Ljava/lang/Object;
.source "VisionServerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/visionserver/VisionServerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "visionServerCallback"
.end annotation


# virtual methods
.method public abstract onListReceived(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNoNeedToDownload()V
.end method

.method public abstract onServerError()V
.end method
