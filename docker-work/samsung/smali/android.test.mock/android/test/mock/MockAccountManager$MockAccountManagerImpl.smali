.class Landroid/test/mock/MockAccountManager$MockAccountManagerImpl;
.super Landroid/accounts/AccountManager;
.source "MockAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/mock/MockAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockAccountManagerImpl"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/accounts/AccountManager;-><init>(Landroid/content/Context;Landroid/accounts/IAccountManager;Landroid/os/Handler;)V

    .line 60
    return-void
.end method


# virtual methods
.method public addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    .registers 4
    .param p1, "listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "updateImmediately"    # Z

    .line 65
    return-void
.end method

.method public blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "notifyAuthFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccounts()[Landroid/accounts/Account;
    .registers 2

    .line 68
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "features"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "[",
            "Landroid/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 74
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    new-instance v0, Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/accounts/Account;

    invoke-direct {v0, v1}, Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
