.class public Lcom/android/server/accounts/AccountManagerService$8;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field public final synthetic val$authTokenType:Ljava/lang/String;

.field public final synthetic val$callerPkg:Ljava/lang/String;

.field public final synthetic val$callerPkgSigDigest:[B

.field public final synthetic val$callerUid:I

.field public final synthetic val$customTokens:Z

.field public final synthetic val$loginOptions:Landroid/os/Bundle;

.field public final synthetic val$notifyOnAuthFailure:Z

.field public final synthetic val$permissionGranted:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;IZ[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 22

    move-object v0, p0

    move-object v1, p1

    .line 3248
    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    move v2, p12

    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    move/from16 v2, p13

    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    move/from16 v2, p15

    iput v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    move/from16 v2, p16

    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 13

    const/4 v0, 0x1

    .line 3278
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    if-eqz p1, :cond_ca

    const-string v0, "authTokenLabelKey"

    .line 3280
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "intent"

    if-eqz v0, :cond_30

    .line 3281
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    new-instance v6, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v6, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mnewGrantCredentialsPermissionIntent(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 3288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3289
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3290
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService$8;->onResult(Landroid/os/Bundle;)V

    return-void

    :cond_30
    const-string v0, "authtoken"

    .line 3293
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x5

    if-eqz v8, :cond_8f

    const-string v2, "authAccount"

    .line 3295
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "accountType"

    .line 3296
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3297
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_88

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_88

    .line 3302
    :cond_52
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    iget-boolean v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-nez v2, :cond_64

    .line 3304
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v8}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$msaveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_64
    const-wide/16 v2, 0x0

    const-string v4, "android.accounts.expiry"

    .line 3310
    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 3312
    iget-boolean v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-eqz v2, :cond_8f

    .line 3313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v9, v2

    if-lez v2, :cond_8f

    .line 3314
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-static/range {v2 .. v10}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$msaveCachedToken(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_8f

    :cond_88
    :goto_88
    const-string/jumbo p1, "the type and name should not be empty"

    .line 3298
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    .line 3325
    :cond_8f
    :goto_8f
    const-class v2, Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Intent;

    if-eqz v6, :cond_ca

    .line 3326
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    if-eqz v1, :cond_ca

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-nez v1, :cond_ca

    .line 3334
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3333
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_b3

    const-string/jumbo p1, "invalid intent in bundle returned"

    .line 3336
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    .line 3340
    :cond_b3
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    const-string v0, "authFailedMessage"

    .line 3343
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    const-string v7, "android"

    .line 3340
    invoke-static/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mdoNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3347
    :cond_ca
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3264
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_22

    .line 3266
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    if-nez v1, :cond_e

    .line 3267
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    goto :goto_22

    .line 3269
    :cond_e
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3270
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mlogGetAuthTokenMetrics(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public toDebugString(J)Ljava/lang/String;
    .registers 4

    .line 3251
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 3252
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAuthToken, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 3253
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", authTokenType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", loginOptions "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notifyOnAuthFailure "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
