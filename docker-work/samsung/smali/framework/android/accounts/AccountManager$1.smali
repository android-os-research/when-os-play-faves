.class Landroid/accounts/AccountManager$1;
.super Landroid/app/PropertyInvalidatedCache;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/accounts/AccountManager$UserIdPackage;",
        "[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "maxEntries"    # I
    .param p3, "propertyName"    # Ljava/lang/String;

    .line 385
    iput-object p1, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist bypass(Landroid/accounts/AccountManager$UserIdPackage;)Z
    .registers 3
    .param p1, "query"    # Landroid/accounts/AccountManager$UserIdPackage;

    .line 396
    iget v0, p1, Landroid/accounts/AccountManager$UserIdPackage;->userId:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic blacklist bypass(Ljava/lang/Object;)Z
    .registers 2

    .line 385
    check-cast p1, Landroid/accounts/AccountManager$UserIdPackage;

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$1;->bypass(Landroid/accounts/AccountManager$UserIdPackage;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 385
    check-cast p1, Landroid/accounts/AccountManager$UserIdPackage;

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$1;->recompute(Landroid/accounts/AccountManager$UserIdPackage;)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public blacklist recompute(Landroid/accounts/AccountManager$UserIdPackage;)[Landroid/accounts/Account;
    .registers 6
    .param p1, "userAndPackage"    # Landroid/accounts/AccountManager$UserIdPackage;

    .line 389
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p1, Landroid/accounts/AccountManager$UserIdPackage;->userId:I

    iget-object v3, p1, Landroid/accounts/AccountManager$UserIdPackage;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/IAccountManager;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 390
    :catch_10
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist resultEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 385
    check-cast p1, [Landroid/accounts/Account;

    check-cast p2, [Landroid/accounts/Account;

    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManager$1;->resultEquals([Landroid/accounts/Account;[Landroid/accounts/Account;)Z

    move-result p1

    return p1
.end method

.method public blacklist resultEquals([Landroid/accounts/Account;[Landroid/accounts/Account;)Z
    .registers 4
    .param p1, "l"    # [Landroid/accounts/Account;
    .param p2, "r"    # [Landroid/accounts/Account;

    .line 400
    if-ne p1, p2, :cond_4

    .line 401
    const/4 v0, 0x1

    return v0

    .line 402
    :cond_4
    if-eqz p1, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    .line 405
    :cond_9
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 403
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method
