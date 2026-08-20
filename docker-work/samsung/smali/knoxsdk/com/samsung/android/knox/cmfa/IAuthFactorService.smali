.class public interface abstract Lcom/samsung/android/knox/cmfa/IAuthFactorService;
.super Ljava/lang/Object;
.source "IAuthFactorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;,
        Lcom/samsung/android/knox/cmfa/IAuthFactorService$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.cmfa.IAuthFactorService"


# virtual methods
.method public abstract greylist getTrustScore()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getType()Lcom/samsung/android/knox/cmfa/AuthFactorType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist init(Lcom/samsung/android/knox/cmfa/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist isStarted()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist start(Ljava/util/Map;Lcom/samsung/android/knox/cmfa/IAuthFactorListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist stop()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
