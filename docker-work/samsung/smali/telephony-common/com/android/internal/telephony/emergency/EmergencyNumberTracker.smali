.class public Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
.super Landroid/os/Handler;
.source "EmergencyNumberTracker.java"


# static fields
.field public static final blacklist ADD_EMERGENCY_NUMBER_TEST_MODE:I = 0x1

.field public static blacklist DBG:Z = false

.field public static final blacklist EVENT_OVERRIDE_OTA_EMERGENCY_NUMBER_DB_FILE_PATH:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final blacklist EVENT_UPDATE_OTA_EMERGENCY_NUMBER_DB:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final blacklist REMOVE_EMERGENCY_NUMBER_TEST_MODE:I = 0x2

.field public static final blacklist RESET_EMERGENCY_NUMBER_TEST_MODE:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mCountryIso:Ljava/lang/String;

.field private blacklist mCurrentDatabaseVersion:I

.field protected blacklist mEmergencyNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mEmergencyNumberListDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected blacklist mEmergencyNumberListFromDatabase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mEmergencyNumberListFromRadio:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mEmergencyNumberListFromTestMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected final blacklist mEmergencyNumberListPrefixLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected final blacklist mEmergencyNumberListRadioLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected final blacklist mEmergencyNumberListTestModeLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected blacklist mEmergencyNumberListWithPrefix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mEmergencyNumberPrefix:[Ljava/lang/String;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public blacklist mIsCountrySetByAnotherSub:Z

.field private blacklist mLastKnownEmergencyCountryIso:Ljava/lang/String;

.field private blacklist mOverridedOtaDbParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field protected final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monCarrierConfigChanged(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->onCarrierConfigChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    const-class v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 88
    sput-boolean v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 6

    .line 189
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mOverridedOtaDbParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const-string v1, ""

    .line 104
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mLastKnownEmergencyCountryIso:Ljava/lang/String;

    const/4 v1, -0x1

    .line 105
    iput v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIsCountrySetByAnotherSub:Z

    new-array v1, v1, [Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    .line 140
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 141
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListRadioLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 142
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListPrefixLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 143
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListTestModeLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 144
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 165
    new-instance v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$1;-><init>(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 191
    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz p1, :cond_a5

    .line 195
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_8a

    .line 197
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_8f

    const-string v2, "emergency_number_prefix_string_array"

    .line 199
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    goto :goto_8f

    :cond_8a
    const-string v1, "CarrierConfigManager is null."

    .line 203
    invoke-static {v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    .line 207
    :cond_8f
    :goto_8f
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    .line 210
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_aa

    :cond_a5
    const-string p1, "mPhone is null."

    .line 214
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    .line 217
    :goto_aa
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->initializeDatabaseEmergencyNumberList()V

    const/4 p1, 0x1

    .line 218
    invoke-interface {p2, p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForEmergencyNumberList(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist cacheEmergencyDatabaseByCountry(Ljava/lang/String;)V
    .registers 14

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    :try_start_5
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 488
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "eccdata"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_e9

    .line 489
    :try_start_1a
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_df

    .line 491
    :try_start_1f
    invoke-static {v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->readInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 490
    invoke-static {v3}, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->parseFrom([B)Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    move-result-object v3

    .line 492
    iget v4, v3, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->revision:I

    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " asset emergency database is loaded. Ver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Phone Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 494
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 493
    invoke-static {v5}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 495
    iget-object v3, v3, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_53
    if-ge v7, v5, :cond_78

    aget-object v8, v3, v7

    .line 496
    iget-object v9, v8, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->isoCode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 497
    iget-object v8, v8, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->eccs:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    array-length v9, v8

    move v10, v6

    :goto_67
    if-ge v10, v9, :cond_75

    aget-object v11, v8, v10

    .line 498
    invoke-direct {p0, v11, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->convertEmergencyNumberFromEccInfo(Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_67

    :cond_75
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 503
    :cond_78
    invoke-static {v0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V
    :try_end_7b
    .catchall {:try_start_1f .. :try_end_7b} :catchall_d5

    .line 504
    :try_start_7b
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_df

    :try_start_7e
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_e9

    .line 510
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->cacheOtaEmergencyNumberDatabase()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a5

    if-ne v4, v1, :cond_a5

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No database available. Phone Id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    goto :goto_d4

    :cond_a5
    if-le v4, p1, :cond_c0

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using Asset Emergency database. Version: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 518
    iput v4, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I

    .line 519
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    goto :goto_d4

    .line 521
    :cond_c0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Using Ota Emergency database. Version: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    :goto_d4
    return-void

    :catchall_d5
    move-exception p0

    .line 487
    :try_start_d6
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_da

    goto :goto_de

    :catchall_da
    move-exception p1

    :try_start_db
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_de
    throw p0
    :try_end_df
    .catchall {:try_start_db .. :try_end_df} :catchall_df

    :catchall_df
    move-exception p0

    :try_start_e0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e4

    goto :goto_e8

    :catchall_e4
    move-exception p1

    :try_start_e5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e8
    throw p0
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e9} :catch_e9

    :catch_e9
    move-exception p0

    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cache asset emergency database failure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cacheOtaEmergencyNumberDatabase()I
    .registers 22

    move-object/from16 v0, p0

    .line 530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 534
    iget-object v2, v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mOverridedOtaDbParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const-string v3, "Cache ota emergency database IOException: "

    if-nez v2, :cond_19

    .line 535
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "misc/emergencynumberdb/emergency_number_db"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_25

    .line 539
    :cond_19
    :try_start_19
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 538
    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->getFile(Ljava/io/FileDescriptor;)Ljava/io/File;

    move-result-object v2

    .line 539
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_25} :catch_17c

    .line 547
    :goto_25
    :try_start_25
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_163

    .line 548
    :try_start_2a
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_153

    .line 549
    :try_start_2f
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_143

    .line 551
    :try_start_34
    invoke-static {v6}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->readInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 550
    invoke-static {v7}, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->parseFrom([B)Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    move-result-object v7

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v8

    .line 558
    iget v9, v7, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->revision:I

    .line 559
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ota emergency database is loaded. Ver: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 561
    sget-boolean v10, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v10, :cond_ee

    iget-object v10, v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 562
    invoke-virtual {v10}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v10

    if-eqz v10, :cond_ee

    iget-object v10, v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/SemTelephonyTester;->enableOtaEmergencyNumberDatabaseLog()Z

    move-result v10

    if-eqz v10, :cond_ee

    .line 564
    iget-object v10, v7, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    array-length v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_76
    if-ge v13, v12, :cond_ee

    aget-object v15, v10, v13

    .line 566
    iget-object v11, v15, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->eccs:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    array-length v4, v11

    move-object/from16 v16, v10

    move/from16 v17, v12

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_83
    if-ge v10, v4, :cond_e3

    move/from16 v18, v4

    aget-object v4, v11, v10

    move-object/from16 v19, v11

    .line 567
    new-instance v11, Ljava/lang/StringBuilder;
    :try_end_8d
    .catchall {:try_start_34 .. :try_end_8d} :catchall_133

    move-object/from16 v20, v3

    :try_start_8f
    const-string v3, "countryEccInfo["

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->isoCode:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] -"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " eccInfo["

    .line 568
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    iget-object v4, v15, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->isoCode:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const-string v4, " (USE)"

    goto :goto_cf

    :cond_cd
    const-string v4, " (SKIP)"

    :goto_cf
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    move v12, v3

    move/from16 v4, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    goto :goto_83

    :cond_e3
    move-object/from16 v20, v3

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v16

    move/from16 v12, v17

    goto :goto_76

    :cond_ee
    move-object/from16 v20, v3

    .line 576
    iget-object v3, v7, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    array-length v4, v3

    const/4 v7, 0x0

    :goto_f4
    if-ge v7, v4, :cond_119

    aget-object v10, v3, v7

    .line 577
    iget-object v11, v10, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->isoCode:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_116

    .line 578
    iget-object v10, v10, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->eccs:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_108
    if-ge v12, v11, :cond_116

    aget-object v13, v10, v12

    .line 579
    invoke-direct {v0, v13, v8}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->convertEmergencyNumberFromEccInfo(Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_108

    :cond_116
    add-int/lit8 v7, v7, 0x1

    goto :goto_f4

    .line 584
    :cond_119
    invoke-static {v1}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V
    :try_end_11c
    .catchall {:try_start_8f .. :try_end_11c} :catchall_131

    .line 585
    :try_start_11c
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_141

    :try_start_11f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_151

    :try_start_122
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_161

    const/4 v2, -0x1

    if-eq v9, v2, :cond_130

    .line 591
    iget v2, v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I

    if-ge v2, v9, :cond_130

    .line 593
    iput v9, v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I

    .line 594
    iput-object v1, v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    :cond_130
    return v9

    :catchall_131
    move-exception v0

    goto :goto_136

    :catchall_133
    move-exception v0

    move-object/from16 v20, v3

    :goto_136
    move-object v1, v0

    .line 547
    :try_start_137
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_13a
    .catchall {:try_start_137 .. :try_end_13a} :catchall_13b

    goto :goto_140

    :catchall_13b
    move-exception v0

    move-object v3, v0

    :try_start_13d
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_140
    throw v1
    :try_end_141
    .catchall {:try_start_13d .. :try_end_141} :catchall_141

    :catchall_141
    move-exception v0

    goto :goto_146

    :catchall_143
    move-exception v0

    move-object/from16 v20, v3

    :goto_146
    move-object v1, v0

    :try_start_147
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14a
    .catchall {:try_start_147 .. :try_end_14a} :catchall_14b

    goto :goto_150

    :catchall_14b
    move-exception v0

    move-object v2, v0

    :try_start_14d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_150
    throw v1
    :try_end_151
    .catchall {:try_start_14d .. :try_end_151} :catchall_151

    :catchall_151
    move-exception v0

    goto :goto_156

    :catchall_153
    move-exception v0

    move-object/from16 v20, v3

    :goto_156
    move-object v1, v0

    :try_start_157
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_15b

    goto :goto_160

    :catchall_15b
    move-exception v0

    move-object v2, v0

    :try_start_15d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_160
    throw v1
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_161} :catch_161

    :catch_161
    move-exception v0

    goto :goto_166

    :catch_163
    move-exception v0

    move-object/from16 v20, v3

    .line 586
    :goto_166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :goto_17a
    const/4 v1, -0x1

    return v1

    :catch_17c
    move-exception v0

    move-object v2, v3

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    goto :goto_17a
.end method

.method private blacklist convertEmergencyNumberFromEccInfo(Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;
    .registers 11

    .line 436
    iget-object p0, p1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "EccInfo has empty phone number."

    .line 438
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 442
    :cond_13
    iget-object p0, p1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    array-length p1, p0

    const/4 v0, 0x0

    move v4, v0

    :goto_18
    if-ge v0, p1, :cond_37

    aget v2, p0, v0

    packed-switch v2, :pswitch_data_4a

    goto :goto_34

    :pswitch_20
    or-int/lit8 v4, v4, 0x40

    goto :goto_34

    :pswitch_23
    or-int/lit8 v4, v4, 0x20

    goto :goto_34

    :pswitch_26
    or-int/lit8 v4, v4, 0x10

    goto :goto_34

    :pswitch_29
    or-int/lit8 v4, v4, 0x8

    goto :goto_34

    :pswitch_2c
    or-int/lit8 v4, v4, 0x4

    goto :goto_34

    :pswitch_2f
    or-int/lit8 v4, v4, 0x2

    goto :goto_34

    :pswitch_32
    or-int/lit8 v4, v4, 0x1

    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 476
    :cond_37
    new-instance p0, Landroid/telephony/emergency/EmergencyNumber;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v3, ""

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method private blacklist getCountryIsoForCachingDatabase()Ljava/lang/String;
    .registers 1

    .line 939
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 941
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 943
    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getLastKnownCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getEmergencyNumberListFromEccList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 968
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v1

    const-string v2, "ril.ecclist"

    if-gtz v1, :cond_18

    goto :goto_27

    .line 970
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_27
    const-string v1, ""

    .line 971
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v1, "ro.ril.ecclist"

    .line 974
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 976
    :cond_39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ","

    if-nez v2, :cond_56

    .line 979
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v5, v3

    :goto_48
    if-ge v5, v2, :cond_56

    aget-object v6, v1, v5

    .line 980
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLabeledEmergencyNumberForEcclist(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 983
    :cond_56
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isSimAbsent()Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, "112,911,000,08,110,118,119,999"

    goto :goto_61

    :cond_5f
    const-string v1, "112,911"

    .line 984
    :goto_61
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_66
    if-ge v3, v2, :cond_74

    aget-object v4, v1, v3

    .line 985
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLabeledEmergencyNumberForEcclist(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 987
    :cond_74
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_80

    .line 988
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 990
    :cond_80
    invoke-static {v0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    return-object v0
.end method

.method private blacklist getEmergencyNumberListFromEccListDatabaseAndTest()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 1251
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListFromEccList()Ljava/util/List;

    move-result-object v0

    .line 1252
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/HalVersion;

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "getEmergencyNumberListFromEccListDatabaseAndTest: radio indication is unavailable in 1.4 HAL."

    .line 1253
    invoke-static {v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    .line 1255
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1256
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1259
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListTestMode()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1260
    invoke-static {v0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    return-object v0
.end method

.method private blacklist getInitialCountryIso()Ljava/lang/String;
    .registers 1

    .line 379
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_15

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const-string p0, "getInitialCountryIso mPhone is null."

    .line 388
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_1a
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getLabeledEmergencyNumberForEcclist(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;
    .registers 10

    .line 1051
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1052
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 1053
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1054
    new-instance p1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1055
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v3, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object p1

    .line 1060
    :cond_3d
    new-instance p0, Landroid/telephony/emergency/EmergencyNumber;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, ""

    const-string v3, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object p0
.end method

.method private blacklist initializeDatabaseEmergencyNumberList()V
    .registers 3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeDatabaseEmergencyNumberList - CountryIso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    if-nez v0, :cond_38

    .line 315
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getInitialCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyCountryIso(Ljava/lang/String;)V

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 319
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getCountryIsoForCachingDatabase()Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_35
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->cacheEmergencyDatabaseByCountry(Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method private blacklist isAirplaneModeEnabled()Z
    .registers 2

    .line 281
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isEmergencyNumberForTest(Ljava/lang/String;)Z
    .registers 3

    .line 1021
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1022
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 1023
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isEmergencyNumberFromDatabase(Ljava/lang/String;)Z
    .registers 6

    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/HalVersion;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return v1

    .line 1034
    :cond_15
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 1036
    invoke-virtual {v3}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return v2

    .line 1040
    :cond_36
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    .line 1041
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 1042
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 1043
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    return v2

    :cond_57
    return v1
.end method

.method private blacklist isEmergencyNumberFromEccList(Ljava/lang/String;Z)Z
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1094
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v1

    .line 1097
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 1099
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/HalVersion;

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_f4

    const-string v3, "ril.ecclist"

    if-gtz v1, :cond_30

    goto :goto_3f

    .line 1102
    :cond_30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3f
    const-string v5, ""

    .line 1103
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slotId:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " country:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " emergencyNumbers: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 1108
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    const-string v1, "ro.ril.ecclist"

    .line 1110
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1113
    :cond_75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f4

    .line 1116
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v0

    :goto_81
    if-ge v4, v3, :cond_f3

    aget-object v5, v1, v4

    if-nez p2, :cond_c8

    const-string v7, "br"

    .line 1120
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c8

    const-string v7, "cl"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c8

    const-string v7, "ni"

    .line 1121
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a0

    goto :goto_c8

    .line 1132
    :cond_a0
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a7

    return v6

    .line 1135
    :cond_a7
    iget-object v7, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v8, v7

    move v9, v0

    :goto_ab
    if-ge v9, v8, :cond_f0

    aget-object v10, v7, v9

    .line 1136
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c5

    return v6

    :cond_c5
    add-int/lit8 v9, v9, 0x1

    goto :goto_ab

    .line 1122
    :cond_c8
    :goto_c8
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cf

    return v6

    .line 1125
    :cond_cf
    iget-object v7, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v8, v7

    move v9, v0

    :goto_d3
    if-ge v9, v8, :cond_f0

    aget-object v10, v7, v9

    .line 1126
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ed

    return v6

    :cond_ed
    add-int/lit8 v9, v9, 0x1

    goto :goto_d3

    :cond_f0
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    :cond_f3
    return v0

    :cond_f4
    const-string v1, "System property doesn\'t provide any emergency numbers. Use embedded logic for determining ones."

    .line 1148
    invoke-static {v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isSimAbsent()Z

    move-result v1

    if-eqz v1, :cond_102

    const-string v1, "112,911,000,08,110,118,119,999"

    goto :goto_104

    :cond_102
    const-string v1, "112,911"

    .line 1155
    :goto_104
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v0

    :goto_10a
    if-ge v4, v3, :cond_163

    aget-object v5, v1, v4

    if-eqz p2, :cond_138

    .line 1157
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_117

    return v6

    .line 1160
    :cond_117
    iget-object v7, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v8, v7

    move v9, v0

    :goto_11b
    if-ge v9, v8, :cond_160

    aget-object v10, v7, v9

    .line 1161
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_135

    return v6

    :cond_135
    add-int/lit8 v9, v9, 0x1

    goto :goto_11b

    .line 1167
    :cond_138
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13f

    return v6

    .line 1170
    :cond_13f
    iget-object v7, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v8, v7

    move v9, v0

    :goto_143
    if-ge v9, v8, :cond_160

    aget-object v10, v7, v9

    .line 1171
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15d

    return v6

    :cond_15d
    add-int/lit8 v9, v9, 0x1

    goto :goto_143

    :cond_160
    add-int/lit8 v4, v4, 0x1

    goto :goto_10a

    .line 1179
    :cond_163
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isSimAbsent()Z

    move-result v1

    if-eqz v1, :cond_1d2

    if-eqz v2, :cond_1d2

    .line 1182
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getInstance()Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;

    move-result-object v1

    if-eqz p2, :cond_1a2

    .line 1184
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_17c

    return v6

    .line 1187
    :cond_17c
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length p2, p0

    move v3, v0

    :goto_180
    if-ge v3, p2, :cond_1a1

    aget-object v4, p0, v3

    .line 1188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19e

    return v6

    :cond_19e
    add-int/lit8 v3, v3, 0x1

    goto :goto_180

    :cond_1a1
    return v0

    .line 1195
    :cond_1a2
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1ad

    return v6

    .line 1198
    :cond_1ad
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length p2, p0

    move v3, v0

    :goto_1b1
    if-ge v3, p2, :cond_1d2

    aget-object v4, p0, v3

    .line 1199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1200
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 1199
    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    return v6

    :cond_1cf
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b1

    :cond_1d2
    return v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 1277
    sget-object v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1285
    sget-object v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist logw(Ljava/lang/String;)V
    .registers 2

    .line 1281
    sget-object v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onCarrierConfigChanged()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_35

    .line 361
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_3a

    .line 363
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string v1, "emergency_number_prefix_string_array"

    .line 365
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const/4 v1, 0x4

    .line 368
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 369
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3a

    :cond_35
    const-string p0, "onCarrierConfigChanged mPhone is null."

    .line 374
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private blacklist overrideOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideOtaEmergencyNumberDbFilePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 668
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mOverridedOtaDbParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private static blacklist readInputStreamToByteArray(Ljava/io/InputStream;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v2, v1, [B

    :goto_9
    const/4 v3, 0x0

    .line 607
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    .line 608
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 610
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 611
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized blacklist updateEmergencyCountryIso(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 954
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    .line 955
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 956
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mLastKnownEmergencyCountryIso:Ljava/lang/String;

    :cond_d
    const/4 p1, -0x1

    .line 958
    iput p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 959
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist updateEmergencyNumberListDatabaseAndNotify(Ljava/lang/String;)V
    .registers 5

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmergencyNumberListDatabaseAndNotify(): receiving countryIso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyCountryIso(Ljava/lang/String;)V

    .line 645
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 646
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getCountryIsoForCachingDatabase()Ljava/lang/String;

    move-result-object p1

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmergencyNumberListDatabaseAndNotify(): using cached APM country "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 650
    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->cacheEmergencyDatabaseByCountry(Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->writeUpdatedEmergencyNumberListMetrics(Ljava/util/List;)V

    .line 652
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    const-string v0, "updateEmergencyNumberListDatabaseAndNotify:"

    if-nez p1, :cond_63

    .line 653
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 657
    :cond_63
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 658
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_80

    .line 659
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 662
    :cond_80
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void
.end method

.method private blacklist updateEmergencyNumberListTestModeAndNotify(ILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 1225
    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_24

    .line 1226
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_13
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1c

    .line 1229
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_24

    :cond_1c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_61

    .line 1231
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1236
    :cond_24
    :goto_24
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    const-string p2, "updateEmergencyNumberListTestModeAndNotify:"

    if-nez p1, :cond_40

    .line 1237
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListTestModeLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1241
    :cond_40
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 1242
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_5d

    .line 1243
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1247
    :cond_5d
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void

    :cond_61
    const-string p0, "updateEmergencyNumberListTestModeAndNotify: Unexpected action in test mode."

    .line 1233
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateEmergencyNumberPrefixAndNotify([Ljava/lang/String;)V
    .registers 4

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmergencyNumberPrefixAndNotify(): receiving emergencyNumberPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 693
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    .line 694
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 695
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_39

    .line 696
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmergencyNumberPrefixAndNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 699
    :cond_39
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void
.end method

.method private blacklist updateOtaEmergencyNumberListDatabaseAndNotify()V
    .registers 5

    const-string v0, "updateOtaEmergencyNumberListDatabaseAndNotify(): receiving Emegency Number database OTA update"

    .line 672
    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 674
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->cacheOtaEmergencyNumberDatabase()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4d

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->writeUpdatedEmergencyNumberListMetrics(Ljava/util/List;)V

    .line 676
    sget-boolean v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    const-string v1, "updateOtaEmergencyNumberListDatabaseAndNotify:"

    if-nez v0, :cond_2d

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 681
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 682
    sget-boolean v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez v0, :cond_4a

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 686
    :cond_4a
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V

    :cond_4d
    return-void
.end method

.method private blacklist updateRadioEmergencyNumberListAndNotify(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 616
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRadioEmergencyNumberListAndNotify(): receiving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 620
    :try_start_1f
    invoke-static {p1}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    .line 621
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->writeUpdatedEmergencyNumberListMetrics(Ljava/util/List;)V

    .line 622
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    .line 623
    sget-boolean v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez v0, :cond_41

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListRadioLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRadioEmergencyNumberList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 627
    :cond_41
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 628
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_60

    .line 629
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRadioEmergencyNumberListAndNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 632
    :cond_60
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V
    :try_end_63
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_63} :catch_64

    goto :goto_7e

    :catch_64
    move-exception p0

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateRadioEmergencyNumberListAndNotify() Phone already destroyed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " EmergencyNumberList not notified"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method private blacklist writeUpdatedEmergencyNumberListMetrics(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1293
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 1294
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1295
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberDbVersion()I

    move-result v3

    .line 1294
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeEmergencyNumberUpdateEvent(ILandroid/telephony/emergency/EmergencyNumber;I)V

    goto :goto_7

    :cond_25
    return-void
.end method


# virtual methods
.method blacklist checkSimInserted(Lcom/android/internal/telephony/Phone;)Z
    .registers 4

    .line 867
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "phone1_on"

    goto :goto_b

    :cond_9
    const-string p0, "phone2_on"

    .line 868
    :goto_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    if-ne p0, v1, :cond_1d

    move p0, v1

    goto :goto_1e

    :cond_1d
    move p0, v0

    .line 869
    :goto_1e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result p1

    if-eqz p1, :cond_2b

    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v0

    :goto_2c
    return v1
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 1307
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Hal Version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " ========================================= "

    .line 1309
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Country Iso:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Database Version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberDbVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mEmergencyNumberListDatabaseLocalLog:"

    .line 1317
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1319
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1320
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1321
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mEmergencyNumberListRadioLocalLog:"

    .line 1323
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1325
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListRadioLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1327
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mEmergencyNumberListPrefixLocalLog:"

    .line 1329
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1331
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListPrefixLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1333
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mEmergencyNumberListTestModeLocalLog:"

    .line 1335
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1337
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListTestModeLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1339
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mEmergencyNumberListLocalLog (valid >= 1.4 HAL):"

    .line 1341
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1343
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1345
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result p1

    const-string p2, "ril.ecclist"

    if-gtz p1, :cond_ce

    goto :goto_dd

    .line 1348
    :cond_ce
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1349
    :goto_dd
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " ril.ecclist: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Emergency Number List for Phone("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1354
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1355
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1356
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist executeEmergencyNumberTestModeCommand(ILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1217
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist getEmergencyCallRouting(Ljava/lang/String;)I
    .registers 4

    .line 919
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 920
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 921
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x10

    .line 922
    invoke-virtual {v0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 923
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result p0

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getEmergencyCountryIso()Ljava/lang/String;
    .registers 1

    .line 931
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEmergencyNumber(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;
    .registers 4

    .line 880
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 881
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 882
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getEmergencyNumberDbVersion()I
    .registers 1

    .line 950
    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I

    return p0
.end method

.method public blacklist getEmergencyNumberList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 761
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 762
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "vn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 763
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 770
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 772
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 774
    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListFromEccListDatabaseAndTest()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEmergencyNumberListTestMode()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 1268
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_62

    .line 1003
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    move-object/from16 v3, p0

    .line 1004
    iget-object v4, v3, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    .line 1007
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 1008
    new-instance v8, Landroid/telephony/emergency/EmergencyNumber;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v11

    .line 1010
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v13

    .line 1011
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v15

    .line 1012
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v16

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 1008
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_62
    return-object v0
.end method

.method public blacklist getEmergencyServiceCategories(Ljava/lang/String;)I
    .registers 4

    .line 899
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 900
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 901
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    .line 902
    invoke-virtual {v0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x2

    .line 903
    invoke-virtual {v0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 904
    :cond_30
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result p0

    return p0

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getLastKnownEmergencyCountryIso()Ljava/lang/String;
    .registers 1

    .line 935
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mLastKnownEmergencyCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRadioEmergencyNumberList()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 1273
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_86

    goto/16 :goto_84

    .line 271
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_11

    const/4 p1, 0x0

    .line 272
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->overrideOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_84

    .line 274
    :cond_11
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->overrideOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_84

    .line 268
    :pswitch_18
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateOtaEmergencyNumberListDatabaseAndNotify()V

    goto/16 :goto_84

    .line 260
    :pswitch_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_27

    const-string p0, "EVENT_UPDATE_EMERGENCY_NUMBER_PREFIX: Result from onCarrierConfigChanged is null."

    .line 261
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    goto :goto_84

    .line 264
    :cond_27
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberPrefixAndNotify([Ljava/lang/String;)V

    goto :goto_84

    .line 251
    :pswitch_2d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_3c

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3c

    const-string p0, "EVENT_UPDATE_EMERGENCY_NUMBER_TEST_MODE: Result from executeEmergencyNumberTestModeCommand is null."

    .line 252
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    goto :goto_84

    .line 255
    :cond_3c
    iget p1, p1, Landroid/os/Message;->arg1:I

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberListTestModeAndNotify(ILandroid/telephony/emergency/EmergencyNumber;)V

    goto :goto_84

    .line 243
    :pswitch_44
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_4e

    const-string p0, "EVENT_UPDATE_DB_COUNTRY_ISO_CHANGED: Result from UpdateCountryIso is null."

    .line 244
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    goto :goto_84

    .line 247
    :cond_4e
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberListDatabaseAndNotify(Ljava/lang/String;)V

    goto :goto_84

    .line 232
    :pswitch_54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 233
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_62

    const-string p0, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: Result from RIL is null."

    .line 234
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    goto :goto_84

    :cond_62
    if-eqz v0, :cond_6e

    .line 235
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6e

    .line 236
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateRadioEmergencyNumberListAndNotify(Ljava/util/List;)V

    goto :goto_84

    .line 238
    :cond_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: Exception from RIL : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :goto_84
    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_54
        :pswitch_44
        :pswitch_2d
        :pswitch_1d
        :pswitch_18
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist isEmergencyNumber(Ljava/lang/String;Z)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 789
    :cond_4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    .line 793
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    .line 799
    :cond_20
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 805
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c8

    if-nez p2, :cond_76

    .line 813
    :try_start_2f
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v3, v1
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_34} :catch_55

    move v4, v0

    move v5, v4

    move v6, v5

    :goto_37
    if-ge v4, v3, :cond_6c

    :try_start_39
    aget-object v7, v1, v4

    .line 814
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    if-eq v8, v9, :cond_4c

    .line 815
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->checkSimInserted(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    goto :goto_50

    .line 817
    :cond_4c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->checkSimInserted(Lcom/android/internal/telephony/Phone;)Z

    move-result v5
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_50} :catch_53

    :goto_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :catch_53
    move-exception v1

    goto :goto_58

    :catch_55
    move-exception v1

    move v5, v0

    move v6, v5

    .line 821
    :goto_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmergencyNumber - getPhones is fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    :cond_6c
    if-nez v5, :cond_76

    if-eqz v6, :cond_76

    const-string p2, "workaround, number current slot is not count potentialEmergencyNumbers"

    .line 825
    invoke-static {p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    move p2, v2

    .line 830
    :cond_76
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v4

    const-string v5, "br"

    .line 835
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a4

    const-string v5, "cl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a4

    const-string v5, "ni"

    .line 836
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    :cond_a4
    move p2, v2

    :cond_a5
    if-eqz p2, :cond_b7

    .line 842
    invoke-virtual {v3}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    const-string p0, "Found in mEmergencyNumberList [exact match] "

    .line 843
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return v2

    .line 847
    :cond_b7
    invoke-virtual {v3}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    const-string p0, "Found in mEmergencyNumberList [not exact match] "

    .line 848
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return v2

    :cond_c7
    return v0

    .line 855
    :cond_c8
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumberFromEccList(Ljava/lang/String;Z)Z

    move-result p2

    .line 856
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumberFromDatabase(Ljava/lang/String;)Z

    move-result v1

    .line 857
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumberForTest(Ljava/lang/String;)Z

    move-result p0

    .line 858
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Search results - inRilEccList:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " inEmergencyNumberDb:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " inEmergencyNumberTestList: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    if-nez p2, :cond_fe

    if-nez v1, :cond_fe

    if-eqz p0, :cond_ff

    :cond_fe
    move v0, v2

    :cond_ff
    return v0
.end method

.method public blacklist isSimAbsent()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 296
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_3e

    aget-object v3, p0, v2

    .line 297
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3b

    .line 301
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found sim in slotId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " subid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return v1

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3e
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist notifyEmergencyNumberList()V
    .registers 3

    .line 709
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 710
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->notifyEmergencyNumberList()V

    const-string p0, "notifyEmergencyNumberList(): notified"

    .line 711
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_26

    :catch_11
    move-exception p0

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEmergencyNumberList(): failure: Phone already destroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public blacklist resetOtaEmergencyNumberDbFilePath()V
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 431
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 432
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist updateEmergencyCountryIsoAllPhones(Ljava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIsCountrySetByAnotherSub:Z

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberDatabaseCountryChange(Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_43

    aget-object v3, v1, v0

    .line 339
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v4, v5, :cond_1c

    goto :goto_40

    .line 343
    :cond_1c
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 344
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v3

    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 347
    invoke-virtual {v3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    iget-boolean v4, v3, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIsCountrySetByAnotherSub:Z

    if-eqz v4, :cond_40

    :cond_3a
    const/4 v4, 0x1

    .line 349
    iput-boolean v4, v3, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIsCountrySetByAnotherSub:Z

    .line 350
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberDatabaseCountryChange(Ljava/lang/String;)V

    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_43
    return-void
.end method

.method public blacklist updateEmergencyNumberDatabaseCountryChange(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    .line 402
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected blacklist updateEmergencyNumberList()V
    .registers 5

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 730
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 736
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2c

    .line 738
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 743
    :cond_2c
    sget-boolean v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez v1, :cond_48

    .line 744
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListPrefixLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEmergencyNumberList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 747
    :cond_48
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 749
    invoke-static {v0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    .line 750
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    return-void
.end method

.method public blacklist updateOtaEmergencyNumberDatabase()V
    .registers 2

    const/4 v0, 0x5

    .line 411
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    const/4 v0, 0x6

    .line 420
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 422
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
