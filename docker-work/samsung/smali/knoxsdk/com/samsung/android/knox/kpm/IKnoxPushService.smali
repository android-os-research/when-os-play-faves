.class public interface abstract Lcom/samsung/android/knox/kpm/IKnoxPushService;
.super Ljava/lang/Object;
.source "IKnoxPushService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/kpm/IKnoxPushService$Stub;,
        Lcom/samsung/android/knox/kpm/IKnoxPushService$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.kpm.IKnoxPushService"


# virtual methods
.method public abstract greylist isRegistered(Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist registerDevice(ZLcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist unRegisterDevice(Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
