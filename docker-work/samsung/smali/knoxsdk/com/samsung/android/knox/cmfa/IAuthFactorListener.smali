.class public interface abstract Lcom/samsung/android/knox/cmfa/IAuthFactorListener;
.super Ljava/lang/Object;
.source "IAuthFactorListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/cmfa/IAuthFactorListener$Stub;,
        Lcom/samsung/android/knox/cmfa/IAuthFactorListener$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.cmfa.IAuthFactorListener"


# virtual methods
.method public abstract greylist onFail(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onStateUpdate()V
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
