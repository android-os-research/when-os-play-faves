.class public interface abstract Lcom/samsung/android/knox/kpcc/IKPCCManager;
.super Ljava/lang/Object;
.source "IKPCCManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/kpcc/IKPCCManager$Stub;,
        Lcom/samsung/android/knox/kpcc/IKPCCManager$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.kpcc.IKPCCManager"


# virtual methods
.method public abstract greylist getDrxValue(Lcom/samsung/android/knox/ContextInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getPackagesAllowedOnRestrictedNetworks(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getTelephonyDrxValue()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist setDrxValue(Lcom/samsung/android/knox/ContextInfo;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist setPackageOnRestrictedNetworks(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
