.class public Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;
.super Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
.source "SemEmergencyNumberTracker.java"


# static fields
.field public static final blacklist SIM_ECC_ACTION_ADD:I = 0x1

.field public static final blacklist SIM_ECC_ACTION_RESET:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mEmergencyNumberListFromVendorDatabase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEmergencyNumberListVendorDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mEmergencyNumberListWithHighPriority:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mLastEmergencyNumberListFromRil:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastEmergencyNumberListFromRilLock:Ljava/lang/Object;

.field private final blacklist mLastEmergencyNumberListFromSim:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastEmergencyNumberListFromSimLock:Ljava/lang/Object;

.field private blacklist mLastKnownCarrierId:I

.field private blacklist mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

.field private blacklist mUseAospDatabase:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$2_cpJUngFeIRg1iQ98unD_ArC8s(Landroid/telephony/emergency/EmergencyNumber;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->lambda$updateEmergencyNumberList$0(Landroid/telephony/emergency/EmergencyNumber;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastKnownCarrierId(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastKnownCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastKnownCarrierId(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastKnownCarrierId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misMainOperatorSpecific(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;[Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    const-class v0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 5

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mUseAospDatabase:Z

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    .line 84
    new-instance p1, Lcom/android/internal/telephony/LocalLog;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListVendorDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 87
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRilLock:Ljava/lang/Object;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRil:Ljava/util/List;

    .line 91
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSimLock:Ljava/lang/Object;

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSim:Ljava/util/List;

    const-string p1, ""

    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    const/4 p1, -0x1

    .line 98
    iput p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastKnownCarrierId:I

    .line 118
    new-instance p2, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;-><init>(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;)V

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 p2, 0x65

    .line 163
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    if-eqz p2, :cond_89

    const-string v0, "android.hardware.telephony"

    .line 168
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_89

    const-string p2, "No Telephony device. Force sync emegency number list after 1 min"

    .line 169
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const/16 p2, 0x67

    .line 170
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 174
    :cond_89
    iput p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastKnownCarrierId:I

    const-string p1, "SemEmergencyNumberTracker is created"

    .line 176
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cacheEmergencyNumberListFromRil(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRilLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRil:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 711
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRil:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 712
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private blacklist cacheEmergencyNumberListFromSim(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSimLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSim:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 730
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSim:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 731
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private blacklist cacheVendorEmergencyDatabase()V
    .registers 9

    .line 382
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->checkSimInserted()Z

    move-result v0

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheVendorEmergencyDatabase - withSim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", operator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", simOperator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_57

    .line 392
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_57

    move v3, v5

    goto :goto_58

    :cond_57
    move v3, v4

    .line 393
    :goto_58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_60

    if-eqz v3, :cond_ad

    :cond_60
    const-string v3, "CHN"

    const-string v6, "HKG"

    .line 394
    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isCountrySpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    const-string v1, "cacheVendorEmergencyDatabase - Use default operatorNumeric for CHN, HKG"

    .line 395
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const-string v1, "460"

    goto :goto_ad

    :cond_76
    const-string v3, "TPE"

    .line 397
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isCountrySpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    const-string v1, "cacheVendorEmergencyDatabase - Use default operatorNumeric for TPE"

    .line 398
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const-string v1, "466"

    goto :goto_ad

    :cond_8a
    const-string v3, "52505"

    .line 400
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isLatinAllowedFB(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 401
    :cond_98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheVendorEmergencyDatabase - Use default operatorNumeric for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    move-object v1, v2

    .line 407
    :cond_ad
    :goto_ad
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "COB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 408
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d4

    const-string v2, "732"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    const-string v1, "cacheVendorEmergencyDatabase - Use 112, 123, 911 in Colombia"

    .line 409
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const-string v1, "732000"

    .line 415
    :cond_d4
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v6, "CarrierFeature_RIL_ConfigEccListDuringEncryptionMode"

    const-string v7, ""

    invoke-virtual {v2, v3, v6, v7, v5}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_117

    .line 417
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_117

    const-string v3, "vold.decrypt"

    .line 418
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "trigger_restart_min_framework"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheVendorEmergencyDatabase - Use fallback MCC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") during encryption mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    move-object v1, v2

    move v0, v4

    :cond_117
    const-string v2, "EUR"

    .line 428
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_164

    if-nez v0, :cond_164

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-le v2, v5, :cond_164

    .line 430
    :try_start_12f
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_138

    move v4, v5

    :cond_138
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_14c

    const/16 v3, 0x21

    .line 431
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SemTelephonyHelper;->isCarrierId(Lcom/android/internal/telephony/Phone;I)Z

    move-result v2

    if-eqz v2, :cond_14c

    const-string v2, "cacheVendorEmergencyDatabase - Make ecall numbers with withSim true state"

    .line 432
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/IllegalStateException; {:try_start_12f .. :try_end_14b} :catch_14f

    goto :goto_14d

    :cond_14c
    move v5, v0

    :goto_14d
    move v0, v5

    goto :goto_164

    :catch_14f
    move-exception v2

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhone is fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 440
    :cond_164
    :goto_164
    invoke-static {v1, v0}, Lcom/android/internal/telephony/SemEmergencyNumberTable;->emergencyNumbersForPlmn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USA"

    .line 443
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isCountrySpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_178

    .line 444
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->overrideVendorEmergencyDatabaseForUsa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheVendorEmergencyDatabase - ecclistFromDatabase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x88

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberListFromEccNumbers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    return-void
.end method

.method private blacklist checkSimInserted()Z
    .registers 4

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "phone1_on"

    goto :goto_d

    :cond_b
    const-string v0, "phone2_on"

    .line 868
    :goto_d
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v1

    .line 869
    :goto_22
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result p0

    if-eqz p0, :cond_31

    if-eqz v0, :cond_31

    goto :goto_32

    :cond_31
    move v2, v1

    :goto_32
    return v2
.end method

.method private static blacklist convertEmergencyNumberFromEccNumber(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/emergency/EmergencyNumber;
    .registers 12

    .line 616
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, "/"

    .line 620
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 621
    aget-object v2, p0, v0

    .line 624
    array-length v1, p0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1b

    .line 626
    :try_start_15
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    move v5, v0

    .line 631
    new-instance p0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_28
    move-object v3, p1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const-string v4, ""

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object p0
.end method

.method private static blacklist convertEmergencyNumberListFromEccNumbers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, ","

    .line 602
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_23

    aget-object v3, p0, v2

    .line 603
    invoke-static {v3, p1, p2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberFromEccNumber(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 605
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_23
    return-object v0
.end method

.method private static blacklist emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, "NO_EMERGENCYNUMBERLIST"

    return-object p0

    .line 769
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberToString(Landroid/telephony/emergency/EmergencyNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 773
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x2

    if-lt p0, v1, :cond_46

    .line 774
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 777
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist emergencyNumberToString(Landroid/telephony/emergency/EmergencyNumber;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "NO_EMERGENCYNUMBER"

    return-object p0

    .line 788
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    .line 791
    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const/16 v1, 0x80

    .line 792
    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    const/4 v1, 0x1

    .line 793
    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    const/4 v1, 0x2

    .line 794
    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_51

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    const/16 v1, 0x10

    .line 795
    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    const/16 v1, 0x8

    .line 796
    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    const/4 v1, 0x4

    .line 797
    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    const/16 v1, 0x20

    .line 798
    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result p0

    if-eqz p0, :cond_84

    const-string p0, "T"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_84
    const-string p0, ")"

    .line 799
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getBasicEccNumbersOfUsaCdma()Ljava/lang/String;
    .registers 2

    const-string v0, "VZW"

    .line 483
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "911,*272911"

    return-object p0

    :cond_f
    const-string v0, "SPR"

    .line 486
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "ACG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isSubOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_3a

    :cond_28
    const-string v0, "USC"

    .line 489
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isSubOperatorSpecific([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "911,#911,*911,*272911"

    return-object p0

    :cond_37
    const-string p0, ""

    return-object p0

    :cond_3a
    :goto_3a
    const-string p0, "911,#911,*911"

    return-object p0
.end method

.method private blacklist getMergedEmergencyNumberListFromRadio()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromRil()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 689
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromSim()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 692
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    const/4 v2, 0x1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberFromEccNumber(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    .line 697
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getMergedEmergencyNumberListFromRadio - RADIO: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", (SIM: "

    .line 698
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromSim()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", RIL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromRil()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_67

    const-string v2, ", NET_TEST: 1)"

    goto :goto_69

    :cond_67
    const-string v2, ")"

    .line 699
    :goto_69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist getNetworkTypeCapabilityTestData()Ljava/lang/String;
    .registers 3

    .line 857
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 858
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getNetworkTypeCapabilityTestData()Ljava/lang/String;

    move-result-object p0

    .line 859
    invoke-static {p0}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1f

    return-object p0

    :cond_1f
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getSimOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs blacklist isCountrySpecific([Ljava/lang/String;)Z
    .registers 4

    .line 828
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getNetworkTypeCapabilityTestData()Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 830
    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->isCountrySpecific(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 832
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isDialingOrAlerting(Lcom/android/internal/telephony/Phone;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 805
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isGlobalModel()Z
    .registers 3

    .line 836
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getNetworkTypeCapabilityTestData()Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 838
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->isGlobalModel(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 840
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result p0

    return p0
.end method

.method private blacklist isLatinAllowedFB(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_21

    const-string v0, "71610"

    .line 848
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "730"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "724"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    :cond_1a
    const-string p1, "isLatinAllowedFB - true"

    .line 849
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private varargs blacklist isMainOperatorSpecific([Ljava/lang/String;)Z
    .registers 4

    .line 812
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getNetworkTypeCapabilityTestData()Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 814
    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->isMainOperatorSpecific(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 816
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private varargs blacklist isSubOperatorSpecific([Ljava/lang/String;)Z
    .registers 4

    .line 820
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getNetworkTypeCapabilityTestData()Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 822
    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->isSubOperatorSpecific(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 824
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$updateEmergencyNumberList$0(Landroid/telephony/emergency/EmergencyNumber;)Z
    .registers 2

    .line 317
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object p0

    const-string v0, "127"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 5

    .line 877
    sget-object v0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 5

    .line 881
    sget-object v0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist overrideVendorEmergencyDatabaseForKorea()V
    .registers 10

    .line 497
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->skipOverrideForKorea()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 506
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "000"

    if-nez v1, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_27

    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 509
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_27
    move-object v0, v2

    .line 519
    :goto_28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "112/1,911/4,119/4,122/8"

    const-string v4, "450"

    const-string v5, "KOO"

    const-string v6, "SKT"

    const-string v7, "LGT"

    if-eqz v1, :cond_4f

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    const-string v8, "45006"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_68

    .line 521
    :cond_4f
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    filled-new-array {v6, v5, v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    goto :goto_68

    :cond_66
    const-string v3, "112/1,911/4,119/4,118/19,122/8,113/3,125/9,111/7,117/18"

    .line 536
    :goto_68
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x188

    .line 537
    invoke-static {v3, v1, v8}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberListFromEccNumbers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 540
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->checkSimInserted()Z

    move-result v8

    if-nez v8, :cond_a3

    .line 542
    filled-new-array {v6, v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 544
    iget-object v5, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->setHighPriorityForValidCategory(Ljava/util/List;Ljava/util/List;)V

    .line 547
    :cond_87
    iput-object v3, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    .line 549
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    const/16 v0, 0x88

    const-string v2, "000/4,08/4,110/4,999/4,119/4,118/4"

    .line 550
    invoke-static {v2, v1, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberListFromEccNumbers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 552
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b7

    .line 556
    :cond_a3
    filled-new-array {v6, v5, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->setHighPriorityForValidCategory(Ljava/util/List;Ljava/util/List;)V

    .line 559
    :cond_b2
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b7
    :goto_b7
    return-void
.end method

.method private blacklist overrideVendorEmergencyDatabaseForUsa(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 465
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getBasicEccNumbersOfUsaCdma()Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 467
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isGlobalModel()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 468
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2f

    .line 469
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2f

    move-object p1, v0

    :cond_2f
    :goto_2f
    return-object p1
.end method

.method private blacklist setHighPriorityForValidCategory(Ljava/util/List;Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    .line 567
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    .line 568
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 569
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v5

    if-eqz v5, :cond_19

    .line 570
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v5

    const/16 v6, 0xff

    if-eq v5, v6, :cond_19

    const/16 v5, 0x100

    .line 571
    invoke-virtual {v4, v5}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v6

    if-nez v6, :cond_19

    .line 572
    new-instance v6, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v10

    .line 573
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v11

    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v12

    .line 574
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v7

    or-int/lit16 v13, v7, 0x100

    .line 575
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v14

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 572
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 580
    :cond_71
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7d

    move-object v1, p0

    .line 582
    iget-object v1, v1, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7d
    return-void
.end method

.method private blacklist skipOverrideForKorea()Z
    .registers 3

    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kr"

    .line 588
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "00101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->checkSimInserted()Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    :goto_30
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 323
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 325
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemEmergencyNumberTracker["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VDB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RADIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromSim()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- RIL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromRil()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ec

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- NET_TEST: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    :cond_ec
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10e

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HIGH(KOR): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    :cond_10e
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v1, :cond_190

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v1

    if-eqz v1, :cond_190

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getNetworkTypeCapabilityTestData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-nez v1, :cond_190

    const-string v1, "Emergency number list:"

    .line 346
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 348
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object v1

    .line 349
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_159
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_190

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", EmergencyNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_159

    .line 356
    :cond_190
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, " ========================================= "

    .line 357
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListVendorDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getLastEmergencyNumberListFromRil()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRilLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRil:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 721
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public blacklist getLastEmergencyNumberListFromSim()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSimLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSim:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 740
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_90

    packed-switch v0, :pswitch_data_e4

    .line 241
    invoke-super {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_e3

    .line 230
    :pswitch_d
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string p1, "EVENT_UPDATE_EMPTY_EMERGENCY_NUMBER_LIST: Update emergency number list because it\'s empty"

    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 233
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_UPDATE_EMPTY_EMERGENCY_NUMBER_LIST: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->notifyEmergencyNumberList()V

    goto/16 :goto_e3

    :cond_3a
    const-string p1, "EVENT_UPDATE_EMPTY_EMERGENCY_NUMBER_LIST: Ignore it because emergency number list is not empty"

    .line 236
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    goto/16 :goto_e3

    .line 216
    :pswitch_41
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isDialingOrAlerting(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_e3

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isDialingOrAlerting(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_e3

    const-string v0, "EVENT_PRECISE_CALL_STATE_CHANGED: Update emergency number list"

    .line 218
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    if-eqz p1, :cond_64

    .line 221
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 223
    :cond_64
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 224
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_PRECISE_CALL_STATE_CHANGED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->notifyEmergencyNumberList()V

    goto :goto_e3

    :pswitch_83
    const-string p1, "EVENT_POST_INIT"

    .line 209
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->cacheVendorEmergencyDatabase()V

    const/4 p1, 0x0

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->loadTestEmergencyNumber(Z)V

    goto :goto_e3

    .line 185
    :cond_90
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 186
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_9e

    const-string p1, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: Result from RIL is null."

    .line 187
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->loge(Ljava/lang/String;)V

    goto :goto_e3

    .line 190
    :cond_9e
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_cd

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 196
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v1, :cond_c9

    .line 197
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->cacheEmergencyNumberListFromRil(Ljava/util/List;)V

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getMergedEmergencyNumberListFromRadio()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 201
    :cond_c9
    invoke-super {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_e3

    .line 203
    :cond_cd
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: Exception from RIL : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_e3
    :goto_e3
    return-void

    :pswitch_data_e4
    .packed-switch 0x65
        :pswitch_83
        :pswitch_41
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist handleSimEcc(ILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2f

    .line 642
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimEcc - action: ADD, eccNumbersFromSim: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const-string p1, "JPN"

    .line 645
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isCountrySpecific([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/16 v0, 0x102

    .line 649
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberListFromEccNumbers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_5d

    :cond_2f
    if-ne p1, v0, :cond_73

    .line 651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleSimEcc - action: RESET, oldSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromSim()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromSim()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_58

    return-void

    .line 656
    :cond_58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 662
    :goto_5d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->cacheEmergencyNumberListFromSim(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 664
    new-instance p2, Landroid/os/AsyncResult;

    .line 665
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getMergedEmergencyNumberListFromRadio()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p2, v2, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 664
    invoke-virtual {p0, v1, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 665
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_73
    const-string p1, "handleSimEcc - action: UNKNOWN"

    .line 658
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist loadTestEmergencyNumber(Z)V
    .registers 6

    .line 747
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->test_emer_num()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTestEmergencyNumber - withReset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", cachedNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 750
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    if-eqz p1, :cond_35

    .line 752
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_35
    const/16 p1, 0x20

    .line 754
    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberFromEccNumber(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object p1

    const/4 v0, 0x1

    .line 755
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->executeEmergencyNumberTestModeCommand(ILandroid/telephony/emergency/EmergencyNumber;)V

    goto :goto_47

    :cond_40
    if-eqz p1, :cond_47

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 757
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->executeEmergencyNumberTestModeCommand(ILandroid/telephony/emergency/EmergencyNumber;)V

    :cond_47
    :goto_47
    return-void
.end method

.method protected blacklist notifyEmergencyNumberList()V
    .registers 4

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyEmergencyNumberList()V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEmergencyNumberList(): notified. VDB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    .line 252
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RADIO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", HIGH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    .line 253
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ALL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_75

    :catch_60
    move-exception v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyEmergencyNumberList(): failure: Phone already destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_75
    :goto_75
    return-void
.end method

.method public blacklist simulateNetworkEmergencyNumber(Ljava/lang/String;)V
    .registers 5

    .line 672
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simulateNetworkEmergencyNumber - testNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 674
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    const/4 p1, 0x0

    .line 676
    new-instance v0, Landroid/os/AsyncResult;

    .line 677
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getMergedEmergencyNumberListFromRadio()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 676
    invoke-virtual {p0, v1, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 677
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_50

    .line 679
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simulateNetworkEmergencyNumber - Ignored. testNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    :goto_50
    return-void
.end method

.method protected blacklist updateEmergencyNumberList()V
    .registers 6

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isDialingOrAlerting(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_a8

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isDialingOrAlerting(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_a8

    .line 280
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "KOR"

    .line 281
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isCountrySpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 282
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->overrideVendorEmergencyDatabaseForKorea()V

    .line 285
    :cond_2a
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 287
    iget-boolean v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mUseAospDatabase:Z

    if-eqz v2, :cond_3a

    .line 288
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    :cond_3a
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 297
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_63

    .line 298
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    iget-boolean v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mUseAospDatabase:Z

    if-eqz v2, :cond_63

    .line 301
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 305
    :cond_63
    sget-boolean v2, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez v2, :cond_7f

    .line 306
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListPrefixLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEmergencyNumberList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 309
    :cond_7f
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    invoke-static {v1}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    .line 313
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    .line 316
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isCountrySpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    new-instance v0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_a7
    return-void

    :cond_a8
    :goto_a8
    const-string v1, "Block emergency number list update during dialing or alerting"

    .line 271
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    if-eqz v0, :cond_ba

    .line 274
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_ba
    return-void
.end method

.method public blacklist updateEmergencyNumberListVendorDatabaseAndNotify()V
    .registers 5

    const-string v0, "updateEmergencyNumberListVendorDatabaseAndNotify"

    .line 366
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->cacheVendorEmergencyDatabase()V

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListVendorDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmergencyNumberListVendorDatabaseAndNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void
.end method
