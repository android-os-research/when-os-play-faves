.class public interface abstract Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;
.super Ljava/lang/Object;
.source "MultiTaskingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NaturalSwitchingConsumer"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract accept(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
