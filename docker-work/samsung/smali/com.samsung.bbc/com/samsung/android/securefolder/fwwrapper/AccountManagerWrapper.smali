.class public Lcom/samsung/android/securefolder/fwwrapper/AccountManagerWrapper;
.super Ljava/lang/Object;
.source "AccountManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountsByTypeAsUser(Landroid/accounts/AccountManager;Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method
