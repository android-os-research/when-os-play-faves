.class public final Lcom/samsung/android/server/wifi/SemWifiLnaControl;
.super Ljava/lang/Object;
.source "SemWifiLnaControl.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x7d0

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiLnaControl history:"

.field private static final ELNA_CONTROL_BYPASS:I = 0x1

.field private static final ELNA_CONTROL_NOT_BYPASS:I = 0x0

.field private static final ELNA_VENDOR_CONTROL:I = 0x2

.field private static final GET_SCPM_POLICY:I = 0x1

.field private static final LINK_STATE_UPDATE:I = 0x2

.field private static final LNA_CONTROL_CHECK:I = 0x0

.field private static final LNA_CONTROL_CHECK_PERIOD_LONG_MS:I = 0x2710

.field private static final LNA_CONTROL_CHECK_PERIOD_SHORT_MS:I = 0xbb8

.field private static final LNA_STATUS_QUERY:I = 0x4

.field public static final LOG_TYPE_D:I = 0x0

.field public static final LOG_TYPE_E:I = 0x1

.field public static final LOG_TYPE_I:I = 0x2

.field private static final MINIMUM_BANDWIDTH_MHZ:I = 0x14

.field private static final MIN_SENSITIVITY_TABLE:[[I

.field private static final ON_CONNECTION:I = 0x3

.field private static final RATE_TABLE:[[[D

.field private static final SCPM_CONFIGURATION_NAME:Ljava/lang/String; = "ELNA_CONTROL"

.field private static final TAG:Ljava/lang/String; = "SemWifiLnaControl"

.field private static final UNKNOWN_VERSION_H:Ljava/lang/String; = "9999"

.field private static final UNKNOWN_VERSION_L:Ljava/lang/String; = "0000"

.field private static final isFeatureEnabled:Z = false

.field private static mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private connectionTimeS:J

.field private cummulativeOffTimeS:J

.field private elnaControlHighThresholdDbm:I

.field private elnaControlLowThresholdDbm:I

.field private final elnaControlVersion:Ljava/lang/String;

.field private elnaCurrent:[I

.field private elnaEnableSensitivityRatio:D

.field private elnaGain:I

.field private lastBW:I

.field private lastCcaBusyTimeMs:J

.field private lastCheckTimeS:J

.field private lastMCSIdx:I

.field private lastMode:I

.field private lastNSS:I

.field private lastRateStatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
            ">;"
        }
    .end annotation
.end field

.field private lastRxTimeMs:J

.field private lastTimeMs:J

.field private lastTxTimeMs:J

.field private latestSCPMVersion:Ljava/lang/String;

.field private lnaControlHandler:Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

.field private lnaStatus:I

.field private lnaStatusChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field private final mContext:Landroid/content/Context;

.field private mIfaceName:Ljava/lang/String;

.field private final mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

.field private mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

.field private rxCurrent:[I

.field private rxTimeRatioPercent:J

.field private scpmDriverVersion:Ljava/lang/String;

.field private scpmElnaControlVersion:Ljava/lang/String;

.field private scpmFirmwareVersion:Ljava/lang/String;

.field private screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private wifiStandardBound:I


# direct methods
.method public static synthetic $r8$lambda$CezR4tp5mtNoFlCrJ4Yp3V2hZV4(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->connectionTimeS:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcummulativeOffTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->cummulativeOffTimeS:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetelnaControlHighThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlHighThresholdDbm:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetelnaControlLowThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlLowThresholdDbm:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetelnaCurrent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)[I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaCurrent:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetelnaEnableSensitivityRatio(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaEnableSensitivityRatio:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetelnaGain(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaGain:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastBW:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastCheckTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCheckTimeS:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastMCSIdx(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMCSIdx:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastNSS:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlnaControlHandler(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaControlHandler:Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlnaStatusChanged(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatusChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrxCurrent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)[I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxCurrent:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrxTimeRatioPercent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxTimeRatioPercent:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetscreenOn(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiStandardBound(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->wifiStandardBound:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputconnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->connectionTimeS:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcummulativeOffTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->cummulativeOffTimeS:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastCheckTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCheckTimeS:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckScpmPolicy(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->checkScpmPolicy()V

    return-void
.end method

.method static bridge synthetic -$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->eLnaControl(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$meLnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->eLnaStatus()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mfindExpectedMCS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->findExpectedMCS(IIII)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetExpectedRate(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)D
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getExpectedRate(IIII)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mgetExpectedRssi(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getExpectedRssi(IIII)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Landroid/net/wifi/WifiInfo;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpolicyComplianceCheck(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->policyComplianceCheck()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->updateWifiUsabilityStatsEntry(Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMIN_SENSITIVITY_TABLE()[[I
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->MIN_SENSITIVITY_TABLE:[[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 12

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    const/4 v0, 0x6

    new-array v1, v0, [[I

    const/16 v2, 0x8

    new-array v3, v2, [I

    .line 108
    fill-array-data v3, :array_ac

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x4

    new-array v5, v3, [I

    fill-array-data v5, :array_c0

    const/4 v6, 0x1

    aput-object v5, v1, v6

    new-array v5, v2, [I

    fill-array-data v5, :array_cc

    const/4 v7, 0x2

    aput-object v5, v1, v7

    new-array v5, v2, [I

    fill-array-data v5, :array_e0

    const/4 v8, 0x3

    aput-object v5, v1, v8

    const/16 v5, 0xa

    new-array v9, v5, [I

    fill-array-data v9, :array_f4

    aput-object v9, v1, v3

    const/16 v9, 0xc

    new-array v10, v9, [I

    fill-array-data v10, :array_10c

    const/4 v11, 0x5

    aput-object v10, v1, v11

    sput-object v1, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->MIN_SENSITIVITY_TABLE:[[I

    new-array v0, v0, [[[D

    new-array v1, v4, [[D

    aput-object v1, v0, v4

    new-array v1, v6, [[D

    new-array v10, v3, [D

    .line 117
    fill-array-data v10, :array_128

    aput-object v10, v1, v4

    aput-object v1, v0, v6

    new-array v1, v4, [[D

    aput-object v1, v0, v7

    new-array v1, v7, [[D

    new-array v10, v2, [D

    fill-array-data v10, :array_13c

    aput-object v10, v1, v4

    new-array v2, v2, [D

    fill-array-data v2, :array_160

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    new-array v1, v3, [[D

    new-array v2, v5, [D

    fill-array-data v2, :array_184

    aput-object v2, v1, v4

    new-array v2, v5, [D

    fill-array-data v2, :array_1b0

    aput-object v2, v1, v6

    new-array v2, v5, [D

    fill-array-data v2, :array_1dc

    aput-object v2, v1, v7

    new-array v2, v5, [D

    fill-array-data v2, :array_208

    aput-object v2, v1, v8

    aput-object v1, v0, v3

    new-array v1, v3, [[D

    new-array v2, v9, [D

    fill-array-data v2, :array_234

    aput-object v2, v1, v4

    new-array v2, v9, [D

    fill-array-data v2, :array_268

    aput-object v2, v1, v6

    new-array v2, v9, [D

    fill-array-data v2, :array_29c

    aput-object v2, v1, v7

    new-array v2, v9, [D

    fill-array-data v2, :array_2d0

    aput-object v2, v1, v8

    aput-object v1, v0, v11

    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->RATE_TABLE:[[[D

    return-void

    :array_ac
    .array-data 4
        -0x52
        -0x51
        -0x4f
        -0x4d
        -0x4a
        -0x46
        -0x42
        -0x41
    .end array-data

    :array_c0
    .array-data 4
        -0x50
        -0x4f
        -0x4d
        -0x4c
    .end array-data

    :array_cc
    .array-data 4
        -0x52
        -0x51
        -0x4f
        -0x4d
        -0x4a
        -0x46
        -0x42
        -0x41
    .end array-data

    :array_e0
    .array-data 4
        -0x52
        -0x4f
        -0x4d
        -0x4a
        -0x46
        -0x42
        -0x41
        -0x40
    .end array-data

    :array_f4
    .array-data 4
        -0x52
        -0x4f
        -0x4d
        -0x4a
        -0x46
        -0x42
        -0x41
        -0x40
        -0x3b
        -0x39
    .end array-data

    :array_10c
    .array-data 4
        -0x52
        -0x4f
        -0x4d
        -0x4a
        -0x46
        -0x42
        -0x41
        -0x40
        -0x3b
        -0x39
        -0x36
        -0x34
    .end array-data

    :array_128
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4016000000000000L    # 5.5
        0x4026000000000000L    # 11.0
    .end array-data

    :array_13c
    .array-data 8
        0x401ccccccccccccdL    # 7.2
        0x402ccccccccccccdL    # 14.4
        0x4035b33333333333L    # 21.7
        0x403ce66666666666L    # 28.9
        0x4045a66666666666L    # 43.3
        0x404ce66666666666L    # 57.8
        0x4050400000000000L    # 65.0
        0x40520ccccccccccdL    # 72.2
    .end array-data

    :array_160
    .array-data 8
        0x402e000000000000L    # 15.0
        0x403e000000000000L    # 30.0
        0x4046800000000000L    # 45.0
        0x404e000000000000L    # 60.0
        0x4056800000000000L    # 90.0
        0x405e000000000000L    # 120.0
        0x4060e00000000000L    # 135.0
        0x4062c00000000000L    # 150.0
    .end array-data

    :array_184
    .array-data 8
        0x401ccccccccccccdL    # 7.2
        0x402ccccccccccccdL    # 14.4
        0x4035b33333333333L    # 21.7
        0x403ce66666666666L    # 28.9
        0x4045a66666666666L    # 43.3
        0x404ce66666666666L    # 57.8
        0x4050400000000000L    # 65.0
        0x40520ccccccccccdL    # 72.2
        0x4055accccccccccdL    # 86.7
        0x4058133333333333L    # 96.3
    .end array-data

    :array_1b0
    .array-data 8
        0x402e000000000000L    # 15.0
        0x403e000000000000L    # 30.0
        0x4046800000000000L    # 45.0
        0x404e000000000000L    # 60.0
        0x4056800000000000L    # 90.0
        0x405e000000000000L    # 120.0
        0x4060e00000000000L    # 135.0
        0x4062c00000000000L    # 150.0
        0x4066800000000000L    # 180.0
        0x4069000000000000L    # 200.0
    .end array-data

    :array_1dc
    .array-data 8
        0x4040400000000000L    # 32.5
        0x4050400000000000L    # 65.0
        0x4058600000000000L    # 97.5
        0x4060400000000000L    # 130.0
        0x4068600000000000L    # 195.0
        0x4070400000000000L    # 260.0
        0x4072480000000000L    # 292.5
        0x4074500000000000L    # 325.0
        0x4078600000000000L    # 390.0
        0x407b14cccccccccdL    # 433.3
    .end array-data

    :array_208
    .array-data 8
        0x4050400000000000L    # 65.0
        0x4060400000000000L    # 130.0
        0x4068600000000000L    # 195.0
        0x4070400000000000L    # 260.0
        0x4078600000000000L    # 390.0
        0x4080400000000000L    # 520.0
        0x4082480000000000L    # 585.0
        0x4084500000000000L    # 650.0
        0x4088600000000000L    # 780.0
        0x408b15999999999aL    # 866.7
    .end array-data

    :array_234
    .array-data 8
        0x4021333333333333L    # 8.6
        0x4031333333333333L    # 17.2
        0x4039cccccccccccdL    # 25.8
        0x4041333333333333L    # 34.4
        0x4049cccccccccccdL    # 51.6
        0x4051333333333333L    # 68.8
        0x405359999999999aL    # 77.4
        0x4055800000000000L    # 86.0
        0x4059cccccccccccdL    # 103.2
        0x405caccccccccccdL    # 114.7
        0x4060200000000000L    # 129.0
        0x4061eccccccccccdL    # 143.4
    .end array-data

    :array_268
    .array-data 8
        0x4031333333333333L    # 17.2
        0x4041333333333333L    # 34.4
        0x4049cccccccccccdL    # 51.6
        0x4051333333333333L    # 68.8
        0x4059cccccccccccdL    # 103.2
        0x4061333333333333L    # 137.6
        0x40635ccccccccccdL    # 154.9
        0x4065833333333333L    # 172.1
        0x4069d00000000000L    # 206.5
        0x406caccccccccccdL    # 229.4
        0x407021999999999aL    # 258.1
        0x4071eccccccccccdL    # 286.8
    .end array-data

    :array_29c
    .array-data 8
        0x4042000000000000L    # 36.0
        0x4052066666666666L    # 72.1
        0x405b066666666666L    # 108.1
        0x4062033333333333L    # 144.1
        0x406b066666666666L    # 216.2
        0x4072033333333333L    # 288.2
        0x4074466666666666L    # 324.4
        0x407684cccccccccdL    # 360.3
        0x407b066666666666L    # 432.4
        0x407e066666666666L    # 480.4
        0x4080e33333333333L    # 540.4
        0x4082c40000000000L    # 600.5
    .end array-data

    :array_2d0
    .array-data 8
        0x4052000000000000L    # 72.0
        0x4062000000000000L    # 144.0
        0x406b000000000000L    # 216.0
        0x4071a00000000000L    # 282.0
        0x407b000000000000L    # 432.0
        0x4082000000000000L    # 576.0
        0x4084480000000000L    # 649.0
        0x4086880000000000L    # 721.0
        0x408b080000000000L    # 865.0
        0x408e080000000000L    # 961.0
        0x4090e40000000000L    # 1081.0
        0x4092c40000000000L    # 1201.0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Landroid/net/wifi/WifiManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;)V
    .registers 12

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mVerboseLoggingEnabled:Z

    const-string v1, "1.0"

    .line 91
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->latestSCPMVersion:Ljava/lang/String;

    const-string v1, "9999"

    .line 93
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmElnaControlVersion:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmDriverVersion:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmFirmwareVersion:Ljava/lang/String;

    const/4 v1, 0x4

    .line 96
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->wifiStandardBound:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 98
    fill-array-data v2, :array_b8

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaCurrent:[I

    new-array v2, v1, [I

    .line 99
    fill-array-data v2, :array_c0

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxCurrent:[I

    const/16 v2, 0xe

    .line 100
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaGain:I

    const/16 v2, -0x23

    .line 101
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlHighThresholdDbm:I

    const/16 v2, -0x4b

    .line 102
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlLowThresholdDbm:I

    const-wide v2, 0x3fe3333333333333L    # 0.6

    .line 103
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaEnableSensitivityRatio:D

    const-wide/16 v2, 0x0

    .line 105
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCheckTimeS:J

    .line 106
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->cummulativeOffTimeS:J

    .line 142
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatus:I

    .line 145
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatusChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRxTimeMs:J

    .line 157
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTxTimeMs:J

    .line 158
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCcaBusyTimeMs:J

    .line 159
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTimeMs:J

    .line 160
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxTimeRatioPercent:J

    .line 161
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMCSIdx:I

    .line 162
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastNSS:I

    .line 163
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMode:I

    .line 164
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastBW:I

    .line 166
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 178
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRateStatList:Ljava/util/List;

    .line 225
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 183
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    invoke-virtual {p5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {v1, p0, p5}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaControlHandler:Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    .line 184
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 185
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mContext:Landroid/content/Context;

    const-string p2, "wifinl80211"

    .line 186
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 187
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 188
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 189
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 190
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/SemClientModeManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 192
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiLnaControl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    return-void

    :array_b8
    .array-data 4
        0xe
        0x1c
    .end array-data

    :array_c0
    .array-data 4
        0x3c
        0x78
    .end array-data
.end method

.method private static baseLog(DD)D
    .registers 4

    .line 394
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    div-double/2addr p0, p2

    return-wide p0
.end method

.method private checkScpmPolicy()V
    .registers 14

    const-string v0, ","

    const-string v1, "9999"

    const-string v2, "SCPM: descriptor & stream close failure"

    .line 553
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    const/4 v4, 0x1

    if-nez v3, :cond_11

    const-string v0, "SCPM: null data provider"

    .line 554
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    return-void

    :cond_11
    const/4 v5, 0x0

    :try_start_12
    const-string v6, "ELNA_CONTROL"

    .line 562
    invoke-interface {v3, v6}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c4

    if-nez v3, :cond_4c

    .line 564
    :try_start_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    move-result-object v0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCPM: null file descriptor "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V
    :try_end_42
    .catchall {:try_start_1a .. :try_end_42} :catchall_1be

    if-eqz v3, :cond_4b

    .line 636
    :try_start_44
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4b

    .line 638
    :catchall_48
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    :cond_4b
    :goto_4b
    return-void

    .line 569
    :cond_4c
    :try_start_4c
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_1be

    .line 570
    :try_start_55
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_1bb

    .line 571
    :try_start_5a
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_1b8

    .line 576
    :try_start_64
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_80

    const-string v0, "SCPM: empty data"

    .line 578
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_1b6

    .line 633
    :try_start_6f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 634
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 635
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 636
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7b
    .catchall {:try_start_6f .. :try_end_7b} :catchall_7c

    goto :goto_7f

    .line 638
    :catchall_7c
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    :goto_7f
    return-void

    .line 583
    :cond_80
    :try_start_80
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 584
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_1b6

    const-string v9, ""

    const/4 v10, 0x2

    if-eqz v5, :cond_97

    .line 585
    :try_start_8d
    array-length v11, v5

    if-ne v11, v10, :cond_97

    .line 586
    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_98

    :cond_97
    move-object v5, v9

    .line 588
    :goto_98
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b4

    const-string v0, "SCPM: wrong policy version"

    .line 589
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V
    :try_end_a3
    .catchall {:try_start_8d .. :try_end_a3} :catchall_1b6

    .line 633
    :try_start_a3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 634
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 635
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 636
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_b0

    goto :goto_b3

    .line 638
    :catchall_b0
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    :goto_b3
    return-void

    .line 591
    :cond_b4
    :try_start_b4
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->latestSCPMVersion:Ljava/lang/String;

    if-eqz v9, :cond_d4

    .line 592
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d4

    const-string v0, "SCPM: existing policy"

    .line 593
    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V
    :try_end_c3
    .catchall {:try_start_b4 .. :try_end_c3} :catchall_1b6

    .line 633
    :try_start_c3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 634
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 635
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 636
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_cf
    .catchall {:try_start_c3 .. :try_end_cf} :catchall_d0

    goto :goto_d3

    .line 638
    :catchall_d0
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    :goto_d3
    return-void

    .line 596
    :cond_d4
    :try_start_d4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SCPM: new policy "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 597
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->latestSCPMVersion:Ljava/lang/String;

    .line 598
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmElnaControlVersion:Ljava/lang/String;

    .line 599
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmDriverVersion:Ljava/lang/String;

    .line 600
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmFirmwareVersion:Ljava/lang/String;

    .line 603
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getProductModelName()Ljava/lang/String;

    move-result-object v1

    .line 605
    :cond_f4
    :goto_f4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a9

    .line 606
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 607
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f4

    .line 609
    array-length v9, v5

    const/4 v11, 0x3

    if-ge v9, v11, :cond_109

    goto :goto_f4

    .line 613
    :cond_109
    aget-object v9, v5, v4

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f4

    .line 614
    array-length v9, v5

    const/4 v12, 0x5

    if-lt v9, v12, :cond_f4

    .line 615
    aget-object v9, v5, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmDriverVersion:Ljava/lang/String;

    .line 616
    aget-object v9, v5, v11

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmFirmwareVersion:Ljava/lang/String;

    const/4 v9, 0x4

    .line 617
    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmElnaControlVersion:Ljava/lang/String;

    .line 618
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaCurrent:[I

    aget-object v11, v5, v12

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    aput v11, v9, v12

    .line 619
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaCurrent:[I

    const/4 v11, 0x6

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v9, v4

    .line 620
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxCurrent:[I

    const/4 v11, 0x7

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v9, v12

    .line 621
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxCurrent:[I

    const/16 v11, 0x8

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v9, v4

    const/16 v9, 0x9

    .line 622
    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaGain:I

    const/16 v9, 0xa

    .line 623
    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlHighThresholdDbm:I

    const/16 v9, 0xb

    .line 624
    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlLowThresholdDbm:I

    const/16 v9, 0xc

    .line 625
    aget-object v5, v5, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    iput-wide v11, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaEnableSensitivityRatio:D
    :try_end_1a7
    .catchall {:try_start_d4 .. :try_end_1a7} :catchall_1b6

    goto/16 :goto_f4

    .line 633
    :cond_1a9
    :try_start_1a9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 634
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 635
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 636
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b5
    .catchall {:try_start_1a9 .. :try_end_1b5} :catchall_1f5

    goto :goto_1f8

    :catchall_1b6
    move-exception v0

    goto :goto_1c2

    :catchall_1b8
    move-exception v0

    move-object v8, v5

    goto :goto_1c2

    :catchall_1bb
    move-exception v0

    move-object v7, v5

    goto :goto_1c1

    :catchall_1be
    move-exception v0

    move-object v6, v5

    move-object v7, v6

    :goto_1c1
    move-object v8, v7

    :goto_1c2
    move-object v5, v3

    goto :goto_1c8

    :catchall_1c4
    move-exception v0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 630
    :goto_1c8
    :try_start_1c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCPM: policy query failure "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V
    :try_end_1e0
    .catchall {:try_start_1c8 .. :try_end_1e0} :catchall_1f9

    if-eqz v8, :cond_1e5

    .line 633
    :try_start_1e2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_1e5
    if-eqz v7, :cond_1ea

    .line 634
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    :cond_1ea
    if-eqz v6, :cond_1ef

    .line 635
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_1ef
    if-eqz v5, :cond_1f8

    .line 636
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f4
    .catchall {:try_start_1e2 .. :try_end_1f4} :catchall_1f5

    goto :goto_1f8

    .line 638
    :catchall_1f5
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    :cond_1f8
    :goto_1f8
    return-void

    :catchall_1f9
    move-exception v0

    if-eqz v8, :cond_1ff

    .line 633
    :try_start_1fc
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_1ff
    if-eqz v7, :cond_204

    .line 634
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    :cond_204
    if-eqz v6, :cond_209

    .line 635
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_209
    if-eqz v5, :cond_212

    .line 636
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20e
    .catchall {:try_start_1fc .. :try_end_20e} :catchall_20f

    goto :goto_212

    .line 638
    :catchall_20f
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 640
    :cond_212
    :goto_212
    throw v0
.end method

.method private eLnaControl(I)V
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->eLnaControl(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    const/4 v0, 0x2

    if-eq p1, v0, :cond_13

    .line 415
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatusChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 417
    :cond_13
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatus:I

    goto :goto_1b

    :cond_16
    const-string p1, "Cmd not working"

    .line 419
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    :goto_1b
    return-void
.end method

.method private eLnaStatus()I
    .registers 3

    .line 424
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->eLnaStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_d

    :catch_b
    move p0, v0

    goto :goto_11

    .line 430
    :cond_d
    :try_start_d
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_b

    :goto_11
    if-ltz p0, :cond_17

    const/4 v1, 0x2

    if-gt p0, v1, :cond_17

    move v0, p0

    :cond_17
    return v0
.end method

.method private findExpectedMCS(IIII)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 378
    :goto_2
    sget-object v2, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->MIN_SENSITIVITY_TABLE:[[I

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    array-length v3, v2

    if-ge v0, v3, :cond_20

    .line 379
    aget v3, v2, v0

    mul-int/lit8 v4, p2, 0x3

    add-int/2addr v3, v4

    if-lt p3, v3, :cond_20

    .line 380
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->wifiStandardBound:I

    if-ne p1, v1, :cond_1c

    .line 381
    array-length v1, v2

    add-int/lit8 v2, p4, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    goto :goto_1d

    :cond_1c
    move v1, v0

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    return v1
.end method

.method private getExpectedRate(IIII)D
    .registers 7

    .line 400
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->RATE_TABLE:[[[D

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    array-length v1, v0

    if-lt p2, v1, :cond_c

    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    .line 402
    :cond_c
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->wifiStandardBound:I

    if-ne p1, p0, :cond_15

    const/4 p0, 0x0

    .line 403
    aget-object p0, v0, p0

    array-length p0, p0

    rem-int/2addr p4, p0

    .line 407
    :cond_15
    aget-object p0, v0, p2

    aget-wide p0, p0, p4

    int-to-double p2, p3

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private getExpectedRssi(IIII)I
    .registers 6

    .line 365
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->wifiStandardBound:I

    if-ne p1, p0, :cond_c

    .line 366
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->MIN_SENSITIVITY_TABLE:[[I

    add-int/lit8 v0, p1, -0x1

    aget-object p0, p0, v0

    array-length p0, p0

    rem-int/2addr p3, p0

    .line 370
    :cond_c
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->MIN_SENSITIVITY_TABLE:[[I

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    if-ge p3, p1, :cond_18

    add-int/2addr p3, p4

    .line 371
    :cond_18
    aget p0, p0, p3

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p0, p2

    return p0
.end method

.method private getProductModelName()Ljava/lang/String;
    .registers 3

    const-string p0, "ro.product.model"

    .line 544
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 545
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_11

    goto :goto_18

    :cond_11
    const/4 v0, 0x3

    const/4 v1, 0x7

    .line 548
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    :goto_18
    const-string p0, ""

    return-object p0
.end method

.method private getRateStatIdx(Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
            ">;)I"
        }
    .end annotation

    .line 475
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 478
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 479
    check-cast v4, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 480
    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getRxMpdu()I

    move-result v5

    aput v5, v1, v3

    .line 481
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRateStatList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 482
    check-cast v6, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 483
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getBandwidthInMhz()I

    move-result v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getBandwidthInMhz()I

    move-result v8

    if-ne v7, v8, :cond_24

    .line 484
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getNumberOfSpatialStreams()I

    move-result v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getNumberOfSpatialStreams()I

    move-result v8

    if-ne v7, v8, :cond_24

    .line 485
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getPreamble()I

    move-result v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getPreamble()I

    move-result v8

    if-ne v7, v8, :cond_24

    .line 486
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getRateMcsIdx()I

    move-result v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getRateMcsIdx()I

    move-result v8

    if-ne v7, v8, :cond_24

    .line 487
    aget v7, v1, v3

    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getRxMpdu()I

    move-result v6

    sub-int/2addr v7, v6

    aput v7, v1, v3

    goto :goto_24

    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_65
    move p0, v2

    :goto_66
    if-ge v2, v0, :cond_72

    .line 493
    aget p1, v1, v2

    aget v3, v1, p0

    if-lt p1, v3, :cond_6f

    move p0, v2

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    :cond_72
    return p0
.end method

.method private getWifiDriverVersion()Ljava/lang/String;
    .registers 2

    .line 530
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    .line 531
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    move-result v0

    if-nez v0, :cond_f

    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 535
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getDriverVersion()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    const-string v0, ""

    .line 536
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    return-object p0

    :cond_1f
    :goto_1f
    const-string p0, "0000"

    return-object p0
.end method

.method private getWifiFirmwareVersion()Ljava/lang/String;
    .registers 2

    .line 516
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    move-result v0

    if-nez v0, :cond_f

    .line 518
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    :cond_f
    const/4 v0, 0x0

    .line 521
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    const-string v0, ""

    .line 522
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    return-object p0

    :cond_20
    :goto_20
    const-string p0, "0000"

    return-object p0
.end method

.method private getWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .line 501
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 502
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 505
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2f

    if-eqz v0, :cond_2f

    .line 507
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 509
    iget p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    :cond_2f
    return-object v0
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    if-eqz p1, :cond_1d

    .line 194
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 196
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaControlHandler:Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 197
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaControlHandler:Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_23

    .line 200
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_23
    :goto_23
    return-void
.end method

.method private policyComplianceCheck()Z
    .registers 6

    .line 644
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getWifiDriverVersion()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getWifiFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 646
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmDriverVersion:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "1.0"

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmFirmwareVersion:Ljava/lang/String;

    .line 647
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmElnaControlVersion:Ljava/lang/String;

    .line 648
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x1

    return p0

    .line 649
    :cond_25
    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compliance violation: ver. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmDriverVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmElnaControlVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method private updateWifiUsabilityStatsEntry(Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 20

    move-object/from16 v0, p0

    .line 440
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalCcaBusyFreqTimeMillis()J

    move-result-wide v1

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalRadioRxTimeMillis()J

    move-result-wide v3

    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalRadioTxTimeMillis()J

    move-result-wide v5

    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRateStats()Ljava/util/List;

    move-result-object v7

    .line 444
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    if-eqz v7, :cond_6a

    .line 450
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6a

    .line 451
    invoke-direct {v0, v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getRateStatIdx(Ljava/util/List;)I

    move-result v10

    .line 453
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-virtual {v11}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getPreamble()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMode:I

    .line 454
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-virtual {v11}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getBandwidthInMhz()I

    move-result v11

    iput v11, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastBW:I

    const/16 v12, 0x14

    if-lt v11, v12, :cond_4e

    .line 455
    div-int/lit8 v11, v11, 0x14

    int-to-double v11, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->baseLog(DD)D

    move-result-wide v11

    double-to-int v11, v11

    :cond_4e
    iput v11, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastBW:I

    .line 456
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-virtual {v11}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getRateMcsIdx()I

    move-result v11

    iput v11, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMCSIdx:I

    .line 457
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-virtual {v10}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getNumberOfSpatialStreams()I

    move-result v10

    iput v10, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastNSS:I

    .line 458
    iput-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRateStatList:Ljava/util/List;

    .line 461
    :cond_6a
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRxTimeMs:J

    sub-long v10, v3, v10

    .line 462
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTxTimeMs:J

    sub-long v12, v5, v12

    .line 463
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTimeMs:J

    sub-long v14, v8, v14

    move-wide/from16 v16, v12

    .line 464
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCcaBusyTimeMs:J

    sub-long v12, v1, v12

    .line 466
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRxTimeMs:J

    .line 467
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTxTimeMs:J

    .line 468
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTimeMs:J

    .line 469
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCcaBusyTimeMs:J

    const-wide/16 v1, 0x64

    mul-long/2addr v10, v1

    sub-long/2addr v14, v12

    sub-long v14, v14, v16

    .line 471
    div-long/2addr v10, v14

    iput-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxTimeRatioPercent:J

    return-void
.end method

.method private versionViolation(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    if-eqz p1, :cond_65

    if-nez p2, :cond_6

    goto :goto_65

    :cond_6
    const-string v1, "\\."

    .line 661
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 662
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    .line 663
    :goto_12
    array-length v3, p2

    if-ge v2, v3, :cond_64

    .line 664
    array-length v3, p1

    if-ne v2, v3, :cond_19

    return v0

    .line 667
    :cond_19
    aget-object v3, p1, v2

    const-string v4, "[^0-9]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 668
    aget-object v6, p2, v2

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 672
    :try_start_29
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_31

    move v3, v1

    goto :goto_35

    :cond_31
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 673
    :goto_35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3d

    move v4, v1

    goto :goto_41

    :cond_3d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_4a

    :goto_41
    if-le v4, v3, :cond_44

    return v0

    :cond_44
    if-ge v4, v3, :cond_47

    return v1

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :catchall_4a
    move-exception p1

    .line 675
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ver. violation check failure: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    return v0

    :cond_64
    return v1

    :cond_65
    :goto_65
    return v0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;I)V
    .registers 6

    if-nez p2, :cond_c

    .line 693
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_b

    const-string p0, "SemWifiLnaControl"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :cond_c
    const/4 p0, 0x2

    if-ne p2, p0, :cond_15

    const-string p2, "SemWifiLnaControl"

    .line 696
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_15
    const-string p2, "SemWifiLnaControl"

    .line 698
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_1a
    :try_start_1a
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "%s %s"

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p0, v1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    .line 704
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3c} :catch_59

    .line 710
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    monitor-enter p1

    .line 711
    :try_start_3f
    sget-object p2, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 712
    :goto_44
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/16 p2, 0x7d0

    if-le p0, p2, :cond_54

    .line 713
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_44

    .line 715
    :cond_54
    monitor-exit p1

    return-void

    :catchall_56
    move-exception p0

    monitor-exit p1
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_56

    throw p0

    :catch_59
    move-exception p0

    const-string p1, "SemWifiLnaControl"

    const-string p2, "format problem"

    .line 706
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 720
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    monitor-enter p0

    .line 721
    :try_start_3
    new-instance v0, Ljava/util/LinkedList;

    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 722
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "SemWifiLnaControl history:"

    .line 723
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 725
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 727
    :cond_24
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 728
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p1

    .line 722
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 688
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getScpmExecutor()Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    return-object p0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 3

    return-void
.end method
