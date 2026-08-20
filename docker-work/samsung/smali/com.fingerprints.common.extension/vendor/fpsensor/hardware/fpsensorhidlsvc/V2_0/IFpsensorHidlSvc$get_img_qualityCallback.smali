.class public interface abstract Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$get_img_qualityCallback;
.super Ljava/lang/Object;
.source "IFpsensorHidlSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "get_img_qualityCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onValues(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
