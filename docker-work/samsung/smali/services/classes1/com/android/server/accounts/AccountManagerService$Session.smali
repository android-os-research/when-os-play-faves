.class public abstract Lcom/android/server/accounts/AccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Session"
.end annotation


# instance fields
.field public final mAccountName:Ljava/lang/String;

.field public final mAccountType:Ljava/lang/String;

.field public final mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field public final mAuthDetailsRequired:Z

.field public mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field public final mCreationTime:J

.field public final mExpectActivityLaunch:Z

.field public mNumErrors:I

.field public mNumRequestContinued:I

.field public mNumResults:I

.field public mResponse:Landroid/accounts/IAccountManagerResponse;

.field public final mStripAuthTokenFromResult:Z

.field public final mUpdateLastAuthenticatedTime:Z

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 5101
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .registers 12

    .line 5107
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 5108
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    const/4 v0, 0x0

    .line 5089
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 5090
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 5091
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    const/4 v1, 0x0

    .line 5093
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz p4, :cond_4b

    .line 5111
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 5112
    iput-boolean p6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 5113
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 5114
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 5115
    iput-boolean p5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 5116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 5117
    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 5118
    iput-boolean p8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 5119
    iput-boolean p9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 5121
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmSessions(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p2

    monitor-enter p2

    .line 5122
    :try_start_2c
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmSessions(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5123
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_48

    if-eqz p3, :cond_47

    .line 5126
    :try_start_3a
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_42

    goto :goto_47

    .line 5128
    :catch_42
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 5129
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->binderDied()V

    :cond_47
    :goto_47
    return-void

    :catchall_48
    move-exception p0

    .line 5123
    :try_start_49
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0

    .line 5110
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bind()V
    .registers 4

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    .line 5273
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 5274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initiating bind to authenticator type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5276
    :cond_20
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 5277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind attempt failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, "bind failure"

    .line 5278
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    :cond_46
    return-void
.end method

.method public final bindToAuthenticator(Ljava/lang/String;)Z
    .registers 10

    .line 5466
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmAuthenticatorCache(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v0

    .line 5467
    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    .line 5466
    invoke-interface {v0, v1, v2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    if-nez v0, :cond_3b

    .line 5469
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 5470
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "there is no authenticator for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bailing out"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return v1

    .line 5476
    :cond_3b
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-static {p1, v4}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$misLocalUnlockedUser(Lcom/android/server/accounts/AccountManagerService;I)Z

    move-result p1

    if-nez p1, :cond_6b

    iget-object p1, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    iget-boolean p1, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    if-nez p1, :cond_6b

    .line 5478
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Blocking binding to authenticator "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " which isn\'t encryption aware"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5483
    :cond_6b
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.accounts.AccountAuthenticator"

    .line 5484
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5485
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5486
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 5487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performing bindService to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5490
    :cond_97
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmAuthenticatorCache(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getBindInstantServiceAllowed(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_ae

    const v4, 0x400001

    goto :goto_af

    :cond_ae
    move v4, v5

    .line 5493
    :goto_af
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v6, v6, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, p1, p0, v4, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_e5

    .line 5494
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_e4

    .line 5495
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bindService to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    return v1

    :cond_e5
    return v5
.end method

.method public binderDied()V
    .registers 2

    const/4 v0, 0x0

    .line 5256
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 5257
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    return-void
.end method

.method public cancelTimeout()V
    .registers 3

    .line 5290
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public checkKeyIntent(ILandroid/os/Bundle;)Z
    .registers 12

    .line 5153
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntentParceledCorrectly(Landroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_21

    const p0, 0x534e4554

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "250588548"

    aput-object v0, p2, v4

    .line 5154
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, ""

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v4

    .line 5157
    :cond_21
    const-class v0, Landroid/content/Intent;

    const-string/jumbo v5, "intent"

    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    if-nez p2, :cond_2f

    return v3

    .line 5163
    :cond_2f
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_3d

    const/4 v0, 0x0

    .line 5164
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 5166
    :cond_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 5168
    :try_start_41
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5169
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-virtual {v0, p2, v4, v7}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p2
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_96

    if-nez p2, :cond_59

    .line 5187
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 5173
    :cond_59
    :try_start_59
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5174
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5175
    const-class v7, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 5176
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->isExportedSystemActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-nez v8, :cond_92

    const/16 v8, 0x10

    .line 5177
    invoke-virtual {v7, v0, p1, v8}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result p1

    if-nez p1, :cond_92

    .line 5178
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 5179
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v0, "KEY_INTENT resolved to an Activity (%s) in a package (%s) that does not share a signature with the supplying authenticator (%s)."

    const-string v7, "AccountManagerService"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    aput-object p1, v2, v3

    .line 5182
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_59 .. :try_end_8e} :catchall_96

    .line 5187
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_92
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_96
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5188
    throw p0
.end method

.method public final checkKeyIntentParceledCorrectly(Landroid/os/Bundle;)Z
    .registers 6

    .line 5200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    .line 5201
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 5202
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5203
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 5204
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 5205
    const-class p0, Landroid/content/Intent;

    const-string/jumbo v2, "intent"

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    if-eqz p0, :cond_28

    .line 5206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v3, Landroid/content/Intent;

    if-eq p1, v3, :cond_28

    return v0

    .line 5209
    :cond_28
    const-class p1, Landroid/content/Intent;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const/4 v1, 0x1

    if-nez p0, :cond_37

    if-nez p1, :cond_36

    move v0, v1

    :cond_36
    return v0

    .line 5214
    :cond_37
    invoke-virtual {p0, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_3e

    return v0

    .line 5218
    :cond_3e
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eq p0, v2, :cond_49

    return v0

    .line 5226
    :cond_49
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0xc3

    if-nez p0, :cond_52

    move v0, v1

    :cond_52
    return v0
.end method

.method public final close()V
    .registers 4

    .line 5237
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmSessions(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-enter v0

    .line 5238
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmSessions(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    .line 5240
    monitor-exit v0

    return-void

    .line 5242
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_30

    .line 5243
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_29

    .line 5245
    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 5248
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 5250
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->cancelTimeout()V

    .line 5251
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->unbind()V

    return-void

    :catchall_30
    move-exception p0

    .line 5242
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .registers 2

    .line 5135
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v0, :cond_9

    .line 5136
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    const/4 p0, 0x0

    return-object p0

    .line 5140
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    return-object v0
.end method

.method public final isExportedSystemActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 3

    .line 5230
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 5231
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const-class p1, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 5232
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    const-class p1, Landroid/accounts/CantAddAccountActivity;

    .line 5233
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_24
    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public onError(ILjava/lang/String;)V
    .registers 7

    .line 5439
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 5440
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    if-eqz v0, :cond_45

    .line 5442
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 5443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " calling onError() on response "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    :cond_34
    :try_start_34
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_50

    :catch_38
    move-exception p0

    .line 5449
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_50

    const-string p1, "Session.onError: caught RemoteException while responding"

    .line 5450
    invoke-static {v2, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 5454
    :cond_45
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_50

    const-string p0, "Session.onError: already closed"

    .line 5455
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    :goto_50
    return-void
.end method

.method public onRequestContinued()V
    .registers 2

    .line 5434
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "errorCode"

    const/4 v1, 0x1

    .line 5340
    invoke-static {p1, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 5341
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    const-string v2, "accountType"

    const-string v3, "authAccount"

    if-eqz p1, :cond_72

    const-string v4, "booleanResult"

    const/4 v5, 0x0

    .line 5344
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 5347
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 5348
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    move v6, v1

    goto :goto_27

    :cond_26
    move v6, v5

    .line 5352
    :goto_27
    iget-boolean v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    if-eqz v7, :cond_30

    if-nez v4, :cond_31

    if-eqz v6, :cond_30

    goto :goto_31

    :cond_30
    move v1, v5

    :cond_31
    :goto_31
    if-nez v1, :cond_37

    .line 5354
    iget-boolean v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v4, :cond_72

    .line 5355
    :cond_37
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$misAccountPresentForCaller(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v1, :cond_53

    if-eqz v4, :cond_53

    .line 5357
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    new-instance v5, Landroid/accounts/Account;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mupdateLastAuthenticatedTime(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z

    .line 5359
    :cond_53
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v1, :cond_72

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_6c

    .line 5362
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    new-instance v4, Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5363
    invoke-virtual {v1, v4}, Lcom/android/server/accounts/AccountsDb;->findAccountLastAuthenticatedTime(Landroid/accounts/Account;)J

    move-result-wide v5

    :cond_6c
    const-string/jumbo v1, "lastAuthenticatedTime"

    .line 5366
    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_72
    const/4 v1, 0x5

    if-eqz p1, :cond_86

    .line 5373
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5372
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_86

    const-string/jumbo p1, "invalid intent in bundle returned"

    .line 5375
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    :cond_86
    const-string v4, "authtoken"

    if-eqz p1, :cond_c3

    .line 5381
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c3

    .line 5382
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5383
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5384
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c3

    .line 5385
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v3, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5386
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v2, v3, v5}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mgetSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v3

    new-instance v5, Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v2, v3, v5}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mcancelNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 5391
    :cond_c3
    iget-boolean v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    if-eqz v2, :cond_d5

    if-eqz p1, :cond_d5

    const-string/jumbo v2, "intent"

    .line 5392
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 5393
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    goto :goto_d9

    .line 5395
    :cond_d5
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v2

    :goto_d9
    if-eqz v2, :cond_15d

    const/4 v3, 0x2

    const-string v5, "AccountManagerService"

    if-nez p1, :cond_10c

    .line 5400
    :try_start_e0
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_105

    .line 5401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " calling onError() on response "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_105
    const-string/jumbo p0, "null bundle returned"

    .line 5404
    invoke-interface {v2, v1, p0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_15d

    .line 5407
    :cond_10c
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    if-eqz v1, :cond_113

    .line 5408
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5410
    :cond_113
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 5411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " calling onResult() on response "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_138
    const/4 p0, -0x1

    .line 5414
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_14d

    .line 5417
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v0, "errorMessage"

    .line 5418
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5417
    invoke-interface {v2, p0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_15d

    .line 5420
    :cond_14d
    invoke-interface {v2, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_150
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_150} :catch_151

    goto :goto_15d

    :catch_151
    move-exception p0

    .line 5425
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_15d

    const-string p1, "failure while notifying response"

    .line 5426
    invoke-static {v5, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15d
    :goto_15d
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 5295
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 5297
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->run()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_11

    :catch_a
    const/4 p1, 0x1

    const-string/jumbo p2, "remote exception"

    .line 5299
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    :goto_11
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const/4 p1, 0x0

    .line 5306
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 5307
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object p0

    if-eqz p0, :cond_1f

    const/4 p1, 0x1

    :try_start_a
    const-string v0, "disconnected"

    .line 5310
    invoke-interface {p0, p1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_1f

    :catch_10
    move-exception p0

    const/4 p1, 0x2

    const-string v0, "AccountManagerService"

    .line 5313
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p1, "Session.onServiceDisconnected: caught RemoteException while responding"

    .line 5314
    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onTimedOut()V
    .registers 3

    .line 5324
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :try_start_7
    const-string/jumbo v1, "timeout"

    .line 5327
    invoke-interface {p0, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_1d

    :catch_e
    move-exception p0

    const/4 v0, 0x2

    const-string v1, "AccountManagerService"

    .line 5330
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "Session.onTimedOut: caught RemoteException while responding"

    .line 5331
    invoke-static {v1, v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 3

    .line 5261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toDebugString(J)Ljava/lang/String;
    .registers 6

    .line 5265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    sub-long/2addr p1, v1

    long-to-double p0, p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unbind()V
    .registers 2

    .line 5283
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 5284
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 5285
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_e
    return-void
.end method
