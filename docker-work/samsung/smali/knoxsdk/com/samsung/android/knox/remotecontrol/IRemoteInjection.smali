.class public interface abstract Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;
.super Ljava/lang/Object;
.source "IRemoteInjection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;,
        Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.remotecontrol.IRemoteInjection"


# virtual methods
.method public abstract greylist allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist injectKeyEventDex(Landroid/view/KeyEvent;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist injectPointerEventDex(Landroid/view/MotionEvent;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist isRemoteControlDisabled(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist updateDexScreenDimensions(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist updateRemoteScreenDimensionsAndCallerUid(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
