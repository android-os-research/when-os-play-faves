.class public interface abstract Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;
.super Ljava/lang/Object;
.source "CurrentDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/CurrentDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCurrentDeviceChangedCallback"
.end annotation


# virtual methods
.method public abstract onCurrentDeviceChanged(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
