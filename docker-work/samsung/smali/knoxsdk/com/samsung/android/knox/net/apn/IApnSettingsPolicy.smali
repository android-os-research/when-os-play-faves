.class public interface abstract Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;
.super Ljava/lang/Object;
.source "IApnSettingsPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;,
        Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.net.apn.IApnSettingsPolicy"


# virtual methods
.method public abstract greylist addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getApnList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
