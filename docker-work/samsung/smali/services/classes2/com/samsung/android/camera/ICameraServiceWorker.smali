.class public interface abstract Lcom/samsung/android/camera/ICameraServiceWorker;
.super Ljava/lang/Object;
.source "ICameraServiceWorker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/ICameraServiceWorker$Stub;,
        Lcom/samsung/android/camera/ICameraServiceWorker$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "eb954c7c28bffe129c1323b2b3229ad5f26c0537"

.field public static final SERVICE_NAME:Ljava/lang/String; = "media.camera.worker"

.field public static final THIRD_PARTY_INTENT_IMAGE_CAPTURE_MAX_RES:I = 0x4

.field public static final THIRD_PARTY_INTENT_PRECAPTURE_TRIGGER:I = 0x3

.field public static final THIRD_PARTY_INTENT_PREVIEW_MAX_RES:I = 0x2

.field public static final THIRD_PARTY_INTENT_VIDEO_DUR:I = 0x6

.field public static final THIRD_PARTY_INTENT_VIDEO_MAX_RES:I = 0x5

.field public static final THIRD_PARTY_LENS_ID:I = 0x1

.field public static final VERSION:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "com$samsung$android$camera$ICameraServiceWorker"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    .line 421
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract acquireRequestInjector()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDeviceInjectorOverride(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDeviceOrientationForDeviceInjector(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyCameraSessionEvent(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pingForUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryPackageName(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDeviceOrientationListener(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
