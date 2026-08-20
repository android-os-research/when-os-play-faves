.class public interface abstract Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;
.super Ljava/lang/Object;
.source "ILDAPAccountPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;,
        Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.accounts.ILDAPAccountPolicy"


# virtual methods
.method public abstract greylist createLDAPAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist deleteLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getAllLDAPAccounts(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/LDAPAccount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
