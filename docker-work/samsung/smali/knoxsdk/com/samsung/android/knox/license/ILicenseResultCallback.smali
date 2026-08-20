.class public interface abstract Lcom/samsung/android/knox/license/ILicenseResultCallback;
.super Ljava/lang/Object;
.source "ILicenseResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/license/ILicenseResultCallback$Stub;,
        Lcom/samsung/android/knox/license/ILicenseResultCallback$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.license.ILicenseResultCallback"


# virtual methods
.method public abstract greylist onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
