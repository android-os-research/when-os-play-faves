.class public interface abstract Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;
.super Ljava/lang/Object;
.source "ConnectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/plm/impl/ConnectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectRunnable"
.end annotation


# virtual methods
.method public abstract onConnect()V
.end method

.method public abstract onError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
