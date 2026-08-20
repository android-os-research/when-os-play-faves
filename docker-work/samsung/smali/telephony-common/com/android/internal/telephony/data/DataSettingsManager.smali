.class public Lcom/android/internal/telephony/data/DataSettingsManager;
.super Landroid/os/Handler;
.source "DataSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    }
.end annotation


# instance fields
.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private blacklist mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

.field private final blacklist mDataEnabledSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSettingsManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInitialized:Z

.field private blacklist mIsDataEnabled:Z

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mResolver:Landroid/content/ContentResolver;

.field private final blacklist mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

.field private blacklist mSubId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$-Qt-brMc5U8qz4T12yH3dNsGX8Y(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->lambda$notifyDataEnabledOverrideChanged$4(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K8rk6NsRR7aC3EIdtzafrVkTX7o(ZILcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->lambda$notifyDataEnabledOverrideChanged$5(ZILcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KyBzqXKHyGi0CRQznJO9S4_lkLQ(ZLcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->lambda$setDataRoamingEnabledInternal$1(ZLcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SU9jdN8TseNbLSuyiZ5CT8XX4ow(ZILjava/lang/String;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->lambda$notifyDataEnabledChanged$3(ZILjava/lang/String;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eBmfBxDiPFLoVoeGRtgU0UAhLz8(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->lambda$setDataRoamingEnabledInternal$0(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ot_NLQAv8xkQoMy32LOxqZkDyvI(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->lambda$notifyDataEnabledChanged$2(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sde0nyoX1EqUQqcljn7khawQJv0(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->lambda$dump$6(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataSettingsManager;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataSettingsManager;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 7

    .line 167
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    new-instance p3, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p3, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 94
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    .line 98
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    .line 168
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DSMGR-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLogTag:Ljava/lang/String;

    const-string v0, "DataSettingsManager created."

    .line 170
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    .line 173
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 174
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 175
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->getDataEnabledOverride()Lcom/android/internal/telephony/data/DataEnabledOverride;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    .line 176
    new-instance p2, Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const/4 p1, 0x1

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xb

    .line 183
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private static blacklist dataEnabledChangedReasonToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_11
    const-string p0, "OVERRIDE"

    return-object p0

    :cond_14
    const-string p0, "THERMAL"

    return-object p0

    :cond_17
    const-string p0, "CARRIER"

    return-object p0

    :cond_1a
    const-string p0, "POLICY"

    return-object p0

    :cond_1d
    const-string p0, "USER"

    return-object p0
.end method

.method private blacklist getDataEnabledOverride()Lcom/android/internal/telephony/data/DataEnabledOverride;
    .registers 3

    .line 597
    new-instance v0, Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iget p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 598
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/SubscriptionController;->getDataEnabledOverrideRules(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataEnabledOverride;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist isDataRoamingFromUserAction()Z
    .registers 4

    .line 575
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 576
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "data_roaming_is_user_setting_key"

    .line 579
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 580
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1e
    const/4 v1, 0x1

    .line 582
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private blacklist isProvisioningDataEnabled()Z
    .registers 6

    const-string v0, "ro.com.android.prov_mobiledata"

    const-string v1, "false"

    .line 357
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 359
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 361
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "device_provisioning_mobile_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 365
    :goto_1b
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

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return v2
.end method

.method private static blacklist isStandAloneOpportunistic(ILandroid/content/Context;)Z
    .registers 4

    .line 414
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 416
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

.method private blacklist isUserDataEnabled()Z
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    .line 444
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result p0

    return p0

    .line 448
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isStandAloneOpportunistic(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x1

    return p0

    .line 450
    :cond_20
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->mobile_data()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    const-string v2, "mobile_data"

    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$dump$6(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->dataEnabledChangedReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$notifyDataEnabledChanged$2(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZILjava/lang/String;)V
    .registers 4

    .line 650
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onDataEnabledChanged(ZILjava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$notifyDataEnabledChanged$3(ZILjava/lang/String;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 5

    .line 649
    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$notifyDataEnabledOverrideChanged$4(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZI)V
    .registers 3

    .line 658
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onDataEnabledOverrideChanged(ZI)V

    return-void
.end method

.method private static synthetic blacklist lambda$notifyDataEnabledOverrideChanged$5(ZILcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 4

    .line 657
    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZI)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$setDataRoamingEnabledInternal$0(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V
    .registers 2

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onDataRoamingEnabledChanged(Z)V

    return-void
.end method

.method private static synthetic blacklist lambda$setDataRoamingEnabledInternal$1(ZLcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 3

    .line 515
    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 712
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 720
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 728
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 729
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist notifyDataEnabledChanged(ZILjava/lang/String;)V
    .registers 6

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataEnabledChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-static {p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->dataEnabledChangedReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda6;-><init>(ZILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 651
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->notifyDataEnabled(ZI)V

    return-void
.end method

.method private blacklist notifyDataEnabledOverrideChanged(ZI)V
    .registers 5

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataEnabledOverrideChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 657
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda1;-><init>(ZI)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onInitialize()V
    .registers 4

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->registerForConfigUpdate(Landroid/os/Handler;I)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "device_provisioning_mobile_data"

    .line 287
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0xa

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 297
    :cond_56
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$1;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    new-instance v2, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    const/4 v0, -0x1

    .line 308
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    return-void
.end method

.method private blacklist setCarrierDataEnabled(ZLjava/lang/String;)V
    .registers 7

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_3b

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarrierDataEnabled changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private blacklist setDataRoamingEnabledInternal(Z)V
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    const-string v2, "data_roaming"

    invoke-static {v0, v2, v1, p1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataRoamingEnabled changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 515
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_2e
    return-void
.end method

.method private blacklist setDataRoamingFromUserAction()V
    .registers 3

    .line 591
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "data_roaming_is_user_setting_key"

    const/4 v1, 0x1

    .line 593
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private blacklist setPolicyDataEnabled(ZLjava/lang/String;)V
    .registers 7

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_3b

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyDataEnabled changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private blacklist setThermalDataEnabled(ZLjava/lang/String;)V
    .registers 7

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_3b

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThermalDataEnabled changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private blacklist setUserDataEnabled(ZLjava/lang/String;)V
    .registers 6

    .line 426
    iget v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isStandAloneOpportunistic(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p1, :cond_11

    return-void

    .line 427
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    const-string v2, "mobile_data"

    invoke-static {v0, v2, v1, p1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setInt(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set user data enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", changed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_62

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserDataEnabled changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyUserMobileDataStateChanged(Z)V

    const/4 p1, 0x0

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;)V

    :cond_62
    return-void
.end method

.method private blacklist updateDataEnabledAndNotify(I)V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;)V

    return-void
.end method

.method private blacklist updateDataEnabledAndNotify(ILjava/lang/String;)V
    .registers 6

    .line 341
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    const/16 v1, 0xff

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsDataEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", prevDataEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 344
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    if-eqz v1, :cond_30

    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    if-eq v0, v2, :cond_3a

    :cond_30
    if-nez v1, :cond_35

    const/4 v0, 0x1

    .line 345
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    .line 346
    :cond_35
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->notifyDataEnabledChanged(ZILjava/lang/String;)V

    :cond_3a
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 740
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 741
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 743
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsDataEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataEnabled(internet)="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataEnabled(mms)="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUserDataEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataRoamingEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDefaultDataRoamingEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataRoamingFromUserAction="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingFromUserAction()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device_provisioned="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProvisioningDataEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_stall_recovery_on_bad_network="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "data_stall_recovery_on_bad_network"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataEnabledSettings="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda0;-><init>()V

    .line 756
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    .line 758
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 755
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataEnabledOverride="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Local logs:"

    .line 760
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 762
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 764
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_12e

    .line 275
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_12d

    .line 271
    :pswitch_21
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->onInitialize()V

    goto/16 :goto_12d

    :pswitch_26
    const/4 p1, -0x1

    .line 267
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    goto/16 :goto_12d

    .line 251
    :pswitch_2c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataAllowedInVoiceCall()Z

    move-result v0

    if-ne p1, v0, :cond_3c

    goto/16 :goto_12d

    .line 255
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AllowDataDuringVoiceCall changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEnabledOverride;->setDataAllowedInVoiceCall(Z)V

    .line 257
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    .line 258
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataEnabledOverride;->getRules()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDataEnabledOverrideRules(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 259
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    .line 260
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->notifyDataEnabledOverrideChanged(ZI)V

    goto/16 :goto_12d

    .line 236
    :pswitch_6f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMmsAlwaysAllowed()Z

    move-result v0

    if-ne p1, v0, :cond_7f

    goto/16 :goto_12d

    .line 240
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlwaysAllowMmsData changed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEnabledOverride;->setAlwaysAllowMms(Z)V

    .line 242
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    .line 243
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataEnabledOverride;->getRules()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/SubscriptionController;->setDataEnabledOverrideRules(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 244
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    .line 245
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->notifyDataEnabledOverrideChanged(ZI)V

    goto/16 :goto_12d

    .line 230
    :pswitch_b2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabledInternal(Z)V

    .line 232
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingFromUserAction()V

    goto/16 :goto_12d

    .line 207
    :pswitch_c2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 208
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_cb

    move v2, v4

    .line 209
    :cond_cb
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_fd

    if-eq v3, v4, :cond_f9

    if-eq v3, v1, :cond_f5

    const/4 v1, 0x3

    if-eq v3, v1, :cond_f1

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set data enabled for reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 224
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->dataEnabledChangedReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    goto :goto_12d

    .line 220
    :cond_f1
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setThermalDataEnabled(ZLjava/lang/String;)V

    goto :goto_12d

    .line 214
    :cond_f5
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setCarrierDataEnabled(ZLjava/lang/String;)V

    goto :goto_12d

    .line 217
    :cond_f9
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setPolicyDataEnabled(ZLjava/lang/String;)V

    goto :goto_12d

    .line 211
    :cond_fd
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setUserDataEnabled(ZLjava/lang/String;)V

    goto :goto_12d

    .line 200
    :pswitch_101
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 201
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->getDataEnabledOverride()Lcom/android/internal/telephony/data/DataEnabledOverride;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    .line 202
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    .line 203
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Phone;->notifyUserMobileDataStateChanged(Z)V

    goto :goto_12d

    .line 196
    :pswitch_11e
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    goto :goto_12d

    .line 190
    :pswitch_122
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result p1

    if-eqz p1, :cond_12d

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDefaultDataRoamingEnabled()V

    :cond_12d
    :goto_12d
    return-void

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_122
        :pswitch_11e
        :pswitch_9
        :pswitch_101
        :pswitch_c2
        :pswitch_b2
        :pswitch_6f
        :pswitch_2c
        :pswitch_26
        :pswitch_26
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist isDataAllowedInVoiceCall()Z
    .registers 1

    .line 633
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEnabledOverride;->isDataAllowedInVoiceCall()Z

    move-result p0

    return p0
.end method

.method public blacklist isDataEnabled()Z
    .registers 1

    .line 377
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    return p0
.end method

.method public blacklist isDataEnabled(I)Z
    .registers 6

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    .line 399
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result p0

    return p0

    .line 401
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v0

    .line 403
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 404
    invoke-virtual {v1, v3, p1}, Lcom/android/internal/telephony/data/DataEnabledOverride;->shouldOverrideDataEnabledSettings(Lcom/android/internal/telephony/Phone;I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez v0, :cond_21

    if-eqz p1, :cond_5a

    .line 406
    :cond_21
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v0, 0x2

    .line 408
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 p1, 0x3

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5a

    move v2, v1

    :cond_5a
    return v2
.end method

.method public blacklist isDataEnabledForReason(I)Z
    .registers 2

    if-nez p1, :cond_7

    .line 329
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result p0

    return p0

    .line 331
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist isDataInitialized()Z
    .registers 1

    .line 389
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    return p0
.end method

.method public blacklist isDataRoamingEnabled()Z
    .registers 4

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 527
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result p0

    const-string v2, "data_roaming"

    .line 526
    invoke-static {v0, v2, v1, p0}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public blacklist isDefaultDataRoamingEnabled()Z
    .registers 3

    const-string v0, "ro.com.android.dataroaming"

    const-string v1, "false"

    .line 537
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 538
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p0

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isDataRoamingEnabledByDefault()Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method public blacklist isMmsAlwaysAllowed()Z
    .registers 1

    .line 614
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEnabledOverride;->isMmsAlwaysAllowed()Z

    move-result p0

    return p0
.end method

.method public blacklist isRecoveryOnBadNetworkEnabled()Z
    .registers 3

    .line 641
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "data_stall_recovery_on_bad_network"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 2

    .line 667
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setAllowDataDuringVoiceCall(Z)V
    .registers 3

    .line 625
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setAlwaysAllowMmsData(Z)V
    .registers 3

    .line 606
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setDataEnabled(IZLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x5

    .line 319
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setDataRoamingEnabled(Z)V
    .registers 3

    .line 502
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setDefaultDataRoamingEnabled()V
    .registers 5

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_33

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data_roaming"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    :try_start_2d
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2d .. :try_end_32} :catch_3b

    goto :goto_3a

    .line 559
    :cond_33
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingFromUserAction()Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v1, v2

    .line 563
    :catch_3b
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultDataRoamingEnabled: useCarrierSpecificDefault="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_58

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v0

    .line 566
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabledInternal(Z)V

    :cond_58
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isUserDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isProvisioningDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDataEnabledSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDataEnabledOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledOverride:Lcom/android/internal/telephony/data/DataEnabledOverride;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 2

    .line 676
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
