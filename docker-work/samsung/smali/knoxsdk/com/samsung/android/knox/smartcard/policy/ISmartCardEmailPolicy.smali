.class public interface abstract Lcom/samsung/android/knox/smartcard/policy/ISmartCardEmailPolicy;
.super Ljava/lang/Object;
.source "ISmartCardEmailPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;,
        Lcom/samsung/android/knox/smartcard/policy/ISmartCardEmailPolicy$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.smartcard.policy.ISmartCardEmailPolicy"


# virtual methods
.method public abstract greylist getSMIMEEncryptionCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getSMIMESignatureCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
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

.method public abstract greylist isCredentialRequired(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist removeSMIMEEncryptionCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist removeSMIMESignatureCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist requireCredentials(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist setForceSMIMEEncryptionCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist setForceSMIMESignatureCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
