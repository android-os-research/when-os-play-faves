.class public Lcom/android/server/accounts/AccountManagerService$12;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V
    .registers 12

    .line 4044
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p10, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$account:Landroid/accounts/Account;

    iput-object p11, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$options:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4048
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_b

    .line 4050
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$options:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    :cond_b
    return-void
.end method

.method public toDebugString(J)Ljava/lang/String;
    .registers 4

    .line 4056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", confirmCredentials, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$account:Landroid/accounts/Account;

    .line 4057
    invoke-virtual {p0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
