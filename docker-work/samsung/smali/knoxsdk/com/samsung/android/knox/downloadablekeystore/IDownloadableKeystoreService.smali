.class public interface abstract Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
.super Ljava/lang/Object;
.source "IDownloadableKeystoreService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService$Stub;,
        Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.downloadablekeystore.IDownloadableKeystoreService"


# virtual methods
.method public abstract greylist startTimaKeystoreServices(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
