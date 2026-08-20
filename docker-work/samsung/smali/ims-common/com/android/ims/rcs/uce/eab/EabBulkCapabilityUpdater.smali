.class public final Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;
.super Ljava/lang/Object;
.source "EabBulkCapabilityUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$retryRunnable;,
        Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;,
        Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;,
        Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$ContactChangedListener;,
        Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;
    }
.end annotation


# static fields
.field private static final blacklist NUM_SECS_IN_DAY:I = 0x15180

.field private static final blacklist USER_EAB_SETTING:Landroid/net/Uri;


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private final blacklist mCapabilityExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final blacklist mContactProviderListener:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$ContactChangedListener;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEabContactSyncController:Lcom/android/ims/rcs/uce/eab/EabContactSyncController;

.field private final blacklist mEabControllerImpl:Lcom/android/ims/rcs/uce/eab/EabControllerImpl;

.field private final blacklist mEabSettingListener:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsCarrierConfigEnabled:Z

.field private blacklist mIsCarrierConfigListenerRegistered:Z

.field private blacklist mIsContactProviderListenerRegistered:Z

.field private blacklist mIsEabSettingListenerRegistered:Z

.field private blacklist mRcsUceControllerCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

.field private blacklist mRefreshContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubId:I

.field private blacklist mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetTAG(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEabControllerImpl(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Lcom/android/ims/rcs/uce/eab/EabControllerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mEabControllerImpl:Lcom/android/ims/rcs/uce/eab/EabControllerImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRcsUceControllerCallback(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mRcsUceControllerCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRefreshContactList(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mRefreshContactList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUceControllerCallback(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelTimeAlert(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->cancelTimeAlert(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpiredContactList(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->getExpiredContactList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUserEnableUce(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->isUserEnableUce()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterContactProviderListener(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->registerContactProviderListener()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterEabUserSettingsListener(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->registerEabUserSettingsListener()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msyncContactAndRefreshCapabilities(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->syncContactAndRefreshCapabilities()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munRegisterContactProviderListener(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->unRegisterContactProviderListener()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 51
    sget-object v0, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "ims_rcs_uce_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->USER_EAB_SETTING:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/eab/EabControllerImpl;Lcom/android/ims/rcs/uce/eab/EabContactSyncController;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Handler;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "eabControllerImpl"    # Lcom/android/ims/rcs/uce/eab/EabControllerImpl;
    .param p4, "eabContactSyncController"    # Lcom/android/ims/rcs/uce/eab/EabContactSyncController;
    .param p5, "uceControllerCallback"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .param p6, "handler"    # Landroid/os/Handler;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsContactProviderListenerRegistered:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsEabSettingListenerRegistered:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsCarrierConfigListenerRegistered:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsCarrierConfigEnabled:Z

    .line 137
    new-instance v1, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$1;

    invoke-direct {v1, p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$1;-><init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mRcsUceControllerCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 197
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    .line 198
    iput p2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mSubId:I

    .line 199
    iput-object p3, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mEabControllerImpl:Lcom/android/ims/rcs/uce/eab/EabControllerImpl;

    .line 200
    iput-object p4, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mEabContactSyncController:Lcom/android/ims/rcs/uce/eab/EabContactSyncController;

    .line 201
    iput-object p5, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 203
    iput-object p6, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mHandler:Landroid/os/Handler;

    .line 204
    new-instance v1, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$ContactChangedListener;

    invoke-direct {v1, p0, p6}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$ContactChangedListener;-><init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContactProviderListener:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$ContactChangedListener;

    .line 205
    new-instance v1, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;

    invoke-direct {v1, p0, p6}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;-><init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mEabSettingListener:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;

    .line 206
    new-instance v1, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;-><init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener-IA;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mCapabilityExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create EabBulkCapabilityUpdater() subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->enableBulkCapability()V

    .line 211
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->updateExpiredTimeAlert()V

    .line 212
    return-void
.end method

.method private blacklist cancelTimeAlert(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 336
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v1, "cancelTimeAlert."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 338
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mCapabilityExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 339
    return-void
.end method

.method private blacklist enableBulkCapability()V
    .registers 6

    .line 215
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->isUserEnableUce()Z

    move-result v0

    .line 216
    .local v0, "isUserEnableUce":Z
    iget v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mSubId:I

    const-string v2, "ims.rcs_bulk_capability_exchange_bool"

    invoke-direct {p0, v2, v1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v1

    .line 219
    .local v1, "isSupportBulkCapabilityExchange":Z
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserEnableUce: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSupportBulkCapabilityExchange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz v0, :cond_41

    if-eqz v1, :cond_41

    .line 223
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;-><init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable-IA;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsCarrierConfigEnabled:Z

    goto :goto_53

    .line 225
    :cond_41
    if-nez v0, :cond_4c

    if-eqz v1, :cond_4c

    .line 226
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->registerEabUserSettingsListener()V

    .line 227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsCarrierConfigEnabled:Z

    goto :goto_53

    .line 229
    :cond_4c
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v3, "Not support bulk capability exchange."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_53
    return-void
.end method

.method private blacklist getBooleanCarrierConfig(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 342
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 343
    .local v0, "mConfigManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 344
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_11

    .line 345
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 347
    :cond_11
    if-eqz v1, :cond_18

    .line 348
    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 350
    :cond_18
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfigForSubId(subId) is null. Return the default value of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private blacklist getExpiredContactList()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v0, "refreshList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mEabControllerImpl:Lcom/android/ims/rcs/uce/eab/EabControllerImpl;

    iget v4, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mSubId:I

    .line 373
    invoke-virtual {v3, v4}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getCapabilityCacheExpiration(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 374
    .local v1, "expiredTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(mechanism=1 AND presence_request_timestamp<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "selection":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR (mechanism=2 AND options_request_timestamp<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 382
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/ims/rcs/uce/eab/EabProvider;->ALL_DATA_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 385
    .local v4, "result":Landroid/database/Cursor;
    :goto_5a
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 386
    nop

    .line 387
    const-string v5, "phone_number"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 386
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "phoneNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v5    # "phoneNumber":Ljava/lang/String;
    goto :goto_5a

    .line 390
    :cond_73
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 391
    return-object v0
.end method

.method private blacklist getLeastExpiredTimestamp()J
    .registers 10

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(mechanism=1 AND presence_request_timestamp IS NOT NULL)  OR (mechanism=2 AND options_request_timestamp IS NOT NULL)  AND subscription_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NOT NULL  AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "selection":Ljava/lang/String;
    const-wide v7, 0x7fffffffffffffffL

    .line 293
    .local v7, "minTimestamp":J
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->ALL_DATA_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 297
    .local v1, "result":Landroid/database/Cursor;
    if-eqz v1, :cond_7d

    .line 298
    :goto_4a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 299
    nop

    .line 300
    const-string v2, "mechanism"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 299
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 302
    .local v2, "mechanism":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_69

    .line 303
    const-string v3, "presence_request_timestamp"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .local v3, "timestamp":J
    goto :goto_73

    .line 306
    .end local v3    # "timestamp":J
    :cond_69
    const-string v3, "options_request_timestamp"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 310
    .restart local v3    # "timestamp":J
    :goto_73
    cmp-long v5, v3, v7

    if-gez v5, :cond_78

    .line 311
    move-wide v7, v3

    .line 313
    .end local v2    # "mechanism":I
    .end local v3    # "timestamp":J
    :cond_78
    goto :goto_4a

    .line 314
    :cond_79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_84

    .line 316
    :cond_7d
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v3, "getLeastExpiredTimestamp() cursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_84
    return-wide v7
.end method

.method private blacklist isUserEnableUce()Z
    .registers 7

    .line 356
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsManager;

    .line 357
    .local v0, "manager":Landroid/telephony/ims/ImsManager;
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 358
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v3, "ImsManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v1

    .line 362
    :cond_15
    :try_start_15
    iget v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v2

    .line 363
    .local v2, "rcsManager":Landroid/telephony/ims/ImsRcsManager;
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroid/telephony/ims/ImsRcsManager;->getUceAdapter()Landroid/telephony/ims/RcsUceAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/RcsUceAdapter;->isUceSettingEnabled()Z

    move-result v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_25} :catch_29

    if-eqz v3, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1

    .line 364
    .end local v2    # "rcsManager":Landroid/telephony/ims/ImsRcsManager;
    :catch_29
    move-exception v2

    .line 365
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasUserEnabledUce: exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private blacklist registerContactProviderListener()V
    .registers 5

    .line 402
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v1, "registerContactProviderListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsContactProviderListenerRegistered:Z

    .line 404
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContactProviderListener:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$ContactChangedListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 408
    return-void
.end method

.method private blacklist registerEabUserSettingsListener()V
    .registers 5

    .line 411
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v1, "registerEabUserSettingsListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsEabSettingListenerRegistered:Z

    .line 413
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->USER_EAB_SETTING:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mEabSettingListener:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 417
    return-void
.end method

.method private blacklist setTimeAlert(Landroid/content/Context;J)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wakeupTimeMs"    # J

    .line 322
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 326
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x4105180000000000L    # 172800.0

    mul-double/2addr v1, v3

    double-to-int v8, v1

    .line 327
    .local v8, "jitterTimeSec":I
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setTimeAlert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", jitterTimeSec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p2

    int-to-long v3, v8

    add-long/2addr v3, v1

    iget-object v5, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mCapabilityExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 333
    return-void
.end method

.method private blacklist syncContactAndRefreshCapabilities()V
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mEabContactSyncController:Lcom/android/ims/rcs/uce/eab/EabContactSyncController;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->syncContactToEabProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mRefreshContactList:Ljava/util/List;

    .line 235
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh contacts number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mRefreshContactList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    if-nez v0, :cond_34

    .line 238
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v1, "mUceControllerCallback is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 243
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mRefreshContactList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_45

    .line 244
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mRefreshContactList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mRcsUceControllerCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->refreshCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_45} :catch_46

    .line 249
    :cond_45
    goto :goto_4e

    .line 247
    :catch_46
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v2, "mUceControllerCallback RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4e
    return-void
.end method

.method private blacklist unRegisterContactProviderListener()V
    .registers 3

    .line 420
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v1, "unRegisterContactProviderListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsContactProviderListenerRegistered:Z

    if-eqz v0, :cond_19

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsContactProviderListenerRegistered:Z

    .line 423
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContactProviderListener:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$ContactChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 425
    :cond_19
    return-void
.end method

.method private blacklist unRegisterEabUserSettings()V
    .registers 3

    .line 428
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v1, "unRegisterEabUserSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsEabSettingListenerRegistered:Z

    if-eqz v0, :cond_19

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsEabSettingListenerRegistered:Z

    .line 431
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mEabSettingListener:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 433
    :cond_19
    return-void
.end method


# virtual methods
.method public blacklist onCarrierConfigChanged()V
    .registers 5

    .line 440
    iget v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mSubId:I

    const-string v1, "ims.rcs_bulk_capability_exchange_bool"

    invoke-direct {p0, v1, v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v0

    .line 443
    .local v0, "isSupportBulkCapabilityExchange":Z
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Carrier config changed. isCarrierConfigEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsCarrierConfigEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSupportBulkCapabilityExchange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsCarrierConfigEnabled:Z

    if-nez v1, :cond_3c

    if-eqz v0, :cond_3c

    .line 447
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->enableBulkCapability()V

    .line 448
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->updateExpiredTimeAlert()V

    .line 449
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mIsCarrierConfigEnabled:Z

    goto :goto_43

    .line 450
    :cond_3c
    if-eqz v1, :cond_43

    if-nez v0, :cond_43

    .line 451
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->onDestroy()V

    .line 453
    :cond_43
    :goto_43
    return-void
.end method

.method protected blacklist onDestroy()V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->cancelTimeAlert(Landroid/content/Context;)V

    .line 397
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->unRegisterContactProviderListener()V

    .line 398
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->unRegisterEabUserSettings()V

    .line 399
    return-void
.end method

.method public blacklist setUceRequestCallback(Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)V
    .registers 2
    .param p1, "uceControllerCallback"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 436
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 437
    return-void
.end method

.method protected blacklist updateExpiredTimeAlert()V
    .registers 8

    .line 253
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->isUserEnableUce()Z

    move-result v0

    .line 254
    .local v0, "isUserEnableUce":Z
    iget v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mSubId:I

    const-string v2, "ims.rcs_bulk_capability_exchange_bool"

    invoke-direct {p0, v2, v1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v1

    .line 257
    .local v1, "isSupportBulkCapabilityExchange":Z
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateExpiredTimeAlert(), isUserEnableUce: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSupportBulkCapabilityExchange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz v0, :cond_73

    if-eqz v1, :cond_73

    .line 261
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->getLeastExpiredTimestamp()J

    move-result-wide v2

    .line 262
    .local v2, "expiredTimestamp":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_47

    .line 263
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t find min timestamp in eab provider"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 266
    :cond_47
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mEabControllerImpl:Lcom/android/ims/rcs/uce/eab/EabControllerImpl;

    iget v5, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mSubId:I

    invoke-virtual {v4, v5}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getCapabilityCacheExpiration(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 267
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set time alert at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->cancelTimeAlert(Landroid/content/Context;)V

    .line 269
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->setTimeAlert(Landroid/content/Context;J)V

    .line 271
    .end local v2    # "expiredTimestamp":J
    :cond_73
    return-void
.end method
