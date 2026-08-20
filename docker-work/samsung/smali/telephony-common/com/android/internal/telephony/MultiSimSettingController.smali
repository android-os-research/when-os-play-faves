.class public Lcom/android/internal/telephony/MultiSimSettingController;
.super Landroid/os/Handler;
.source "MultiSimSettingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;,
        Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_RADIO_STATE_CHANGED:I = 0x9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final blacklist PHONE_ON_KEY:[Ljava/lang/String;

.field protected static blacklist sInstance:Lcom/android/internal/telephony/MultiSimSettingController;


# instance fields
.field private blacklist mCallbacksCount:I

.field private blacklist mCarrierConfigLoadedSubIds:[I

.field protected final blacklist mContext:Landroid/content/Context;

.field private blacklist mGetActiveSubIds:[I

.field private blacklist mInitialHandling:Z

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mIsAskEverytimeSupportedForSms:Z

.field private blacklist mPrimarySubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mSubController:Lcom/android/internal/telephony/SubscriptionController;

.field private blacklist mSubInfoInitialized:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$RbJpJy_HBxiXzhhX0KNe_nuy924(Lcom/android/internal/telephony/MultiSimSettingController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->lambda$updateDefaults$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VEEe7Jg9lef-ygoTqgFvFuZnG98(Lcom/android/internal/telephony/MultiSimSettingController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->lambda$updateDefaults$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZRLPQnipRAwa4DyriX_mbKkgmoU(Lcom/android/internal/telephony/MultiSimSettingController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->lambda$updateDefaults$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ohz_22tIDTP8YX7Jey9pbQUbkbA(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->lambda$updatePrimarySubListAndGetChangeType$4(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$yUAZCZkERWeqfiD2r1eHWOsx_ok(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->lambda$updatePrimarySubListAndGetChangeType$3(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    const-string v0, "phone1_on"

    const-string v1, "phone2_on"

    .line 136
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MultiSimSettingController;->PHONE_ON_KEY:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 141
    sput-object v0, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 245
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mInitialHandling:Z

    .line 173
    new-instance v0, Lcom/android/internal/telephony/MultiSimSettingController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MultiSimSettingController$1;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    iput-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 247
    iput-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    const-string p2, "phone"

    .line 250
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 251
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p2

    .line 252
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    const/4 v1, -0x1

    .line 253
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    const/16 p2, 0x8

    const/4 v1, 0x0

    .line 255
    invoke-static {p0, p2, v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x11101be

    .line 259
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mIsAskEverytimeSupportedForSms:Z

    .line 260
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "MultiSimSettingController"

    const/16 p1, 0x40

    .line 263
    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneFactory;->addLocalLog(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist areSubscriptionsInSameGroup(II)Z
    .registers 6

    .line 922
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 923
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_27

    :cond_e
    const/4 v0, 0x1

    if-ne p1, p2, :cond_12

    return v0

    .line 926
    :cond_12
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getGroupUuid(I)Landroid/os/ParcelUuid;

    move-result-object p1

    .line 927
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getGroupUuid(I)Landroid/os/ParcelUuid;

    move-result-object p0

    if-eqz p1, :cond_27

    .line 928
    invoke-virtual {p1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    move v1, v0

    :cond_27
    :goto_27
    return v1
.end method

.method private blacklist deactivateGroupedOpportunisticSubscriptionIfNeeded()V
    .registers 5

    .line 1037
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSubInfoInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1039
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 1040
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1039
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1042
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_20

    return-void

    .line 1044
    :cond_20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1045
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isGroupDisabled()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[deactivateGroupedOpptSubIfNeeded] Deactivating grouped opportunistic subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1049
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->deactivateSubscription(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_24

    :cond_5e
    return-void
.end method

.method private blacklist deactivateSubscription(Landroid/telephony/SubscriptionInfo;)V
    .registers 7

    .line 1056
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[deactivateSubscription] eSIM profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v1, "euicc"

    .line 1059
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    const/4 v1, -0x1

    .line 1061
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x4000000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 1060
    invoke-virtual {v0, v1, p1, p0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V

    :cond_3e
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/MultiSimSettingController;
    .registers 3

    .line 221
    const-class v0, Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-enter v0

    .line 222
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    if-nez v1, :cond_e

    const-string v1, "MultiSimSettingController"

    const-string v2, "getInstance null"

    .line 223
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 227
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist getSubState(I)I
    .registers 6

    .line 1228
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mGetActiveSubIds:[I

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 1229
    array-length v1, p0

    move v2, v0

    :goto_7
    if-ge v2, v1, :cond_12

    aget v3, p0, v2

    if-ne v3, p1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static blacklist init(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)Lcom/android/internal/telephony/MultiSimSettingController;
    .registers 4

    .line 234
    const-class v0, Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-enter v0

    .line 235
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    if-nez v1, :cond_f

    .line 236
    new-instance v1, Lcom/android/internal/telephony/MultiSimSettingController;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V

    sput-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    goto :goto_27

    :cond_f
    const-string p0, "MultiSimSettingController"

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() called multiple times!  sInstance = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_27
    sget-object p0, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-exit v0

    return-object p0

    :catchall_2b
    move-exception p0

    .line 241
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method private blacklist isReadyToReevaluate()Z
    .registers 4

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isCarrierConfigLoadedForAllSub()Z

    move-result v0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadyToReevaluate: subInfoInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", carrierConfigsLoaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 527
    iget-boolean p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    return p0
.end method

.method private synthetic blacklist lambda$updateDefaults$0(I)V
    .registers 2

    .line 679
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateDefaults$1(I)V
    .registers 2

    .line 685
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateDefaults$2(I)V
    .registers 2

    .line 692
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    return-void
.end method

.method private static synthetic blacklist lambda$updatePrimarySubListAndGetChangeType$3(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    .line 715
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic blacklist lambda$updatePrimarySubListAndGetChangeType$4(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;
    .registers 1

    .line 716
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    const-string p0, "MultiSimSettingController"

    .line 1218
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneFactory;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string p0, "MultiSimSettingController"

    .line 1223
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneFactory;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onAllSubscriptionsLoaded()V
    .registers 7

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllSubscriptionsLoaded: mSubInfoInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 404
    iget-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    if-nez v0, :cond_32

    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    .line 406
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_32

    aget-object v3, v0, v2

    .line 407
    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 412
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->registerDataSettingsControllerCallbackAsNeeded()V

    .line 413
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->reEvaluateAll()V

    return-void
.end method

.method private blacklist onCarrierConfigChanged(II)V
    .registers 7

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarrierConfigChanged phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 453
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 454
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Carrier config change with invalid phoneId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->loge(Ljava/lang/String;)V

    return-void

    :cond_37
    const/4 v0, -0x1

    if-ne p2, v0, :cond_78

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    .line 463
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_78

    .line 464
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_78

    const/4 v2, 0x0

    .line 466
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 467
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarrierConfigChanged with invalid subId while subd "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is active and its config is loaded"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->loge(Ljava/lang/String;)V

    .line 469
    aget p2, v0, v2

    .line 474
    :cond_78
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    aput p2, p0, p1

    return-void
.end method

.method private blacklist onDefaultDataSettingChanged()V
    .registers 2

    const-string v0, "onDefaultDataSettingChanged"

    .line 542
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->disableDataForNonDefaultNonOpportunisticSubscriptions()V

    return-void
.end method

.method private blacklist onMultiSimConfigChanged(I)V
    .registers 7

    .line 506
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    array-length v1, v0

    if-ge p1, v1, :cond_b

    const/4 v1, -0x1

    .line 507
    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 509
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_20

    aget-object v2, p1, v1

    .line 510
    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 512
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->registerDataSettingsControllerCallbackAsNeeded()V

    return-void
.end method

.method private blacklist onRoamingDataEnabled(IZ)V
    .registers 4

    const-string v0, "onRoamingDataEnabled"

    .line 391
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->setRoamingDataEnabledForGroup(IZ)V

    .line 395
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDataRoaming(II)I

    return-void
.end method

.method private blacklist onSubscriptionGroupChanged(Landroid/os/ParcelUuid;)V
    .registers 8

    const-string v0, "data_roaming"

    const-string v1, "mobile_data"

    const-string v2, "onSubscriptionGroupChanged"

    .line 553
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 556
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 555
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 557
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_95

    :cond_24
    const/4 v2, 0x0

    .line 561
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 562
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 563
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 564
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v5

    if-eqz v5, :cond_33

    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/SubscriptionController;->isOpportunistic(I)Z

    move-result v5

    if-nez v5, :cond_33

    move v3, v4

    .line 569
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refSubId is "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 573
    :try_start_69
    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4
    :try_end_6f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_69 .. :try_end_6f} :catch_73

    .line 575
    :try_start_6f
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/MultiSimSettingController;->onUserDataEnabled(IZ)V
    :try_end_72
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6f .. :try_end_72} :catch_74

    goto :goto_7d

    :catch_73
    move v4, v2

    .line 578
    :catch_74
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, p1, v4}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v1

    .line 580
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->onUserDataEnabled(IZ)V

    .line 585
    :goto_7d
    :try_start_7d
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 587
    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->onRoamingDataEnabled(IZ)V
    :try_end_86
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7d .. :try_end_86} :catch_87

    goto :goto_90

    .line 590
    :catch_87
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1, v2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p1

    .line 592
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onRoamingDataEnabled(IZ)V

    .line 596
    :goto_90
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->syncGroupedSetting(I)V

    :cond_95
    :goto_95
    return-void
.end method

.method private blacklist onSubscriptionsChanged()V
    .registers 2

    const-string v0, "onSubscriptionsChanged"

    .line 423
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->reEvaluateAll()V

    return-void
.end method

.method private blacklist reEvaluateAll()V
    .registers 2

    .line 532
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isReadyToReevaluate()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 533
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaults()V

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->disableDataForNonDefaultNonOpportunisticSubscriptions()V

    .line 535
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->deactivateGroupedOpportunisticSubscriptionIfNeeded()V

    return-void
.end method

.method private blacklist registerDataSettingsControllerCallbackAsNeeded()V
    .registers 7

    .line 1207
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1208
    iget v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCallbacksCount:I

    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_29

    .line 1209
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1210
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;

    aget-object v4, v0, v1

    new-instance v5, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;-><init>(Lcom/android/internal/telephony/Phone;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1214
    :cond_29
    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCallbacksCount:I

    return-void
.end method

.method private blacklist setRoamingDataEnabledForGroup(IZ)V
    .registers 6

    .line 973
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 974
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 975
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getGroupUuid(I)Landroid/os/ParcelUuid;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 976
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 974
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1d

    return-void

    .line 980
    :cond_1d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 982
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 983
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const-string v2, "data_roaming"

    .line 982
    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    goto :goto_21

    :cond_39
    return-void
.end method

.method private blacklist updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 994
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;Z)Z

    move-result p0

    return p0
.end method

.method private blacklist updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;",
            "Z)Z"
        }
    .end annotation

    .line 1001
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_4e

    .line 1002
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateDefaultValue] Record.id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1009
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v2

    if-nez v2, :cond_39

    if-nez p4, :cond_b

    if-ne p2, v1, :cond_b

    .line 1012
    :cond_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[updateDefaultValue] updates to subId="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    move v1, v0

    :cond_4e
    if-eq p2, v1, :cond_6f

    .line 1019
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[updateDefaultValue: subId] from "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1020
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;->update(I)V

    .line 1023
    :cond_6f
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 1024
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result p0

    if-nez p0, :cond_7d

    const/4 p0, 0x0

    return p0

    .line 1030
    :cond_7d
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    return p0
.end method

.method private blacklist updatePrimarySubListAndGetChangeType(Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)I"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    .line 715
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda4;-><init>()V

    .line 716
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 717
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    .line 722
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mGetActiveSubIds:[I

    .line 724
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_32
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 725
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/MultiSimSettingController;->PHONE_ON_KEY:[Ljava/lang/String;

    .line 726
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    aget-object v6, v6, v7

    .line 725
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_32

    .line 729
    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mGetActiveSubIds:[I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    aput v3, v4, v2

    move v2, v5

    goto :goto_32

    .line 734
    :cond_5f
    iget-boolean p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mInitialHandling:Z

    if-eqz p1, :cond_67

    .line 735
    iput-boolean v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mInitialHandling:Z

    const/4 p0, 0x6

    return p0

    .line 738
    :cond_67
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    return v1

    .line 739
    :cond_70
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_7d

    return v4

    .line 741
    :cond_7d
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_c2

    .line 744
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 746
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 747
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v5

    if-eqz v5, :cond_a3

    move v2, v4

    goto :goto_bc

    :cond_bb
    move v2, v1

    :goto_bc
    if-nez v2, :cond_8f

    const/4 p0, 0x3

    return p0

    :cond_c0
    const/4 p0, 0x4

    return p0

    .line 759
    :cond_c2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c6
    :goto_c6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 760
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    goto :goto_c6

    .line 761
    :cond_e3
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    if-nez v1, :cond_10b

    .line 762
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_109

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 763
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v1

    if-eqz v1, :cond_f1

    const/4 p0, 0x7

    return p0

    :cond_109
    const/4 p0, 0x2

    return p0

    .line 769
    :cond_10b
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->isOpportunistic(I)Z

    move-result v1

    if-nez v1, :cond_c6

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePrimarySubListAndGetChangeType]: missing active primary subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->loge(Ljava/lang/String;)V

    goto :goto_c6

    :cond_128
    const/4 p0, 0x5

    return p0
.end method

.method private blacklist updateUserPreferences(Ljava/util/List;ZZZ)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 1077
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17f

    iget-object v1, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    goto/16 :goto_17f

    .line 1087
    :cond_12
    iget-object v1, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "multi_sim_existing_data_call"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1089
    iget-object v3, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "multi_sim_existing_voice_call"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1091
    iget-object v5, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "multi_sim_existing_sms"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1094
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUserPreferences:  dds = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " voice = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " sms = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v9, v4

    :cond_60
    :goto_60
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1101
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v11

    if-ne v11, v2, :cond_60

    if-ne v9, v4, :cond_60

    move v9, v10

    goto :goto_60

    :cond_7a
    if-ne v9, v4, :cond_82

    const-string v1, "updateUserPreferences: autoDefaultSubId is -1"

    .line 1107
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    return-void

    :cond_82
    const-string v6, "ro.csc.countryiso_code"

    const-string v10, ""

    .line 1111
    invoke-static {v6, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "CN"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_ae

    .line 1112
    invoke-static {v6, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "HK"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ae

    .line 1113
    invoke-static {v6, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "TW"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    goto :goto_ae

    :cond_ac
    move v6, v12

    goto :goto_af

    :cond_ae
    :goto_ae
    move v6, v2

    .line 1115
    :goto_af
    iget-object v10, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "prefered_voice_call"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_be

    move v12, v2

    :cond_be
    if-nez p3, :cond_eb

    if-eqz v12, :cond_cd

    .line 1117
    iget-object v10, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mGetActiveSubIds:[I

    array-length v10, v10

    if-eq v10, v2, :cond_cd

    const-string v2, "updateUserPreferences: update invalid subid for always ask"

    .line 1118
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    goto :goto_e6

    .line 1121
    :cond_cd
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v2

    if-nez v2, :cond_e5

    .line 1122
    iget-object v2, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSlotId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 1123
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v2

    if-nez v2, :cond_e6

    move v4, v9

    goto :goto_e6

    :cond_e5
    move v4, v3

    .line 1128
    :cond_e6
    :goto_e6
    iget-object v2, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    :cond_eb
    if-nez p4, :cond_109

    .line 1132
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v2

    if-nez v2, :cond_104

    .line 1133
    iget-object v2, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSlotId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 1134
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v2

    if-nez v2, :cond_104

    move v5, v9

    .line 1138
    :cond_104
    iget-object v2, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    :cond_109
    if-eqz v6, :cond_12c

    .line 1142
    invoke-static {}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getPreferredDataSubId()I

    move-result v2

    .line 1143
    iget-object v3, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUserPreferences: ForChina, prefDataSubId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    move v1, v2

    .line 1149
    :cond_12c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v2

    if-nez v2, :cond_143

    .line 1150
    iget-object v1, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSlotId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 1151
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v2

    if-nez v2, :cond_143

    goto :goto_144

    :cond_143
    move v9, v1

    :goto_144
    if-nez v6, :cond_148

    if-nez p2, :cond_14d

    .line 1157
    :cond_148
    iget-object v1, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 1183
    :cond_14d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUserPreferences: after dds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 1184
    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 1185
    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1183
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    :cond_17f
    :goto_17f
    return-void
.end method


# virtual methods
.method protected blacklist disableDataForNonDefaultNonOpportunisticSubscriptions()V
    .registers 1

    .line 895
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isReadyToReevaluate()Z

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_6c

    goto/16 :goto_6a

    .line 353
    :pswitch_9
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    array-length v0, p1

    move v1, v2

    :goto_f
    if-ge v1, v0, :cond_6a

    aget-object v3, p1, v1

    .line 354
    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    const-string p1, "Radio unavailable. Clearing sub info initialized flag."

    .line 355
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 356
    iput-boolean v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    goto :goto_6a

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 349
    :pswitch_27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 350
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onMultiSimConfigChanged(I)V

    goto :goto_6a

    .line 344
    :pswitch_37
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 345
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 346
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onCarrierConfigChanged(II)V

    goto :goto_6a

    .line 341
    :pswitch_3f
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->onDefaultDataSettingChanged()V

    goto :goto_6a

    .line 337
    :pswitch_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/ParcelUuid;

    .line 338
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onSubscriptionGroupChanged(Landroid/os/ParcelUuid;)V

    goto :goto_6a

    .line 334
    :pswitch_4b
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->onSubscriptionsChanged()V

    goto :goto_6a

    .line 331
    :pswitch_4f
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->onAllSubscriptionsLoaded()V

    goto :goto_6a

    .line 325
    :pswitch_53
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 326
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_5a

    goto :goto_5b

    :cond_5a
    move v1, v2

    .line 327
    :goto_5b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->onRoamingDataEnabled(IZ)V

    goto :goto_6a

    .line 319
    :pswitch_5f
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 320
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_66

    goto :goto_67

    :cond_66
    move v1, v2

    .line 321
    :goto_67
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->onUserDataEnabled(IZ)V

    :cond_6a
    :goto_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_43
        :pswitch_3f
        :pswitch_37
        :pswitch_27
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist isCarrierConfigLoadedForAllSub()Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubIdList(Z)[I

    move-result-object v0

    .line 486
    array-length v2, v0

    move v3, v1

    :goto_9
    const/4 v4, 0x1

    if-ge v3, v2, :cond_3c

    aget v5, v0, v3

    .line 488
    iget-object v6, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    array-length v7, v6

    move v8, v1

    :goto_12
    if-ge v8, v7, :cond_1c

    aget v9, v6, v8

    if-ne v9, v5, :cond_19

    goto :goto_1d

    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_1c
    move v4, v1

    :goto_1d
    if-nez v4, :cond_39

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Carrier config subId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not loaded."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    return v1

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_3c
    return v4
.end method

.method public blacklist notifyAllSubscriptionLoaded()V
    .registers 2

    const/4 v0, 0x3

    .line 290
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifyCarrierConfigChanged(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x7

    .line 448
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifyDefaultDataSubChanged()V
    .registers 2

    const/4 v0, 0x6

    .line 312
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifyRoamingDataEnabled(IZ)V
    .registers 4

    .line 280
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    .line 281
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method

.method public blacklist notifySubscriptionGroupChanged(Landroid/os/ParcelUuid;)V
    .registers 3

    const/4 v0, 0x5

    .line 305
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifySubscriptionInfoChanged()V
    .registers 2

    const-string v0, "notifySubscriptionInfoChanged"

    .line 297
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 298
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifyUserDataEnabled(IZ)V
    .registers 4

    .line 271
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 272
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method

.method public blacklist onPhoneRemoved()V
    .registers 3

    const-string v0, "onPhoneRemoved"

    .line 435
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 440
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->reEvaluateAll()V

    return-void

    .line 437
    :cond_13
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This method must be called from the same looper as MultiSimSettingController."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected blacklist onUserDataEnabled(IZ)V
    .registers 5

    const-string v0, "onUserDataEnabled"

    .line 371
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->setUserDataEnabledForGroup(IZ)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    if-eq v1, p1, :cond_3e

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->isOpportunistic(I)Z

    move-result v1

    if-nez v1, :cond_3e

    if-eqz p2, :cond_3e

    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 379
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result p2

    if-eqz p2, :cond_3e

    if-eqz v0, :cond_3e

    .line 381
    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "user_preferred_data_sub"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    :cond_3e
    return-void
.end method

.method protected blacklist setUserDataEnabledForGroup(IZ)V
    .registers 6

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserDataEnabledForGroup subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 938
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getGroupUuid(I)Landroid/os/ParcelUuid;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 939
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 937
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_35

    return-void

    .line 943
    :cond_35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_39
    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 944
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 946
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 948
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 952
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_72

    .line 953
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 955
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 953
    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataEnabled(IZLjava/lang/String;)V

    goto :goto_39

    .line 957
    :cond_72
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(ZZ)V

    goto :goto_39

    .line 962
    :cond_7a
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    goto :goto_39

    :cond_82
    return-void
.end method

.method protected blacklist updateDefaults()V
    .registers 6

    const-string v0, "updateDefaults"

    .line 614
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 616
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isReadyToReevaluate()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 619
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "type_to_set_preferred_slot"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateDefaults]: type_to_set_preferred_slot :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    return-void

    .line 626
    :cond_31
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 627
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 628
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 627
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 630
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "[updateDefaultValues] No active sub. Setting default to INVALID sub."

    .line 632
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 634
    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mGetActiveSubIds:[I

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 638
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    return-void

    .line 642
    :cond_66
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->updatePrimarySubListAndGetChangeType(Ljava/util/List;)I

    move-result v0

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateDefaultValues] change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    if-nez v0, :cond_81

    return-void

    .line 651
    :cond_81
    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_cd

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9d

    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    .line 652
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 653
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ne v0, v1, :cond_cd

    .line 654
    :cond_9d
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateDefaultValues] to only primary sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 658
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    return-void

    .line 665
    :cond_cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateDefaultValues] records: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "prefered_voice_call"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f2

    goto :goto_f3

    :cond_f2
    move v1, v4

    .line 670
    :goto_f3
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v0

    if-eq v0, v2, :cond_107

    if-eqz v1, :cond_107

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    const-string v0, "[updateDefaultValues] Update DefaultVoiceSubId INVALID_SUBSCRIPTION_ID"

    .line 672
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    :cond_107
    const-string v0, "[updateDefaultValues] Update default data subscription"

    .line 676
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 678
    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    new-instance v2, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    .line 677
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v0

    const-string v1, "[updateDefaultValues] Update default voice subscription"

    .line 682
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 683
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 684
    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v2

    new-instance v3, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    .line 683
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v1

    const-string v2, "[updateDefaultValues] Update default sms subscription"

    .line 688
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 691
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v3

    new-instance v4, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    .line 690
    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v2

    .line 706
    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->updateUserPreferences(Ljava/util/List;ZZZ)V

    return-void
.end method
