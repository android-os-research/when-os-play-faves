.class public Lcom/samsung/android/server/wifi/SemRoamingAssistant;
.super Ljava/lang/Object;
.source "SemRoamingAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;
    }
.end annotation


# static fields
.field private static final JTAG_RCL_LIST:Ljava/lang/String; = "rcl_list"

.field private static final MAX_RCL_COUNT:I = 0x10

.field private static final MAX_RETURN_CHANNEL_COUNT:I = 0xc8

.field private static final MAX_RETURN_CHANNEL_COUNT_FOR_DRIVER:I = 0xa

.field private static final RCL_FILE_DISABLE:Ljava/lang/String; = "Disable.rcl"

.field private static final RCL_FILE_NAME:Ljava/lang/String; = "RCL.json"

.field private static final ROAM_BAND_FROM_S_OS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final VENDOR_VERSION_11:I = 0xb

.field private static final VERSION:Ljava/lang/String; = "2.5"

.field public static final WIFI_CONNECTED_STATE:I = 0x1

.field public static final WIFI_DISCONNECTED_STATE:I = 0x3

.field public static final WIFI_ROAMED_STATE:I = 0x2


# instance fields
.field private interfaceConnectionInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isRclDriverCommandEnabled:Z

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mExceptionalNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastConnectedNetworkKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRclFile:Ljava/io/File;

.field private mRclHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemRoamingChannelList;",
            ">;"
        }
    .end annotation
.end field

.field private mVendorVersion:I

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method public static synthetic $r8$lambda$8vbb_QG4R44_7zNd-nSFJMlmGCI(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mD5ypIIYeDKm3tDdaso-sz35pA8(Lcom/samsung/android/server/wifi/SemRoamingAssistant;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->lambda$forgetNetwork$1(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfactoryReset(Lcom/samsung/android/server/wifi/SemRoamingAssistant;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->factoryReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mforgetNetwork(Lcom/samsung/android/server/wifi/SemRoamingAssistant;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->forgetNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/util/SemClock;)V
    .registers 7

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->isRclDriverCommandEnabled:Z

    .line 64
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaceConnectionInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 69
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "/misc/wifi/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 72
    new-instance p3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RCL.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    .line 73
    new-instance p3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Disable.rcl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_74

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->isRclDriverCommandEnabled:Z

    .line 76
    :cond_74
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getVendorVersion()I

    move-result p3

    iput p3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mVendorVersion:I

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->registerExceptionalNetworks()V

    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/server/wifi/SemRoamingAssistant$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$1;-><init>(Lcom/samsung/android/server/wifi/SemRoamingAssistant;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    .line 92
    sget-object p1, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    const-string p3, "Initiate Roaming Assistant version 2.5"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mVendorVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "vendor version: [%d]"

    invoke-static {p3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " RCL path "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->readFile()V

    return-void
.end method

.method private factoryReset()V
    .registers 3

    .line 336
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    const-string v1, " RCL - factoryReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaceConnectionInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->writeFile()V

    return-void
.end method

.method private forgetNetwork(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 319
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RCL - forgetNetwork "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaceConnectionInfo:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemRoamingAssistant;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->writeFile()V

    :cond_33
    return-void
.end method

.method private getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    if-nez p2, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_c
    iget v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mVendorVersion:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_18

    const/4 p0, 0x3

    .line 256
    invoke-virtual {p2, p3, p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getFrequentlyUsedList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 258
    :cond_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getRoamBand(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p3, p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getFrequentlyUsedList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getStreamData(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 397
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_b
    new-array v0, v0, [C

    .line 401
    :goto_d
    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    if-lez v1, :cond_20

    const/4 v2, 0x0

    .line 402
    invoke-virtual {p0, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_18

    goto :goto_d

    :catch_18
    move-exception p1

    .line 405
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    const-string v1, "getStreamData exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    :cond_20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVendorVersion()I
    .registers 2

    const-string p0, "ro.vendor.build.version.release"

    .line 100
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private ieee80211_frequency_to_channel(I)I
    .registers 2

    const/16 p0, 0x9b4

    if-ne p1, p0, :cond_7

    const/16 p0, 0xe

    return p0

    :cond_7
    if-ge p1, p0, :cond_e

    add-int/lit16 p1, p1, -0x967

    .line 417
    div-int/lit8 p1, p1, 0x5

    return p1

    :cond_e
    const/16 p0, 0x132e

    if-lt p1, p0, :cond_1b

    const/16 p0, 0x1374

    if-gt p1, p0, :cond_1b

    add-int/lit16 p1, p1, -0xfa0

    .line 418
    div-int/lit8 p1, p1, 0x5

    return p1

    :cond_1b
    const/16 p0, 0x1725

    if-ge p1, p0, :cond_24

    add-int/lit16 p1, p1, -0x1388

    .line 419
    div-int/lit8 p1, p1, 0x5

    return p1

    :cond_24
    const/16 p0, 0x172f

    if-ne p1, p0, :cond_2a

    const/4 p0, 0x2

    return p0

    :cond_2a
    const p0, 0xafc8

    if-gt p1, p0, :cond_34

    add-int/lit16 p1, p1, -0x173e

    .line 421
    div-int/lit8 p1, p1, 0x5

    return p1

    :cond_34
    const p0, 0xe3d0

    if-lt p1, p0, :cond_45

    const p0, 0x11238

    if-gt p1, p0, :cond_45

    const p0, 0xdb60

    sub-int/2addr p1, p0

    .line 422
    div-int/lit16 p1, p1, 0x870

    return p1

    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method private isExceptionalNetwork(Ljava/lang/String;)Z
    .registers 3

    .line 137
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V
    .registers 3

    .line 266
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$forgetNetwork$1(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V
    .registers 4

    .line 323
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 324
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaceConnectionInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private readFile()V
    .registers 7

    .line 368
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    const-string v1, " load RCL file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    const-string p0, "RCL file not exists.."

    .line 370
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 374
    :cond_15
    :try_start_15
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v4, "UTF8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_28} :catch_82
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_28} :catch_82

    .line 375
    :try_start_28
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getStreamData(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 377
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_6f

    .line 380
    :cond_35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "rcl_list"

    .line 381
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_78

    if-nez v0, :cond_46

    .line 390
    :try_start_42
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_82
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_45} :catch_82

    return-void

    :cond_46
    const/4 v2, 0x0

    .line 383
    :goto_47
    :try_start_47
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_74

    .line 384
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->fromJson(Lorg/json/JSONObject;Lcom/samsung/android/server/wifi/SemWifiInjector;)Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    move-result-object v3

    const-string v4, ""

    .line 385
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getNetworkKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 386
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getNetworkKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_6f
    :goto_6f
    const-string p0, "File Data is null"

    .line 378
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_47 .. :try_end_74} :catchall_78

    .line 390
    :cond_74
    :try_start_74
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_82
    .catch Lorg/json/JSONException; {:try_start_74 .. :try_end_77} :catch_82

    goto :goto_8a

    :catchall_78
    move-exception p0

    .line 374
    :try_start_79
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_81

    :catchall_7d
    move-exception v0

    :try_start_7e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_81
    throw p0
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_82} :catch_82
    .catch Lorg/json/JSONException; {:try_start_7e .. :try_end_82} :catch_82

    :catch_82
    move-exception p0

    .line 391
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    const-string v1, "readFile exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8a
    return-void
.end method

.method private registerExceptionalNetworks()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const-string v1, "ollehWiFi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const-string v1, "olleh GiGA WiFi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const-string v1, "KT GiGA WiFi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const-string v1, "KT WiFi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const-string v1, "T wifi zone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const-string v1, "U+zone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const-string v1, "U+zone_5G"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const-string v1, "5G_U+zone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const-string v1, "0000docomo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const-string v1, "0001docomo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mExceptionalNetworks:Ljava/util/ArrayList;

    const-string v0, "iptime"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sendDriverRclCommand(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 6

    .line 293
    iget v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mVendorVersion:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_4e

    .line 294
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->isNCHOModeEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 295
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RCL - addRoamScanFrequenciesLegacy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 298
    :cond_2e
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RCL - addRoamScanFrequencies "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 302
    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->isNCHOModeEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 303
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RCL - addRoamScanChannelsLegacy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 306
    :cond_76
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RCL - addRoamScanChannels "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)I

    :goto_95
    return-void
.end method

.method private updateDriverRcl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 271
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->isRclDriverCommandEnabled:Z

    if-nez v0, :cond_c

    .line 272
    sget-object p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    const-string p1, " RCL is disabled, do not send RCL Driver Command."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/16 v0, 0xa

    .line 276
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_58

    .line 278
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_58

    .line 280
    :cond_1b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 282
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_55

    const-string v2, " "

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    iget v2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mVendorVersion:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_41

    .line 285
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 287
    :cond_41
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->ieee80211_frequency_to_channel(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 289
    :cond_55
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->sendDriverRclCommand(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    :cond_58
    :goto_58
    return-void
.end method

.method private updateHash(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V
    .registers 10

    .line 146
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_48

    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    if-eqz v0, :cond_3d

    .line 152
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getLastUpdatedTime()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getLastUpdatedTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1d

    :cond_3d
    move-object v0, v2

    goto :goto_1d

    .line 156
    :cond_3f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateRcl(JLcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V
    .registers 12

    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    if-nez v0, :cond_20

    .line 209
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 210
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->updateHash(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V

    :cond_20
    move-object v2, v0

    .line 212
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetlastUpdatedTime(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)J

    move-result-wide v0

    sub-long v5, p1, v0

    .line 213
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetcachedFrequency(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)I

    move-result v7

    move-wide v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->update(JJI)V

    return-void
.end method

.method private writeFile()V
    .registers 5

    .line 344
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 345
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 346
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    const-string v1, " write RCL file - RCL file already exist, erase it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 348
    :cond_15
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    const-string v1, " write RCL file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_25

    return-void

    .line 353
    :cond_25
    :try_start_25
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_38} :catch_7a
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_38} :catch_7a

    .line 354
    :try_start_38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 355
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 356
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    .line 357
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4c

    :cond_60
    const-string p0, "rcl_list"

    .line 359
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_38 .. :try_end_6c} :catchall_70

    .line 362
    :try_start_6c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_7a
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_6f} :catch_7a

    goto :goto_82

    :catchall_70
    move-exception p0

    .line 353
    :try_start_71
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception v0

    :try_start_76
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_79
    throw p0
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7a} :catch_7a
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_7a} :catch_7a

    :catch_7a
    move-exception p0

    .line 363
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    const-string v1, "writeFile exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_82
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "Wi-Fi RoamingChannelList 2.5"

    .line 265
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 267
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc8

    .line 248
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onDriverEventReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    const-string v0, "ssid"

    .line 220
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "frequencies"

    .line 221
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p2

    .line 223
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 224
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object v2, v3

    goto :goto_13

    :cond_27
    if-nez v2, :cond_2a

    return-void

    .line 228
    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    if-eqz v1, :cond_76

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    array-length v0, p2

    const/4 v4, 0x0

    :goto_4b
    if-ge v4, v0, :cond_5b

    aget v5, p2, v4

    .line 233
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->updateHitCount(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 236
    :cond_5b
    sget-object p1, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " RCL updated by driver event "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_76
    return-void
.end method

.method public wifiStateChangeEvent(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 12

    .line 173
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    const-string v5, " [%s] wifiStateChangeEvent[%d][%s][%d]"

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    move-result-wide v0

    .line 176
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaceConnectionInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;

    if-eq p2, v4, :cond_53

    if-ne p2, v3, :cond_37

    goto :goto_53

    :cond_37
    if-ne p2, v6, :cond_7d

    if-eqz v2, :cond_7d

    .line 197
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mRclHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->-$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 198
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->updateRcl(JLcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->writeFile()V

    .line 201
    :cond_4d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaceConnectionInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 179
    :cond_53
    :goto_53
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7d

    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->isExceptionalNetwork(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    goto :goto_7d

    :cond_60
    if-nez v2, :cond_6c

    .line 184
    new-instance v2, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;-><init>(Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->interfaceConnectionInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    if-ne p2, v4, :cond_77

    .line 189
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->updateDriverRcl(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->mLastConnectedNetworkKey:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 192
    :cond_77
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->updateRcl(JLcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)V

    .line 194
    :goto_7a
    invoke-virtual {v2, p4, v0, v1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->updateConnectionInfo(IJ)V

    :cond_7d
    :goto_7d
    return-void
.end method
