.class public Lcom/android/internal/telephony/PhoneConfigurationManager;
.super Ljava/lang/Object;
.source "PhoneConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;,
        Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist DSDA:Ljava/lang/String; = "dsda"

.field public static final blacklist DSDS:Ljava/lang/String; = "dsds"

.field public static final blacklist SSSS:Ljava/lang/String; = ""

.field public static final blacklist TSTS:Ljava/lang/String; = "tsts"

.field private static blacklist sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

.field private static final blacklist sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

.field private final blacklist mPhoneStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhones:[Lcom/android/internal/telephony/Phone;

.field private final blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private blacklist mStaticCapability:Landroid/telephony/PhoneCapability;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmStaticCapability(Lcom/android/internal/telephony/PhoneConfigurationManager;Landroid/telephony/PhoneCapability;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCapabilityChanged(Lcom/android/internal/telephony/PhoneConfigurationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->notifyCapabilityChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMultiSimConfigChanged(Lcom/android/internal/telephony/PhoneConfigurationManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->onMultiSimConfigChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePhoneStatus(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/Phone;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 72
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 74
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getDefaultCapability()Landroid/telephony/PhoneCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    .line 100
    invoke-static {}, Lcom/android/internal/telephony/RadioConfig;->getInstance()Lcom/android/internal/telephony/RadioConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 101
    new-instance p1, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;-><init>(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler-IA;)V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->notifyCapabilityChanged()V

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    :goto_3c
    if-ge v1, v0, :cond_46

    aget-object v2, p1, v1

    .line 109
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForRadioState(Lcom/android/internal/telephony/Phone;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_46
    return-void
.end method

.method private blacklist broadcastMultiSimConfigChange(I)V
    .registers 4

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastSimSlotNumChange numOfActiveModems"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 457
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->notifyMultiSimConfigChange(I)V

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    .line 460
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist getDefaultCapability()Landroid/telephony/PhoneCapability;
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_a

    .line 119
    sget-object p0, Landroid/telephony/PhoneCapability;->DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object p0

    .line 121
    :cond_a
    sget-object p0, Landroid/telephony/PhoneCapability;->DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/PhoneConfigurationManager;
    .registers 2

    .line 129
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    if-nez v0, :cond_b

    const-string v0, "PhoneCfgMgr"

    const-string v1, "getInstance null"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    return-object v0
.end method

.method public static blacklist init(Landroid/content/Context;)Lcom/android/internal/telephony/PhoneConfigurationManager;
    .registers 4

    .line 80
    const-class v0, Lcom/android/internal/telephony/PhoneConfigurationManager;

    monitor-enter v0

    .line 81
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    if-nez v1, :cond_f

    .line 82
    new-instance v1, Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    goto :goto_27

    :cond_f
    const-string p0, "PhoneCfgMgr"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_27
    sget-object p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    monitor-exit v0

    return-object p0

    :catchall_2b
    move-exception p0

    .line 87
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "PhoneCfgMgr"

    .line 562
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "PhoneCfgMgr"

    .line 566
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyCapabilityChanged()V
    .registers 3

    .line 317
    new-instance v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(Landroid/content/Context;)V

    .line 319
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method public static blacklist notifyMultiSimConfigChange(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 427
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist onMultiSimConfigChanged(I)V
    .registers 6

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v0

    .line 354
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->setMultiSimProperties(I)V

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->isRebootRequiredForModemConfigChange()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string p1, "onMultiSimConfigChanged: Rebooting."

    .line 357
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string p1, "Multi-SIM config changed."

    .line 359
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_8c

    :cond_22
    const-string v1, "onMultiSimConfigChanged: Rebooting is not required."

    .line 361
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;->notifyPhoneFactoryOnMultiSimConfigChanged(Landroid/content/Context;I)V

    .line 363
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->broadcastMultiSimConfigChange(I)V

    const/4 v1, 0x0

    move v2, p1

    :goto_33
    if-ge v2, v0, :cond_4d

    .line 369
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->clearSubInfoRecord(I)V

    .line 371
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 372
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    .line 371
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->onSlotActiveStatusChange(Z)V

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    goto :goto_33

    :cond_4d
    if-eqz v1, :cond_56

    .line 382
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/MultiSimSettingController;->onPhoneRemoved()V

    .line 385
    :cond_56
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    move v1, v0

    :goto_5d
    if-ge v1, p1, :cond_72

    .line 390
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    .line 391
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForRadioState(Lcom/android/internal/telephony/Phone;)V

    .line 392
    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->onSlotActiveStatusChange(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_72
    const-string p0, "PhoneCfgMgr"

    if-le p1, v0, :cond_87

    const/4 v0, 0x2

    if-ne p1, v0, :cond_87

    const-string p1, " onMultiSimConfigChanged: DSDS mode enabled; setting VOICE & SMS subId to -1 (No Preference)"

    .line 399
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    goto :goto_8c

    :cond_87
    const-string p1, "onMultiSimConfigChanged: DSDS mode NOT detected.  NOT setting the default VOICE and SMS subId to -1 (No Preference)"

    .line 408
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8c
    return-void
.end method

.method public static blacklist registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 437
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist registerForRadioState(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 114
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist setMultiSimProperties(I)V
    .registers 2

    .line 422
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;->setMultiSimProperties(I)V

    return-void
.end method

.method public static blacklist unregisterAllMultiSimConfigChangeRegistrants()V
    .registers 1

    .line 451
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->removeAll()V

    return-void
.end method

.method public static blacklist unregisterForMultiSimConfigChange(Landroid/os/Handler;)V
    .registers 2

    .line 444
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 270
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    .line 271
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    .line 270
    invoke-static {p0, v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 272
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public blacklist addToPhoneStatusCache(IZ)V
    .registers 3

    .line 281
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist enablePhone(Lcom/android/internal/telephony/Phone;ZLandroid/os/Message;)V
    .registers 4

    if-nez p1, :cond_8

    const-string p0, "enablePhone failed phone is null"

    .line 201
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void

    .line 204
    :cond_8
    iget-object p0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->enableModem(ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist getCurrentPhoneCapability()Landroid/telephony/PhoneCapability;
    .registers 1

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getModemService()Ljava/lang/String;
    .registers 2

    .line 504
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-nez p0, :cond_a

    const-string p0, ""

    return-object p0

    .line 508
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getModemService()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNumberOfModemsWithSimultaneousDataConnections()I
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    invoke-virtual {p0}, Landroid/telephony/PhoneCapability;->getMaxActiveDataSubscriptions()I

    move-result p0

    return p0
.end method

.method public blacklist getPhoneCount()I
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    return p0
.end method

.method public blacklist getPhoneStatus(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    if-nez p1, :cond_9

    const-string p0, "getPhoneStatus failed phone is null"

    .line 216
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 220
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 224
    :try_start_d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneStatusFromCache(I)Z

    move-result v0
    :try_end_11
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_11} :catch_1a
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 233
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V

    return v0

    :catchall_15
    move-exception v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V

    .line 234
    throw v0

    :catch_1a
    const/4 v0, 0x1

    .line 233
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V

    return v0
.end method

.method public blacklist getPhoneStatusFromCache(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 260
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 262
    :cond_1d
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneId not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getPhoneStatusFromModem(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V
    .registers 3

    if-nez p1, :cond_7

    const-string p0, "getPhoneStatus failed phone is null"

    .line 249
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 251
    :cond_7
    iget-object p0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p2}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    return-void
.end method

.method public declared-synchronized blacklist getStaticPhoneCapability()Landroid/telephony/PhoneCapability;
    .registers 3

    monitor-enter p0

    .line 295
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getDefaultCapability()Landroid/telephony/PhoneCapability;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneCapability;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "getStaticPhoneCapability: sending the request for getting PhoneCapability"

    .line 296
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RadioConfig;->getPhoneCapability(Landroid/os/Message;)V

    .line 301
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStaticPhoneCapability: mStaticCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-object v0

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist isRebootRequiredForModemConfigChange()Z
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;->isRebootRequiredForModemConfigChange()Z

    move-result p0

    return p0
.end method

.method public blacklist setModemService(Ljava/lang/String;)Z
    .registers 5

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    if-nez v0, :cond_c

    goto :goto_5d

    .line 472
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModemService: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    const-string v0, "persist.radio.allow_mock_modem"

    .line 475
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_33

    .line 478
    sget-boolean v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->DEBUG:Z

    if-eqz v0, :cond_2d

    goto :goto_33

    :cond_2d
    const-string p0, "setModemService is not allowed"

    .line 493
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->loge(Ljava/lang/String;)V

    return v1

    :cond_33
    :goto_33
    if-eqz p1, :cond_46

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RadioConfig;->setModemService(Ljava/lang/String;)Z

    move-result v0

    .line 483
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setModemService(Ljava/lang/String;)Z

    move-result p0

    goto :goto_58

    .line 485
    :cond_46
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RadioConfig;->setModemService(Ljava/lang/String;)Z

    move-result p1

    .line 488
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->setModemService(Ljava/lang/String;)Z

    move-result p0

    move v0, p1

    :goto_58
    if-eqz v0, :cond_5d

    if-eqz p0, :cond_5d

    const/4 v1, 0x1

    :cond_5d
    :goto_5d
    return v1
.end method

.method public blacklist switchMultiSimConfig(I)V
    .registers 5

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchMultiSimConfig: with numOfSims = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/PhoneCapability;->getLogicalModemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_3c

    .line 329
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switchMultiSimConfig: Phone is not capable of enabling "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sims, exiting!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void

    .line 333
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v0

    if-eq v0, p1, :cond_56

    const-string v0, "switchMultiSimConfig: sending the request for switching"

    .line 334
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 337
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/RadioConfig;->setNumOfLiveModems(ILandroid/os/Message;)V

    goto :goto_6a

    .line 339
    :cond_56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switchMultiSimConfig: No need to switch. getNumOfActiveSims is already "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    :goto_6a
    return-void
.end method
