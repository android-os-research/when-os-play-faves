.class public Lcom/android/server/accounts/AccountManagerService$9;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->addAccountAndLogMetrics(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$accountType:Ljava/lang/String;

.field public final synthetic val$authTokenType:Ljava/lang/String;

.field public final synthetic val$options:Landroid/os/Bundle;

.field public final synthetic val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 14

    .line 3596
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$9;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p10, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$authTokenType:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$options:Landroid/os/Bundle;

    iput-object p13, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$accountType:Ljava/lang/String;

    invoke-direct/range {p0 .. p9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3600
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_23

    .line 3602
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$authTokenType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$options:Landroid/os/Bundle;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator;->addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3603
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$options:Landroid/os/Bundle;

    const-string v1, "androidPackageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3605
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$9;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$accountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$authTokenType:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3, p0}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mlogAddAccountMetrics(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public toDebugString(J)Ljava/lang/String;
    .registers 4

    .line 3613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", addAccount, accountType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$accountType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requiredFeatures "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3616
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    if-eqz p0, :cond_26

    const-string p1, ","

    .line 3617
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    .line 3618
    :goto_27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
