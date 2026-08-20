.class public interface abstract Lcom/samsung/android/knox/smartcard/policy/ISmartCardBrowserPolicy;
.super Ljava/lang/Object;
.source "ISmartCardBrowserPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;,
        Lcom/samsung/android/knox/smartcard/policy/ISmartCardBrowserPolicy$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.smartcard.policy.ISmartCardBrowserPolicy"


# virtual methods
.method public abstract greylist disableAuthentication(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist enableAuthentication(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist removeClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist setClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
