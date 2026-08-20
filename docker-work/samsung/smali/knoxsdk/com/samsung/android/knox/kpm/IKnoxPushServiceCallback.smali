.class public interface abstract Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;
.super Ljava/lang/Object;
.source "IKnoxPushServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback$Stub;,
        Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.kpm.IKnoxPushServiceCallback"


# virtual methods
.method public abstract greylist onRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onRegistrationStatus(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onUnRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
