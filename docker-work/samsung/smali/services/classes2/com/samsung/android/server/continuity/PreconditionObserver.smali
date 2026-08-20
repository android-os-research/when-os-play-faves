.class public Lcom/samsung/android/server/continuity/PreconditionObserver;
.super Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;
.source "PreconditionObserver.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAccountsByType()[Landroid/accounts/Account;
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public initContinuitySetting()V
    .registers 5

    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    const-string v2, "mcf_continuity"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_20

    const/4 v0, 0x0

    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_1d

    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isHighPowerConsumptionChipset()Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    .line 29
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setContinuitySetting(I)V

    :cond_20
    return-void
.end method

.method public isEnableSettings(Ljava/lang/String;)Z
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p0}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_11

    move v1, p1

    :cond_11
    return v1
.end method

.method public registerContinuityObserver()V
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mcf_continuity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mSettingObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerMultiControlObserver()V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_control_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mSettingObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 9

    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public registerVideoCallContinuityObserver()V
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vcc_continuity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mSettingObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public setContinuitySetting(I)V
    .registers 5

    .line 35
    invoke-static {}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupportedContinuity()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setContinuitySetting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    const-string v2, "mcf_continuity"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->logContinuitySettingEnable()V

    :cond_30
    return-void
.end method
