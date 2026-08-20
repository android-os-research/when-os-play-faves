.class public Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestFeaturesSession"
.end annotation


# instance fields
.field public final mAccount:Landroid/accounts/Account;

.field public final mFeatures:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .registers 15

    .line 2120
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2121
    iget-object v4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 2124
    iput-object p5, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    .line 2125
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "booleanResult"

    const/4 v1, 0x1

    .line 2144
    invoke-static {p1, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2145
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    if-eqz v1, :cond_5c

    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    if-nez p1, :cond_1b

    const/4 p0, 0x5

    :try_start_12
    const-string/jumbo p1, "null bundle"

    .line 2149
    invoke-interface {v1, p0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void

    :catch_19
    move-exception p0

    goto :goto_51

    .line 2152
    :cond_1b
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " calling onResult() on response "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_40
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    .line 2158
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 2157
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2159
    invoke-interface {v1, p0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_50} :catch_19

    goto :goto_5c

    .line 2162
    :goto_51
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5c

    const-string p1, "failure while notifying response"

    .line 2163
    invoke-static {v3, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5c
    :goto_5c
    return-void
.end method

.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2132
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_13

    .line 2134
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_13

    :catch_c
    const/4 v0, 0x1

    const-string/jumbo v1, "remote exception"

    .line 2138
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public toDebugString(J)Ljava/lang/String;
    .registers 4

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", hasFeatures, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    if-eqz p0, :cond_26

    const-string p1, ","

    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
