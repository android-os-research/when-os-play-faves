.class public final Lcom/android/commands/telecom/Telecom;
.super Lcom/android/internal/os/BaseCommand;
.source "Telecom.java"


# static fields
.field private static final COMMAND_ADD_OR_REMOVE_CALL_COMPANION_APP:Ljava/lang/String; = "add-or-remove-call-companion-app"

.field private static final COMMAND_CLEANUP_ORPHAN_PHONE_ACCOUNTS:Ljava/lang/String; = "cleanup-orphan-phone-accounts"

.field private static final COMMAND_CLEANUP_STUCK_CALLS:Ljava/lang/String; = "cleanup-stuck-calls"

.field private static final COMMAND_GET_DEFAULT_DIALER:Ljava/lang/String; = "get-default-dialer"

.field private static final COMMAND_GET_MAX_PHONES:Ljava/lang/String; = "get-max-phones"

.field private static final COMMAND_GET_SIM_CONFIG:Ljava/lang/String; = "get-sim-config"

.field private static final COMMAND_GET_SYSTEM_DIALER:Ljava/lang/String; = "get-system-dialer"

.field private static final COMMAND_LOG_MARK:Ljava/lang/String; = "log-mark"

.field private static final COMMAND_REGISTER_PHONE_ACCOUNT:Ljava/lang/String; = "register-phone-account"

.field private static final COMMAND_REGISTER_SIM_PHONE_ACCOUNT:Ljava/lang/String; = "register-sim-phone-account"

.field private static final COMMAND_RESET_CAR_MODE:Ljava/lang/String; = "reset-car-mode"

.field private static final COMMAND_SET_CALL_DIAGNOSTIC_SERVICE:Ljava/lang/String; = "set-call-diagnostic-service"

.field private static final COMMAND_SET_DEFAULT_DIALER:Ljava/lang/String; = "set-default-dialer"

.field private static final COMMAND_SET_PHONE_ACCOUNT_DISABLED:Ljava/lang/String; = "set-phone-account-disabled"

.field private static final COMMAND_SET_PHONE_ACCOUNT_ENABLED:Ljava/lang/String; = "set-phone-account-enabled"

.field private static final COMMAND_SET_PHONE_ACCOUNT_SUGGESTION_COMPONENT:Ljava/lang/String; = "set-phone-acct-suggestion-component"

.field private static final COMMAND_SET_SIM_COUNT:Ljava/lang/String; = "set-sim-count"

.field private static final COMMAND_SET_SYSTEM_DIALER:Ljava/lang/String; = "set-system-dialer"

.field private static final COMMAND_SET_TEST_CALL_REDIRECTION_APP:Ljava/lang/String; = "set-test-call-redirection-app"

.field private static final COMMAND_SET_TEST_CALL_SCREENING_APP:Ljava/lang/String; = "set-test-call-screening-app"

.field private static final COMMAND_SET_TEST_EMERGENCY_PHONE_ACCOUNT_PACKAGE_FILTER:Ljava/lang/String; = "set-test-emergency-phone-account-package-filter"

.field private static final COMMAND_SET_USER_SELECTED_OUTGOING_PHONE_ACCOUNT:Ljava/lang/String; = "set-user-selected-outgoing-phone-account"

.field private static final COMMAND_STOP_BLOCK_SUPPRESSION:Ljava/lang/String; = "stop-block-suppression"

.field private static final COMMAND_UNREGISTER_PHONE_ACCOUNT:Ljava/lang/String; = "unregister-phone-account"

.field private static final COMMAND_WAIT_ON_HANDLERS:Ljava/lang/String; = "wait-on-handlers"


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mComponent:Landroid/content/ComponentName;

.field private mTelecomService:Lcom/android/internal/telecom/ITelecomService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/IUserManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    return-void
.end method

.method private callerIsRoot()Z
    .registers 2

    .line 480
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/android/commands/telecom/Telecom;->mArgs:Lcom/android/modules/utils/BasicShellCommandHandler;

    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 463
    const/4 v0, 0x0

    return-object v0

    .line 465
    :cond_e
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/commands/telecom/Telecom;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 466
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "accountId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "userSnInStr":Ljava/lang/String;
    :try_start_1e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 471
    .local v3, "userSn":I
    iget-object v4, p0, Lcom/android/commands/telecom/Telecom;->mUserManager:Landroid/os/IUserManager;

    invoke-interface {v4, v3}, Landroid/os/IUserManager;->getUserHandle(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2c} :catch_34

    move-object v3, v4

    .line 475
    .local v3, "userHandle":Landroid/os/UserHandle;
    nop

    .line 476
    new-instance v4, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v4, v0, v1, v3}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v4

    .line 472
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    :catch_34
    move-exception v3

    .line 473
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "getPhoneAccountHandleFromArgs - invalid user %s"

    invoke-static {p0, v5, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid user serial number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 53
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 55
    new-instance v0, Lcom/android/commands/telecom/Telecom;

    invoke-direct {v0}, Lcom/android/commands/telecom/Telecom;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/telecom/Telecom;->run([Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 6
    .param p1, "component"    # Ljava/lang/String;

    .line 484
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 485
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_7

    .line 488
    return-object v0

    .line 486
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private runAddOrRemoveCallCompanionApp()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "isAdded":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 348
    .local v2, "isAddedBool":Z
    iget-object v3, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v3, v0, v2}, Lcom/android/internal/telecom/ITelecomService;->addOrRemoveTestCallCompanionApp(Ljava/lang/String;Z)V

    .line 349
    return-void
.end method

.method private runCleanupOrphanPhoneAccounts()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success - cleaned up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v2}, Lcom/android/internal/telecom/ITelecomService;->cleanupOrphanPhoneAccounts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  phone accounts."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method private runCleanupStuckCalls()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->cleanupStuckCalls()V

    .line 382
    return-void
.end method

.method private runGetDefaultDialer()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method private runGetMaxPhones()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 442
    return-void
.end method

.method private runGetSimConfig()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->multi_sim_config()Ljava/util/Optional;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method private runGetSystemDialer()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private runLogMark()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/commands/telecom/Telecom;->mArgs:Lcom/android/modules/utils/BasicShellCommandHandler;

    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, " "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->requestLogMark(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method private runRegisterPhoneAccount()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 297
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "label":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v2

    .line 299
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 300
    .local v2, "account":Landroid/telecom/PhoneAccount;
    iget-object v3, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v3, v2}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 301
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " registered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private runRegisterSimPhoneAccount()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, "isEmergencyAccount":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_22

    .line 308
    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_86

    :cond_11
    goto :goto_1b

    :pswitch_12
    const-string v4, "-e"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_1c

    :goto_1b
    move v3, v1

    :goto_1c
    packed-switch v3, :pswitch_data_8c

    goto :goto_21

    .line 310
    :pswitch_20
    const/4 v0, 0x1

    .line 311
    :goto_21
    goto :goto_1

    .line 315
    :cond_22
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 316
    .local v1, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, "address":Ljava/lang/String;
    nop

    .line 320
    if-eqz v0, :cond_33

    const/16 v3, 0x10

    :cond_33
    or-int/lit8 v3, v3, 0x6

    .line 321
    .local v3, "capabilities":I
    invoke-static {v1, v4}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 323
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telecom/PhoneAccount$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 324
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telecom/PhoneAccount$Builder;->setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 325
    invoke-virtual {v6, v3}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 326
    invoke-virtual {v6, v4}, Landroid/telecom/PhoneAccount$Builder;->setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 327
    const-string v7, "tel"

    invoke-virtual {v6, v7}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 328
    const-string v7, "voicemail"

    invoke-virtual {v6, v7}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 329
    invoke-virtual {v6}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v6

    .line 330
    .local v6, "account":Landroid/telecom/PhoneAccount;
    iget-object v7, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v7, v6}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 331
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Success - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " registered."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x5d8
        :pswitch_12
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method

.method private runResetCarMode()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->resetCarMode()V

    .line 391
    return-void
.end method

.method private runSetCallDiagnosticService()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    .line 354
    :cond_d
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setTestCallDiagnosticService(Ljava/lang/String;)V

    .line 355
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set as call diagnostic service."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method private runSetDefaultDialer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    .line 396
    :cond_d
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setTestDefaultDialer(Ljava/lang/String;)V

    .line 397
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set as override default dialer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method private runSetEmergencyPhoneAccountPackageFilter()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/android/commands/telecom/Telecom;->mArgs:Lcom/android/modules/utils/BasicShellCommandHandler;

    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 447
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->setTestEmergencyPhoneAccountPackageNameFilter(Ljava/lang/String;)V

    .line 448
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Success - filter cleared"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_37

    .line 450
    :cond_1a
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setTestEmergencyPhoneAccountPackageNameFilter(Ljava/lang/String;)V

    .line 451
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success = filter set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    :goto_37
    return-void
.end method

.method private runSetPhoneAccountEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 287
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telecom/ITelecomService;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    move-result v1

    .line 288
    .local v1, "success":Z
    if-eqz v1, :cond_30

    .line 289
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_22

    const-string v4, " enabled."

    goto :goto_24

    :cond_22
    const-string v4, " disabled."

    :goto_24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4e

    .line 291
    :cond_30
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error - is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " a valid PhoneAccount?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    :goto_4e
    return-void
.end method

.method private runSetSimCount()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->callerIsRoot()Z

    move-result v0

    if-nez v0, :cond_e

    .line 422
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "set-sim-count requires adb root"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    return-void

    .line 425
    :cond_e
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 426
    .local v0, "numSims":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting sim count to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Device may reboot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    .line 428
    return-void
.end method

.method private runSetSystemDialer()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "flatComponentName":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 403
    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-direct {p0, v0}, Lcom/android/commands/telecom/Telecom;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 404
    .local v1, "componentName":Landroid/content/ComponentName;
    :goto_12
    iget-object v2, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v2, v1}, Lcom/android/internal/telecom/ITelecomService;->setSystemDialer(Landroid/content/ComponentName;)V

    .line 405
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set as override system dialer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method private runSetTestCallRedirectionApp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setTestDefaultCallRedirectionApp(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method private runSetTestCallScreeningApp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setTestDefaultCallScreeningApp(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method private runSetTestPhoneAcctSuggestionComponent()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "componentName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setTestPhoneAcctSuggestionComponent(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method private runSetUserSelectedOutgoingPhoneAccount()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "runSetUserSelectedOutgoingPhoneAccount"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 366
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 367
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set as default outgoing account."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private runStopBlockSuppression()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->stopBlockSuppression()V

    .line 378
    return-void
.end method

.method private runUnregisterPhoneAccount()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 372
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 373
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unregistered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private runWaitOnHandler()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    nop

    .line 178
    const-string v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 179
    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 180
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "onRun: Can\'t access telecom manager."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    const-string v0, "Error: Could not access the Telecom Manager. Is the system running?"

    invoke-virtual {p0, v0}, Lcom/android/commands/telecom/Telecom;->showError(Ljava/lang/String;)V

    .line 182
    return-void

    .line 185
    :cond_1d
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 186
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 187
    .local v0, "context":Landroid/content/Context;
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/commands/telecom/Telecom;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 188
    if-nez v2, :cond_41

    .line 189
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRun: Can\'t access telephony service."

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    const-string v1, "Error: Could not access the Telephony Service. Is the system running?"

    invoke-virtual {p0, v1}, Lcom/android/commands/telecom/Telecom;->showError(Ljava/lang/String;)V

    .line 191
    return-void

    .line 194
    :cond_41
    nop

    .line 195
    const-string v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/telecom/Telecom;->mUserManager:Landroid/os/IUserManager;

    .line 196
    if-nez v2, :cond_5d

    .line 197
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRun: Can\'t access user manager."

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    const-string v1, "Error: Could not access the User Manager. Is the system running?"

    invoke-virtual {p0, v1}, Lcom/android/commands/telecom/Telecom;->showError(Ljava/lang/String;)V

    .line 199
    return-void

    .line 201
    :cond_5d
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onRun: parsing command."

    invoke-static {p0, v3, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "command":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_220

    :cond_71
    goto/16 :goto_18c

    :sswitch_73
    const-string v4, "set-phone-acct-suggestion-component"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/4 v3, 0x6

    goto/16 :goto_18c

    :sswitch_7e
    const-string v4, "register-phone-account"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/4 v3, 0x2

    goto/16 :goto_18c

    :sswitch_89
    const-string v4, "log-mark"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0x18

    goto/16 :goto_18c

    :sswitch_95
    const-string v4, "get-sim-config"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0x15

    goto/16 :goto_18c

    :sswitch_a1
    const-string v4, "set-test-emergency-phone-account-package-filter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0x17

    goto/16 :goto_18c

    :sswitch_ad
    const-string v4, "cleanup-stuck-calls"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0xc

    goto/16 :goto_18c

    :sswitch_b9
    const-string v4, "set-default-dialer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0xf

    goto/16 :goto_18c

    :sswitch_c5
    const-string v4, "set-phone-account-disabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    move v3, v5

    goto/16 :goto_18c

    :sswitch_d0
    const-string v4, "get-default-dialer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0x10

    goto/16 :goto_18c

    :sswitch_dc
    const-string v4, "get-system-dialer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0x12

    goto/16 :goto_18c

    :sswitch_e8
    const-string v4, "set-test-call-screening-app"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/4 v3, 0x4

    goto/16 :goto_18c

    :sswitch_f3
    const-string v4, "set-phone-account-enabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    move v3, v1

    goto/16 :goto_18c

    :sswitch_fe
    const-string v4, "set-test-call-redirection-app"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/4 v3, 0x3

    goto/16 :goto_18c

    :sswitch_109
    const-string v4, "set-system-dialer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0x11

    goto/16 :goto_18c

    :sswitch_115
    const-string v4, "set-call-diagnostic-service"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/4 v3, 0x7

    goto/16 :goto_18c

    :sswitch_120
    const-string v4, "cleanup-orphan-phone-accounts"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0xd

    goto :goto_18c

    :sswitch_12b
    const-string v4, "register-sim-phone-account"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0x8

    goto :goto_18c

    :sswitch_136
    const-string v4, "set-sim-count"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0x14

    goto :goto_18c

    :sswitch_141
    const-string v4, "reset-car-mode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0xe

    goto :goto_18c

    :sswitch_14c
    const-string v4, "stop-block-suppression"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0xb

    goto :goto_18c

    :sswitch_157
    const-string v4, "add-or-remove-call-companion-app"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/4 v3, 0x5

    goto :goto_18c

    :sswitch_161
    const-string v4, "get-max-phones"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0x16

    goto :goto_18c

    :sswitch_16c
    const-string v4, "wait-on-handlers"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0x13

    goto :goto_18c

    :sswitch_177
    const-string v4, "unregister-phone-account"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0xa

    goto :goto_18c

    :sswitch_182
    const-string v4, "set-user-selected-outgoing-phone-account"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v3, 0x9

    :goto_18c
    packed-switch v3, :pswitch_data_286

    .line 280
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "onRun: unknown command: %s"

    invoke-static {p0, v1, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown command \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :pswitch_1b7
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runLogMark()V

    .line 278
    goto/16 :goto_21e

    .line 274
    :pswitch_1bc
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runSetEmergencyPhoneAccountPackageFilter()V

    .line 275
    goto/16 :goto_21e

    .line 271
    :pswitch_1c1
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runGetMaxPhones()V

    .line 272
    goto/16 :goto_21e

    .line 268
    :pswitch_1c6
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runGetSimConfig()V

    .line 269
    goto :goto_21e

    .line 265
    :pswitch_1ca
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runSetSimCount()V

    .line 266
    goto :goto_21e

    .line 262
    :pswitch_1ce
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runWaitOnHandler()V

    .line 263
    goto :goto_21e

    .line 259
    :pswitch_1d2
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runGetSystemDialer()V

    .line 260
    goto :goto_21e

    .line 256
    :pswitch_1d6
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runSetSystemDialer()V

    .line 257
    goto :goto_21e

    .line 253
    :pswitch_1da
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runGetDefaultDialer()V

    .line 254
    goto :goto_21e

    .line 250
    :pswitch_1de
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runSetDefaultDialer()V

    .line 251
    goto :goto_21e

    .line 247
    :pswitch_1e2
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runResetCarMode()V

    .line 248
    goto :goto_21e

    .line 244
    :pswitch_1e6
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runCleanupOrphanPhoneAccounts()V

    .line 245
    goto :goto_21e

    .line 241
    :pswitch_1ea
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runCleanupStuckCalls()V

    .line 242
    goto :goto_21e

    .line 238
    :pswitch_1ee
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runStopBlockSuppression()V

    .line 239
    goto :goto_21e

    .line 235
    :pswitch_1f2
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runUnregisterPhoneAccount()V

    .line 236
    goto :goto_21e

    .line 232
    :pswitch_1f6
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runSetUserSelectedOutgoingPhoneAccount()V

    .line 233
    goto :goto_21e

    .line 229
    :pswitch_1fa
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runRegisterSimPhoneAccount()V

    .line 230
    goto :goto_21e

    .line 226
    :pswitch_1fe
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runSetCallDiagnosticService()V

    .line 227
    goto :goto_21e

    .line 223
    :pswitch_202
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runSetTestPhoneAcctSuggestionComponent()V

    .line 224
    goto :goto_21e

    .line 220
    :pswitch_206
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runAddOrRemoveCallCompanionApp()V

    .line 221
    goto :goto_21e

    .line 217
    :pswitch_20a
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runSetTestCallScreeningApp()V

    .line 218
    goto :goto_21e

    .line 214
    :pswitch_20e
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runSetTestCallRedirectionApp()V

    .line 215
    goto :goto_21e

    .line 211
    :pswitch_212
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runRegisterPhoneAccount()V

    .line 212
    goto :goto_21e

    .line 208
    :pswitch_216
    invoke-direct {p0, v1}, Lcom/android/commands/telecom/Telecom;->runSetPhoneAccountEnabled(Z)V

    .line 209
    goto :goto_21e

    .line 205
    :pswitch_21a
    invoke-direct {p0, v5}, Lcom/android/commands/telecom/Telecom;->runSetPhoneAccountEnabled(Z)V

    .line 206
    nop

    .line 283
    :goto_21e
    return-void

    nop

    :sswitch_data_220
    .sparse-switch
        -0x7a8d0bd8 -> :sswitch_182
        -0x78b6b703 -> :sswitch_177
        -0x709eb1c1 -> :sswitch_16c
        -0x691ad7db -> :sswitch_161
        -0x69167f24 -> :sswitch_157
        -0x66a09118 -> :sswitch_14c
        -0x60ad7146 -> :sswitch_141
        -0x5af20f12 -> :sswitch_136
        -0x56488e52 -> :sswitch_12b
        -0x55ef451f -> :sswitch_120
        -0x55e4920d -> :sswitch_115
        -0x46f334b0 -> :sswitch_109
        -0x32e5713f -> :sswitch_fe
        -0x267cade9 -> :sswitch_f3
        -0x1f8f9cb5 -> :sswitch_e8
        -0xee99cbc -> :sswitch_dc
        -0x3510380 -> :sswitch_d0
        0x52b4e66 -> :sswitch_c5
        0x338595f4 -> :sswitch_b9
        0x3deee0bb -> :sswitch_ad
        0x5182a52a -> :sswitch_a1
        0x66476bcf -> :sswitch_95
        0x7542efb6 -> :sswitch_89
        0x79432324 -> :sswitch_7e
        0x7c1038e4 -> :sswitch_73
    .end sparse-switch

    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_21a
        :pswitch_216
        :pswitch_212
        :pswitch_20e
        :pswitch_20a
        :pswitch_206
        :pswitch_202
        :pswitch_1fe
        :pswitch_1fa
        :pswitch_1f6
        :pswitch_1f2
        :pswitch_1ee
        :pswitch_1ea
        :pswitch_1e6
        :pswitch_1e2
        :pswitch_1de
        :pswitch_1da
        :pswitch_1d6
        :pswitch_1d2
        :pswitch_1ce
        :pswitch_1ca
        :pswitch_1c6
        :pswitch_1c1
        :pswitch_1bc
        :pswitch_1b7
    .end packed-switch
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 108
    const-string v0, "usage: telecom [subcommand] [options]\nusage: telecom set-phone-account-enabled <COMPONENT> <ID> <USER_SN>\nusage: telecom set-phone-account-disabled <COMPONENT> <ID> <USER_SN>\nusage: telecom register-phone-account <COMPONENT> <ID> <USER_SN> <LABEL>\nusage: telecom register-sim-phone-account [-e] <COMPONENT> <ID> <USER_SN> <LABEL>: registers a PhoneAccount with CAPABILITY_SIM_SUBSCRIPTION and optionally CAPABILITY_PLACE_EMERGENCY_CALLS if \"-e\" is provided\nusage: telecom set-user-selected-outgoing-phone-account [-e] <COMPONENT> <ID> <USER_SN>\nusage: telecom set-test-call-redirection-app <PACKAGE>\nusage: telecom set-test-call-screening-app <PACKAGE>\nusage: telecom set-phone-acct-suggestion-component <COMPONENT>\nusage: telecom add-or-remove-call-companion-app <PACKAGE> <1/0>\nusage: telecom register-sim-phone-account <COMPONENT> <ID> <USER_SN> <LABEL> <ADDRESS>\nusage: telecom unregister-phone-account <COMPONENT> <ID> <USER_SN>\nusage: telecom set-call-diagnostic-service <PACKAGE>\nusage: telecom set-default-dialer <PACKAGE>\nusage: telecom get-default-dialer\nusage: telecom get-system-dialer\nusage: telecom wait-on-handlers\nusage: telecom set-sim-count <COUNT>\nusage: telecom get-sim-config\nusage: telecom get-max-phones\nusage: telecom stop-block-suppression: Stop suppressing the blocked number provider after a call to emergency services.\nusage: telecom cleanup-stuck-calls: Clear any disconnected calls that have gotten wedged in Telecom.\nusage: telecom cleanup-orphan-phone-accounts: remove any phone accounts that no longer have a valid UserHandle or accounts that no longer belongs to an installed package.\nusage: telecom set-emer-phone-account-filter <PACKAGE>\n\ntelecom set-phone-account-enabled: Enables the given phone account, if it has already been registered with Telecom.\n\ntelecom set-phone-account-disabled: Disables the given phone account, if it has already been registered with telecom.\n\ntelecom set-call-diagnostic-service: overrides call diagnostic service.\ntelecom set-default-dialer: Sets the override default dialer to the given component; this will override whatever the dialer role is set to.\n\ntelecom get-default-dialer: Displays the current default dialer.\n\ntelecom get-system-dialer: Displays the current system dialer.\ntelecom set-system-dialer: Set the override system dialer to the given component. To remove the override, send \"default\"\n\ntelecom wait-on-handlers: Wait until all handlers finish their work.\n\ntelecom set-sim-count: Set num SIMs (2 for DSDS, 1 for single SIM. This may restart the device.\n\ntelecom get-sim-config: Get the mSIM config string. \"DSDS\" for DSDS mode, or \"\" for single SIM\n\ntelecom get-max-phones: Get the max supported phones from the modem.\ntelecom set-test-emergency-phone-account-package-filter <PACKAGE>: sets a package name that will be used for test emergency calls. To clear, send an empty package name. Real emergency calls will still be placed over Telephony.\ntelecom log-mark <MESSAGE>: emits a message into the telecom logs.  Useful for testers to indicate where in the logs various test steps take place.\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    return-void
.end method
