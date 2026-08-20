.class public abstract Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "StartAccountSession"
.end annotation


# instance fields
.field public final mIsPasswordForwardingAllowed:Z

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    .registers 21

    move-object v10, p0

    move-object v1, p1

    .line 3747
    iput-object v1, v10, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 3748
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    move/from16 v0, p9

    .line 3751
    iput-boolean v0, v10, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 10

    const/4 v0, 0x1

    .line 3756
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3757
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    const/4 v0, 0x5

    if-eqz p1, :cond_1d

    .line 3761
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3760
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string/jumbo p1, "invalid intent in bundle returned"

    .line 3763
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    .line 3769
    :cond_1d
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    if-eqz v1, :cond_2f

    if-eqz p1, :cond_2f

    const-string/jumbo v1, "intent"

    .line 3770
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3771
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    goto :goto_33

    .line 3773
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    :goto_33
    if-nez v1, :cond_36

    return-void

    :cond_36
    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    if-nez p1, :cond_69

    .line 3779
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 3780
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " calling onError() on response "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    :cond_60
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string/jumbo p1, "null bundle returned"

    invoke-static {p0, v1, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$msendErrorResponse(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    :cond_69
    const/4 v4, -0x1

    const-string v5, "errorCode"

    .line 3788
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_82

    .line 3791
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "errorMessage"

    .line 3792
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3791
    invoke-static {p0, v1, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$msendErrorResponse(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    .line 3797
    :cond_82
    iget-boolean v4, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    if-nez v4, :cond_8c

    const-string/jumbo v4, "password"

    .line 3798
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_8c
    const-string v4, "authtoken"

    .line 3802
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3804
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 3805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3806
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " calling onResult() on response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3805
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    const-string v2, "accountSessionBundle"

    .line 3813
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_fd

    const-string v5, "accountType"

    .line 3815
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3816
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d2

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 3817
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d7

    :cond_d2
    const-string v6, "Account type in session bundle doesn\'t match request."

    .line 3818
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    :cond_d7
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3826
    :try_start_dc
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    move-result-object v5

    .line 3827
    invoke-virtual {v5, v4}, Lcom/android/server/accounts/CryptoHelper;->encryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 3828
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_e7
    .catch Ljava/security/GeneralSecurityException; {:try_start_dc .. :try_end_e7} :catch_e8

    goto :goto_fd

    :catch_e8
    move-exception p1

    const/4 v2, 0x3

    .line 3830
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f5

    const-string v2, "Failed to encrypt session bundle!"

    .line 3831
    invoke-static {v3, v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3833
    :cond_f5
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string p1, "failed to encrypt session bundle"

    invoke-static {p0, v1, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$msendErrorResponse(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    .line 3839
    :cond_fd
    :goto_fd
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$msendResponse(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method
