.class public interface abstract Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;
.super Ljava/lang/Object;
.source "ICredentialManagerServiceSystemUICallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;,
        Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ucm.core.ICredentialManagerServiceSystemUICallback"


# virtual methods
.method public abstract greylist setUCMKeyguardVendor(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
