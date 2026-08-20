.class public interface abstract Lcom/samsung/android/knox/cmfa/IEventListener;
.super Ljava/lang/Object;
.source "IEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/cmfa/IEventListener$Stub;,
        Lcom/samsung/android/knox/cmfa/IEventListener$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.cmfa.IEventListener"


# virtual methods
.method public abstract greylist onFail(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onStateUpdate(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
