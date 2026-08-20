.class public interface abstract Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;
.super Ljava/lang/Object;
.source "ILockscreenOverlay.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;,
        Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.lockscreen.ILockscreenOverlay"


# virtual methods
.method public abstract greylist canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getPreferences(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist resetData(Lcom/samsung/android/knox/ContextInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist resetWallpaper(Lcom/samsung/android/knox/ContextInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist setData(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist setPreferences(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist setWallpaper(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
