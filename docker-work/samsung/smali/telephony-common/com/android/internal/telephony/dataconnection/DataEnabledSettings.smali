.class public Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
.super Ljava/lang/Object;
.source "DataEnabledSettings.java"


# static fields
.field public static final blacklist REASON_DATA_ENABLED_BY_CARRIER:I = 0x4

.field public static final blacklist REASON_INTERNAL_DATA_ENABLED:I = 0x1

.field public static final blacklist REASON_OVERRIDE_CONDITION_CHANGED:I = 0x8

.field public static final blacklist REASON_OVERRIDE_RULE_CHANGED:I = 0x7

.field public static final blacklist REASON_POLICY_DATA_ENABLED:I = 0x3

.field public static final blacklist REASON_PROVISIONED_CHANGED:I = 0x5

.field public static final blacklist REASON_PROVISIONING_DATA_ENABLED_CHANGED:I = 0x6

.field public static final blacklist REASON_REGISTERED:I = 0x0

.field public static final blacklist REASON_THERMAL_DATA_ENABLED:I = 0x9

.field public static final blacklist REASON_USER_DATA_ENABLED:I = 0x2


# instance fields
.field private blacklist mCarrierDataEnabled:Z

.field private blacklist mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

.field private blacklist mInternalDataEnabled:Z

.field private blacklist mIsDataEnabled:Z

.field private final blacklist mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final blacklist mOverallDataEnabledChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mOverallDataEnabledOverrideChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private blacklist mPolicyDataEnabled:Z

.field private blacklist mResolver:Landroid/content/ContentResolver;

.field private final blacklist mSettingChangeLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mSubId:I

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mThermalDataEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataEnabledOverride(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;Lcom/android/internal/telephony/data/DataEnabledOverride;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubId(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDataEnabledOverride(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)Lcom/android/internal/telephony/data/DataEnabledOverride;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDataEnabledOverride()Lcom/android/internal/telephony/data/DataEnabledOverride;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataEnabled(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabled()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataEnabledAndNotify(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePhoneStateListener(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updatePhoneStateListener()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mThermalDataEnabled:Z

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z

    const/4 v0, -0x1

    .line 151
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSubId:I

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 159
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledOverrideChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 162
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSettingChangeLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 169
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 199
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$2;-><init>(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 227
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 228
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "telephony_subscription_service"

    .line 230
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 231
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 232
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    .line 233
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 234
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDataEnabledOverride()Lcom/android/internal/telephony/data/DataEnabledOverride;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    .line 235
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabled()V

    return-void
.end method

.method private blacklist IgnoreDataEnabledOnRoaming()Z
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 341
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist broadcastPolicyDataEnabled(Z)V
    .registers 4

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastPolicyDataEnabled: DATAUSAGE_REACH_TO_LIMIT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    .line 811
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 812
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "policyData"

    .line 814
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 815
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getDataEnabledOverride()Lcom/android/internal/telephony/data/DataEnabledOverride;
    .registers 3

    .line 239
    new-instance v0, Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/SubscriptionController;->getDataEnabledOverrideRules(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataEnabledOverride;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist isStandAloneOpportunistic(ILandroid/content/Context;)Z
    .registers 4

    .line 704
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 705
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    .line 704
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 706
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p0

    if-nez p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method private blacklist localLog(Ljava/lang/String;Z)V
    .registers 4

    .line 745
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSettingChangeLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " change to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist localLogV(Ljava/lang/String;Z)V
    .registers 5

    .line 775
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 776
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->skipStubMethodElements([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 778
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSettingChangeLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " change to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 783
    :cond_31
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataEnabledSettings"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyDataEnabledChanged(ZI)V
    .registers 7

    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 667
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->notifyDataEnabled(ZI)V

    return-void
.end method

.method private blacklist notifyDataEnabledOverrideChanged()V
    .registers 1

    .line 680
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledOverrideChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method private declared-synchronized blacklist setCarrierDataEnabled(Z)V
    .registers 3

    monitor-enter p0

    .line 423
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    if-eq v0, p1, :cond_10

    const-string v0, "CarrierDataEnabled"

    .line 424
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 425
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    const/4 p1, 0x4

    .line 426
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 428
    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist setPolicyDataEnabled(Z)V
    .registers 3

    monitor-enter p0

    .line 410
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    if-eq v0, p1, :cond_13

    const-string v0, "PolicyDataEnabled"

    .line 411
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 412
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    const/4 v0, 0x3

    .line 413
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V

    .line 414
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->broadcastPolicyDataEnabled(Z)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 416
    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist setThermalDataEnabled(Z)V
    .registers 3

    monitor-enter p0

    .line 435
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mThermalDataEnabled:Z

    if-eq v0, p1, :cond_11

    const-string v0, "ThermalDataEnabled"

    .line 436
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 437
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mThermalDataEnabled:Z

    const/16 p1, 0x9

    .line 438
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 440
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist setUserDataEnabled(Z)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 256
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(ZZ)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 257
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist skipStubMethodElements([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 6

    .line 757
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    :goto_3
    if-ltz p0, :cond_57

    .line 758
    aget-object v0, p1, p0

    .line 759
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 761
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_54

    const-string v3, "Binder"

    .line 763
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "DataEnabledSettings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    if-eqz v2, :cond_54

    const-string v1, "$Stub"

    .line 765
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "PhoneInterfaceManager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "java.lang.Thread"

    .line 766
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 767
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_54
    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    :cond_57
    const/4 p0, 0x0

    return-object p0
.end method

.method private declared-synchronized blacklist updateDataEnabled()V
    .registers 4

    monitor-enter p0

    .line 496
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioningDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z

    goto :goto_35

    .line 499
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0xff

    .line 500
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/data/DataEnabledOverride;->shouldOverrideDataEnabledSettings(Lcom/android/internal/telephony/Phone;I)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_24
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mThermalDataEnabled:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 503
    :goto_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist updateDataEnabledAndNotify(I)V
    .registers 6

    monitor-enter p0

    .line 480
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z

    .line 482
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabled()V

    .line 484
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_f

    move v2, v3

    .line 485
    :cond_f
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V

    goto :goto_38

    :cond_13
    if-ne p1, v3, :cond_38

    .line 488
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mThermalDataEnabled:Z

    if-eqz v0, :cond_26

    move v2, v3

    .line 490
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 493
    :cond_38
    :goto_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist updatePhoneStateListener()V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 190
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 193
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v1, 0x400000

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private blacklist useUserDataEnabledInProvisioning()Ljava/lang/String;
    .registers 3

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EUR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 791
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "mobile_data"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    move v1, p0

    :cond_1f
    if-eqz v1, :cond_24

    const-string p0, "true"

    goto :goto_26

    :cond_24
    const-string p0, "false"

    :goto_26
    return-object p0
.end method


# virtual methods
.method protected blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, " DataEnabledSettings="

    .line 749
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSettingChangeLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized blacklist getDataRoamingEnabled()Z
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "ro.csc.sales_code"

    const-string v1, ""

    .line 600
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    .line 601
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_26

    const-string v1, "DSH"

    .line 602
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "DSG"

    .line 603
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    move v1, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v1, v3

    :goto_27
    if-nez v1, :cond_dc

    const-string v1, "USC"

    .line 605
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "USC"

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 606
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    :cond_43
    const-string v0, "getDataRoamingEnabled: USC operator. Need use other value for roaming"

    .line 607
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataRoamingEnabled: USC operator. Roaming. Type :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a7

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 613
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uscc_user_data_roam_setting_international"

    .line 615
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDefaultDataRoamingEnabled()Z

    move-result v4

    if-eqz v4, :cond_89

    move v4, v3

    goto :goto_8a

    :cond_89
    move v4, v2

    .line 612
    :goto_8a
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataRoamingEnabled: USC operator. Roaming. intRoam :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_1 .. :try_end_a2} :catchall_f4

    if-ne v0, v3, :cond_a5

    move v2, v3

    .line 617
    :cond_a5
    monitor-exit p0

    return v2

    :cond_a7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_dc

    .line 619
    :try_start_aa
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 620
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uscc_user_data_roam_setting_domestic"

    .line 622
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDefaultDataRoamingEnabled()Z

    move-result v4

    if-eqz v4, :cond_be

    move v4, v3

    goto :goto_bf

    :cond_be
    move v4, v2

    .line 619
    :goto_bf
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataRoamingEnabled: USC operator. Roaming. domRoam :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_aa .. :try_end_d7} :catchall_f4

    if-ne v0, v3, :cond_da

    move v2, v3

    .line 624
    :cond_da
    monitor-exit p0

    return v2

    .line 631
    :cond_dc
    :try_start_dc
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "data_roaming"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 632
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDefaultDataRoamingEnabled()Z

    move-result v3

    .line 631
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_f2
    .catchall {:try_start_dc .. :try_end_f2} :catchall_f4

    monitor-exit p0

    return v0

    :catchall_f4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getDefaultDataRoamingEnabled()Z
    .registers 5

    monitor-enter p0

    .line 642
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 643
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const-string v1, "true"

    const-string v2, "ro.com.android.dataroaming"

    const-string v3, "false"

    .line 644
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 646
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "carrier_default_data_roaming_enabled_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    const-string v2, "USC"

    .line 650
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    const-string v2, "DSG"

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 651
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    const-string v2, "ATT"

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 652
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    const-string v2, "DSH"

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 653
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 654
    :cond_76
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a7

    .line 656
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "carrier_default_international_data_roaming_enabled_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDataRoamingEnabled : USC/DSG/DSA Default international data roaming enabled :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_1 .. :try_end_a7} :catchall_a9

    .line 662
    :cond_a7
    monitor-exit p0

    return v1

    :catchall_a9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isCarrierDataEnabled()Z
    .registers 2

    monitor-enter p0

    .line 431
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isDataAllowedInVoiceCall()Z
    .registers 2

    monitor-enter p0

    .line 402
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEnabledOverride;->isDataAllowedInVoiceCall()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isDataEnabled()Z
    .registers 2

    monitor-enter p0

    .line 455
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isDataEnabled(I)Z
    .registers 7

    monitor-enter p0

    .line 710
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 711
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioningDataEnabled()Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_92

    monitor-exit p0

    return p1

    .line 713
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v0

    .line 715
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_73

    const-string v1, "ATT"

    .line 717
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "DSG"

    .line 718
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "DSH"

    .line 719
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_46

    :cond_44
    move v1, v2

    goto :goto_47

    :cond_46
    :goto_46
    move v1, v3

    :goto_47
    if-eqz v1, :cond_6e

    const-string v1, "USC"

    .line 720
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 721
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 722
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6e

    const-string v1, "isDataEnabled: USC domestic roaming in ATT device, No need to check"

    .line 724
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 726
    :cond_6e
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDataRoamingEnabled()Z

    move-result v1

    and-int/2addr v0, v1

    .line 732
    :cond_73
    :goto_73
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 733
    invoke-virtual {v1, v4, p1}, Lcom/android/internal/telephony/data/DataEnabledOverride;->shouldOverrideDataEnabledSettings(Lcom/android/internal/telephony/Phone;I)Z

    move-result p1

    .line 735
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    if-eqz v1, :cond_90

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    if-eqz v1, :cond_90

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    if-eqz v1, :cond_90

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mThermalDataEnabled:Z
    :try_end_89
    .catchall {:try_start_d .. :try_end_89} :catchall_92

    if-eqz v1, :cond_90

    if-nez v0, :cond_8f

    if-eqz p1, :cond_90

    :cond_8f
    move v2, v3

    :cond_90
    monitor-exit p0

    return v2

    :catchall_92
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist isDataEnabledForReason(I)Z
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    const/4 p1, 0x0

    .line 475
    monitor-exit p0

    return p1

    .line 473
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isThermalDataEnabled()Z

    move-result p1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_27

    monitor-exit p0

    return p1

    .line 469
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isCarrierDataEnabled()Z

    move-result p1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_27

    monitor-exit p0

    return p1

    .line 471
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isPolicyDataEnabled()Z

    move-result p1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_27

    monitor-exit p0

    return p1

    .line 467
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_27

    monitor-exit p0

    return p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist isDataProvisionedSpr(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "SPR"

    .line 821
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    .line 823
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 824
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fota"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_34

    .line 827
    :cond_2e
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isHfaCompletedSpr()Z

    move-result p1
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_37

    monitor-exit p0

    return p1

    :cond_34
    :goto_34
    const/4 p1, 0x1

    .line 825
    monitor-exit p0

    return p1

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist isHfaCompletedSpr()Z
    .registers 4

    monitor-enter p0

    .line 839
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_21

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 841
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    const-string v0, "1"

    const-string v1, "persist.sys.spr_hfa_completed"

    const-string v2, "0"

    .line 843
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_21

    .line 845
    monitor-exit p0

    return v0

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isInternalDataEnabled()Z
    .registers 2

    monitor-enter p0

    .line 251
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isMmsAlwaysAllowed()Z
    .registers 2

    monitor-enter p0

    .line 406
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEnabledOverride;->isMmsAlwaysAllowed()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isPolicyDataEnabled()Z
    .registers 2

    monitor-enter p0

    .line 419
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist isProvisioning()Z
    .registers 3

    .line 506
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public blacklist isProvisioningDataEnabled()Z
    .registers 6

    .line 521
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->useUserDataEnabledInProvisioning()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.com.android.prov_mobiledata"

    .line 520
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 523
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 525
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "device_provisioning_mobile_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 529
    :goto_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataEnabled during provisioning retVal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " - ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    return v2
.end method

.method public declared-synchronized blacklist isThermalDataEnabled()Z
    .registers 2

    monitor-enter p0

    .line 443
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mThermalDataEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isUserDataEnabled()Z
    .registers 5

    monitor-enter p0

    .line 320
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isStandAloneOpportunistic(ILandroid/content/Context;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_46

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 323
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->IgnoreDataEnabledOnRoaming()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDataRoamingEnabled()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_46

    monitor-exit p0

    return v0

    .line 329
    :cond_22
    :try_start_22
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->mobile_data()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 331
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mobile_data"

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 332
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 331
    invoke-static {v1, v2, v3, v0}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_46

    monitor-exit p0

    return v0

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 672
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V

    return-void
.end method

.method public blacklist registerForDataEnabledOverrideChanged(Landroid/os/Handler;I)V
    .registers 5

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledOverrideChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 691
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledOverrideChanged()V

    return-void
.end method

.method public declared-synchronized blacklist setAllowDataDuringVoiceCall(Z)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "setAllowDataDuringVoiceCall"

    .line 380
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataAllowedInVoiceCall()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_33

    if-ne p1, v0, :cond_f

    const/4 p1, 0x1

    .line 382
    monitor-exit p0

    return p1

    .line 384
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEnabledOverride;->setDataAllowedInVoiceCall(Z)V

    .line 386
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 387
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataEnabledOverride;->getRules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDataEnabledOverrideRules(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 v0, 0x7

    .line 389
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledOverrideChanged()V
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_33

    .line 393
    :cond_31
    monitor-exit p0

    return p1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setAlwaysAllowMmsData(Z)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "setAlwaysAllowMmsData"

    .line 356
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEnabledOverride;->setAlwaysAllowMms(Z)V

    .line 358
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 359
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataEnabledOverride;->getRules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDataEnabledOverrideRules(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 v0, 0x7

    .line 361
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V

    .line 362
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledOverrideChanged()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 365
    :cond_28
    monitor-exit p0

    return p1

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setDataEnabled(IZ)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    .line 313
    :try_start_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid data enable reason "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 310
    :cond_21
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setThermalDataEnabled(Z)V

    goto :goto_30

    .line 304
    :cond_25
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setCarrierDataEnabled(Z)V

    goto :goto_30

    .line 307
    :cond_29
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setPolicyDataEnabled(Z)V

    goto :goto_30

    .line 301
    :cond_2d
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(Z)V
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_32

    .line 316
    :goto_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setDataRoamingEnabled(Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "setDataRoamingEnabled"

    .line 540
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLogV(Ljava/lang/String;Z)V

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "DataEnabledSettings"

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataEnabledSettings calling pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", calling uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DataEnabledSettings"

    const-string v1, "calling setDataRoamingEnabled with invalid subid"

    .line 545
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "STACK TRACE"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    :cond_46
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "data_roaming"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 549
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 548
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "setDataRoamingEnabled"

    .line 552
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 553
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyRoamingDataEnabled(IZ)V

    :cond_6c
    const-string p1, "ro.csc.sales_code"

    const-string v0, ""

    .line 558
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ATT"

    .line 559
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_90

    const-string v0, "DSH"

    .line 560
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "DSG"

    .line 561
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_90

    :cond_8e
    const/4 v0, 0x0

    goto :goto_91

    :cond_90
    :goto_90
    move v0, v1

    .line 566
    :goto_91
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_b0

    const-string v0, "USC"

    .line 569
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_ad

    const-string p1, "USC"

    .line 571
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 573
    :cond_ad
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUsccDataRoamingSetting(Z)V

    :cond_b0
    const-string p1, "DSG"

    .line 575
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c8

    const-string p1, "ATT"

    .line 576
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cb

    const-string p1, "DSH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cb

    .line 577
    :cond_c8
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setDsh5GDataRoamingSetting()V
    :try_end_cb
    .catchall {:try_start_1 .. :try_end_cb} :catchall_cd

    .line 580
    :cond_cb
    monitor-exit p0

    return-void

    :catchall_cd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist setDsh5GDataRoamingSetting()V
    .registers 4

    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "dsg_user_data_roam_setting_international"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "setDsh5GDataRoamingSetting: Roaming Type international"

    .line 901
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    goto :goto_2a

    :cond_24
    const/4 v0, 0x1

    const-string v1, "setDsh5GDataRoamingSetting: Roaming Type not international, do nothing"

    .line 905
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    .line 907
    :goto_2a
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "data_roaming"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public declared-synchronized blacklist setInternalDataEnabled(Z)V
    .registers 3

    monitor-enter p0

    .line 244
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    if-eq v0, p1, :cond_10

    const-string v0, "InternalDataEnabled"

    .line 245
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 246
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    const/4 p1, 0x1

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 249
    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist setUsccDataRoamingSetting(Z)V
    .registers 11

    .line 852
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 853
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_d

    return-void

    .line 855
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 856
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 857
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDefaultDataRoamingEnabled()Z

    move-result v2

    const-string v3, "data_roaming"

    .line 855
    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 858
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    .line 859
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "uscc_user_data_roam_setting_international"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 861
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x1

    const-string v7, "uscc_user_data_roam_setting_domestic"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 863
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setUsccDataRoamingSetting: dataRoaming="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", roamingType="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", userInternational="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", userDomestic="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    const/4 v6, 0x2

    if-ne v1, v6, :cond_c4

    if-eqz p1, :cond_a2

    .line 867
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUsccDataRoamingSetting: set Domestic Setting as dataRoaming="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    goto :goto_112

    .line 872
    :cond_a2
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 874
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setUsccDataRoamingSetting: set Data Roaming Setting as userDomestic="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    goto :goto_112

    :cond_c4
    const/4 v4, 0x3

    if-ne v1, v4, :cond_10d

    if-eqz p1, :cond_eb

    .line 879
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 881
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUsccDataRoamingSetting: set International Setting as dataRoaming="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    goto :goto_112

    .line 884
    :cond_eb
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setUsccDataRoamingSetting: set Data Roaming Setting as userInternational="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    goto :goto_112

    :cond_10d
    const-string p1, "setUsccDataRoamingSetting: Roaming Type unknown, do nothing"

    .line 890
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    :goto_112
    return-void
.end method

.method public declared-synchronized blacklist setUserDataEnabled(ZZ)V
    .registers 6

    monitor-enter p0

    .line 268
    :try_start_1
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isStandAloneOpportunistic(ILandroid/content/Context;)Z

    move-result p2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_40

    if-eqz p2, :cond_17

    if-nez p1, :cond_17

    monitor-exit p0

    return-void

    .line 270
    :cond_17
    :try_start_17
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "mobile_data"

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 271
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eqz p1, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    .line 270
    :goto_2a
    invoke-static {p2, v0, v1, v2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setInt(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_3e

    const-string p2, "UserDataEnabled"

    .line 277
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLogV(Ljava/lang/String;Z)V

    .line 279
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/Phone;->notifyUserMobileDataStateChanged(Z)V

    const/4 p1, 0x2

    .line 280
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V
    :try_end_3e
    .catchall {:try_start_17 .. :try_end_3e} :catchall_40

    .line 290
    :cond_3e
    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mInternalDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isProvisioningDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioningDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPolicyDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCarrierDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mThermalDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mThermalDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist unregisterForDataEnabledChanged(Landroid/os/Handler;)V
    .registers 2

    .line 676
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForDataEnabledOverrideChanged(Landroid/os/Handler;)V
    .registers 2

    .line 700
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledOverrideChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public declared-synchronized blacklist updateProvisionedChanged()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x5

    .line 447
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 448
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist updateProvisioningDataEnabled()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x6

    .line 451
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 452
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
