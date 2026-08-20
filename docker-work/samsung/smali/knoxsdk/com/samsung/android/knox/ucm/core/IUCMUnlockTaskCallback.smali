.class public interface abstract Lcom/samsung/android/knox/ucm/core/IUCMUnlockTaskCallback;
.super Ljava/lang/Object;
.source "IUCMUnlockTaskCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/core/IUCMUnlockTaskCallback$Stub;,
        Lcom/samsung/android/knox/ucm/core/IUCMUnlockTaskCallback$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ucm.core.IUCMUnlockTaskCallback"


# virtual methods
.method public abstract greylist postAuthentication()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
