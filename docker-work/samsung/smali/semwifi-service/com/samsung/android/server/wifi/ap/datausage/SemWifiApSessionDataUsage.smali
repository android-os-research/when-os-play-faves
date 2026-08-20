.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;
.super Ljava/lang/Object;
.source "SemWifiApSessionDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;
    }
.end annotation


# static fields
.field private static final DAILY_MHS_DATA_LIMIT:Ljava/lang/String; = "daily_mhs_data_limit"

.field private static DATA_FETCH_EBPF_MESSAGE_TIMEOUT_TAG:Ljava/lang/String; = "SemWifiApSessionDataUsage datausage fetch Timeout"

.field private static final DATA_USAGE_EBPF_MID_POLLING_RATE:I = 0x3e8

.field private static final DATA_USAGE_EBPF_NORMAL_POLLING_RATE:I = 0x1388

.field private static final DATA_USAGE_SAVE_IN_DB_RATE:I = 0x7530

.field private static final DATA_USAGE_SHARED_PREFERENCE:Ljava/lang/String; = "mhs_data_usage_shared_perference"

.field private static final HANDLER_MESSAGE_DATE_CHANGE_EVENT:I = 0x66

.field private static final HANDLER_MESSAGE_GET_DATA_USAGE:I = 0x64

.field private static final HANDLER_MESSAGE_SAVE_TODAY_DETAILS_IN_DB:I = 0x65

.field private static final HANDLER_MESSAGE_SEND_WIDGET:I = 0x67

.field private static MHSDBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SemWifiApSessionDataUsage"

.field private static dateChangeIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private activeSessionCellularCurrentDayDataUsage:J

.field private activeSessionCellularDataUsage:J

.field private activeSessionCellularDisconnectedDevicesDataUsage:J

.field private activeSessionTotalDataUsageOfConnectedClient:J

.field private activeSessionTotalDataUsageOfDisconnectedClient:J

.field private currentDate:Ljava/util/Calendar;

.field private dailyDataLimit:J

.field private isCellularUpstream:Z

.field private isEbpfMhsOnApiCalled:Z

.field private isFirstTimebackhualCheckDone:Z

.field private isMhsActive:Z

.field private mActiveSessionClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

.field private mDisconnectedClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mEventLock:Ljava/lang/Object;

.field mExtraConnListCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation
.end field

.field mExtraDisConnListCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMobileDataEnable:Z

.field private mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

.field private mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

.field private mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSortedListOfConnClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedListOfDisconnectedClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mSumOfDataUsageOfConnectedList:J

.field private mSumOfDataUsageOfDisConnectedList:J

.field private mWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

.field private totalTodayCellularDataUsageNotIncludedActive:J


# direct methods
.method static bridge synthetic -$$Nest$fgetisCellularUpstream(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisMhsActive(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventLock(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mEventLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiApEbf(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApDataUsageHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdateChanged(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dateChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveTodayDetailsInDB(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->saveTodayDetailsInDB()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNextEbpfPollingTimer(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->setNextEbpfPollingTimer(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartDbSaveOperation(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->startDbSaveOperation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDataUsageOfAllClients(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->updateDataUsageOfAllClients()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwifiApClientConnected(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->wifiApClientConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwifiApClientDisconnected(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->wifiApClientDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMHSDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->MHSDBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->MHSDBG:Z

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dateChangeIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dateChangeIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    .line 52
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    .line 53
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mDisconnectedClientMap:Ljava/util/HashMap;

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mExtraConnListCopy:Ljava/util/List;

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mExtraDisConnListCopy:Ljava/util/List;

    .line 78
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->totalTodayCellularDataUsageNotIncludedActive:J

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->currentDate:Ljava/util/Calendar;

    const/4 v2, 0x0

    .line 82
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    .line 83
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDataUsage:J

    .line 84
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDisconnectedDevicesDataUsage:J

    .line 85
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularCurrentDayDataUsage:J

    const/4 v3, 0x1

    .line 86
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    .line 87
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mIsMobileDataEnable:Z

    .line 88
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isEbpfMhsOnApiCalled:Z

    .line 89
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isFirstTimebackhualCheckDone:Z

    const-wide/16 v2, -0x1

    .line 90
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    .line 91
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfConnectedClient:J

    .line 92
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfDisconnectedClient:J

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mEventLock:Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    .line 106
    new-instance p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

    return-void
.end method

.method private ConvertBytesToMB_RoundOff(J)J
    .registers 5

    long-to-double p0, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    .line 461
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private addClientDetailsInBuffer(Ljava/lang/StringBuffer;Lcom/samsung/android/wifi/SemWifiApClientDetails;Ljava/util/ListIterator;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            "Ljava/util/ListIterator<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;",
            ">;)J"
        }
    .end annotation

    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide p0

    return-wide p0
.end method

.method private addClientJSONInCurrentDayJSONObject(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;)V
    .registers 6

    if-eqz p1, :cond_31

    .line 414
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v1, "name"

    .line 416
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data_usage"

    .line 417
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "time"

    .line 418
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 419
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_2b} :catch_2c

    goto :goto_38

    :catch_2c
    move-exception p0

    .line 421
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_38

    :cond_31
    const-string p0, "SemWifiApSessionDataUsage"

    const-string p1, "EXCEPTION : can\'t save in JSON because client object is null"

    .line 424
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method private declared-synchronized addClientLowLevelObjectInDisconnectedList(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;)V
    .registers 9

    monitor-enter p0

    .line 217
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 219
    :goto_8
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 220
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    .line 221
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-ltz v2, :cond_27

    .line 222
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_31

    .line 223
    monitor-exit p0

    return-void

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 228
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_31

    .line 229
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private applyClientSetting(Lorg/json/JSONObject;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;)V
    .registers 6

    const-string p0, "device_data_limit"

    const-string v0, "device_time_limit"

    const-string v1, "device_is_sharing_pause_by_user"

    .line 147
    :try_start_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 148
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 149
    :goto_15
    invoke-virtual {p2, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->setClientDataPausedByUser(Z)V

    .line 151
    :cond_18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 152
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 153
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->setClientTimeLimit(J)V

    .line 155
    :cond_25
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 156
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 157
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->setClientDataLimit(J)V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception p0

    .line 160
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_37
    :goto_37
    return-void
.end method

.method private cancelEbpfPollingTimer()V
    .registers 2

    .line 398
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->removeMessages(I)V

    return-void
.end method

.method private declared-synchronized checkForDailyDataLimitReached()V
    .registers 6

    monitor-enter p0

    .line 477
    :try_start_1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    if-eqz v0, :cond_13

    .line 478
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getOverAllMhsDataLimitFromPreference()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    .line 481
    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_72

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    if-eqz v0, :cond_72

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mIsMobileDataEnable:Z

    if-eqz v0, :cond_72

    .line 482
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_65

    .line 483
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->ignoreLast4Digit_roundOff(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->ignoreLast4Digit_roundOff(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3d

    .line 484
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->switchOffMhsDueToDataLimitReached()V

    goto :goto_a9

    .line 486
    :cond_3d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getActiveSessionTotalDataUsageInBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 487
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseOverAllMhs(J)V

    const-string v2, "SemWifiApSessionDataUsage"

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called MHS pause mhs at  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 491
    :cond_65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->resumeOverAllMhs()V

    const-string v0, "SemWifiApSessionDataUsage"

    const-string v1, "removed mhs data limit call due to no data limit"

    .line 492
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 495
    :cond_72
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_a9

    .line 496
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->resumeOverAllMhs()V

    const-string v0, "SemWifiApSessionDataUsage"

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removed mhs data limit call due to: isCellularUpstream : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMobileDataEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mIsMobileDataEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isMhsActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_1 .. :try_end_a9} :catchall_ab

    .line 500
    :cond_a9
    :goto_a9
    monitor-exit p0

    return-void

    :catchall_ab
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearDisConnectedListAndAddFromJsonIfNotConnected()V
    .registers 18

    move-object/from16 v10, p0

    const-string v11, "time"

    const-string v12, "data_usage"

    const-string v13, "name"

    .line 856
    iget-object v0, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mDisconnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 857
    iget-object v0, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v14, 0x0

    .line 858
    iput-wide v14, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    .line 861
    iget-object v0, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 862
    :cond_1c
    :goto_1c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 863
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 864
    iget-object v1, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 867
    :try_start_30
    iget-object v1, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Connected Device"

    .line 872
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 873
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_42
    move-object v4, v2

    .line 876
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 877
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v6, v2

    goto :goto_50

    :cond_4f
    move-wide v6, v14

    .line 880
    :goto_50
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 881
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_5d

    :cond_5c
    move-wide v8, v14

    :goto_5d
    const-string v3, ""

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    .line 884
    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->createNewClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    move-result-object v1

    .line 885
    iget-object v2, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mDisconnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v0, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    iget-wide v2, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v0

    add-long/2addr v2, v0

    iput-wide v2, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_7a} :catch_7b

    goto :goto_1c

    :catch_7b
    move-exception v0

    .line 889
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1c

    .line 894
    :cond_80
    iget-object v0, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_91

    .line 895
    iget-object v0, v10, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_91
    return-void
.end method

.method private copyTheList(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;",
            ">;)V"
        }
    .end annotation

    .line 240
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 241
    :goto_4
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 242
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 243
    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-direct {v0, p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_19
    return-void
.end method

.method private createNewClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;
    .registers 29

    move-object/from16 v0, p0

    .line 115
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    move-object/from16 v6, p1

    invoke-virtual {v1, v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getClientDetails(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "device_name"

    .line 116
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_data_limit"

    .line 117
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "device_time_limit"

    .line 118
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "device_is_sharing_pause_by_user"

    .line 119
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v2, :cond_26

    move-object v5, v2

    goto :goto_28

    :cond_26
    move-object/from16 v5, p3

    :goto_28
    const-wide/16 v7, 0x0

    if-eqz v3, :cond_32

    .line 131
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v13, v2

    goto :goto_33

    :cond_32
    move-wide v13, v7

    :goto_33
    if-eqz v4, :cond_3b

    .line 135
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v15, v2

    goto :goto_3c

    :cond_3b
    move-wide v15, v7

    :goto_3c
    const/4 v2, 0x0

    if-eqz v1, :cond_47

    .line 139
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_47

    move v2, v3

    :cond_47
    move v12, v2

    .line 142
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    move-object v2, v1

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    move/from16 v18, v0

    sget-boolean v19, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->MHSDBG:Z

    move-object v4, v5

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v17, p4

    invoke-direct/range {v2 .. v19}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;JJZJJZZZ)V

    return-object v1
.end method

.method private declared-synchronized dateChanged()V
    .registers 6

    monitor-enter p0

    .line 900
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 901
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->currentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isDateEqual(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v0, "SemWifiApSessionDataUsage"

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date are same not need to proceed further current Date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_19b

    .line 903
    monitor-exit p0

    return-void

    .line 905
    :cond_2b
    :try_start_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date changed: current date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n new date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApSessionDataUsage"

    .line 906
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    if-eqz v0, :cond_5e

    .line 911
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->saveTodayDetailsInDB()V

    const-wide/16 v0, 0x0

    .line 912
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularCurrentDayDataUsage:J

    .line 915
    :cond_5e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->currentDate:Ljava/util/Calendar;

    .line 917
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->deleteDataBeforeNMonths(I)V

    .line 918
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->deleteClientSettingIfLastUpdateIsBeforeNMonth(I)V

    const-string v0, "SemWifiApSessionDataUsage"

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dateChanged() before : mSortedListOfDisconnectedClients = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmSortedListOfConnClients  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    .line 921
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmActiveSessionClientList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    .line 922
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 920
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 924
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mEventLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b0
    .catchall {:try_start_2b .. :try_end_b0} :catchall_19b

    .line 925
    :try_start_b0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->updateTodaysVariables()V

    .line 926
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->processDateChangeForActiveSessionClient()V

    .line 927
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->clearDisConnectedListAndAddFromJsonIfNotConnected()V

    .line 928
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_198

    .line 930
    :try_start_ba
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->checkForDailyDataLimitReached()V

    const-string v0, "SemWifiApSessionDataUsage"

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSortedListOfDisconnectedClients = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemWifiApSessionDataUsage"

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSortedListOfConnClients = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemWifiApSessionDataUsage"

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActiveSessionClientList = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemWifiApSessionDataUsage"

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON OBJECT Size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemWifiApSessionDataUsage"

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connects sum = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", disconnected sum = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemWifiApSessionDataUsage"

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dateChanged() After : isMHSActive = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mSortedListOfDisconnectedClients = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nmSortedListOfConnClients  = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    .line 938
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nmActiveSessionClientList = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    .line 939
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_196
    .catchall {:try_start_ba .. :try_end_196} :catchall_19b

    .line 940
    monitor-exit p0

    return-void

    :catchall_198
    move-exception v1

    .line 928
    :try_start_199
    monitor-exit v0
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_198

    :try_start_19a
    throw v1
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_19b

    :catchall_19b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getActiveSessionTotalDataUsageInBytes()J
    .registers 5

    .line 433
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfConnectedClient:J

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfDisconnectedClient:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getMonthlyListNotIncludingTodayDataUsage()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x5

    .line 254
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 255
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 256
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, -0x1

    .line 257
    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 258
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getMonthlyData(JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getOverAllMhsDataLimitFromPreference()J
    .registers 7

    monitor-enter p0

    .line 438
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "daily_mhs_data_limit"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_4e

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    .line 440
    monitor-exit p0

    return-wide v0

    :cond_15
    :try_start_15
    const-string v2, "SemWifiApSessionDataUsage"

    const-string v3, "Migration of Data limit From sharedPreferences to Settings DB is not taken place therefore doing it"

    .line 442
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_4e

    .line 444
    :try_start_1c
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    const-string v3, "mhs_data_usage_shared_perference"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "daily_mhs_data_limit"

    const-wide/16 v4, 0x0

    .line 445
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 446
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "daily_mhs_data_limit"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v2, "SemWifiApSessionDataUsage"

    const-string v3, "Migration of Data limit From sharedPreferences to Settings DB is Completed"

    .line 447
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SemWifiApSessionDataUsage"

    const-string v3, "Migration of Data limit From sharedPreferences to Settings DB is Completed"

    const/4 v4, 0x1

    .line 448
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_47
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_47} :catch_48
    .catchall {:try_start_1c .. :try_end_47} :catchall_4e

    goto :goto_4c

    :catch_48
    move-exception v2

    .line 450
    :try_start_49
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4e

    .line 452
    :goto_4c
    monitor-exit p0

    return-wide v0

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_10

    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 213
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method private handleClientStreamChangedEvent(Z)V
    .registers 4

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1029
    :goto_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1030
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->streamChanged(Z)V

    goto :goto_6

    .line 1033
    :cond_16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 1034
    :goto_1c
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1035
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->streamChanged(Z)V

    goto :goto_1c

    :cond_2c
    return-void
.end method

.method private ignoreLast4Digit_roundOff(J)J
    .registers 5

    long-to-double p0, p1

    const-wide v0, 0x40c3880000000000L    # 10000.0

    div-double/2addr p0, v0

    .line 456
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private isDateEqual(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 5

    const/4 p0, 0x1

    .line 232
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_23

    const/4 v0, 0x2

    .line 233
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_23

    const/4 v0, 0x5

    .line 234
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-eq p1, p2, :cond_22

    goto :goto_23

    :cond_22
    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0
.end method

.method private isMobileDataEnable()Z
    .registers 2

    .line 1022
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1023
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    return p0
.end method

.method private processDateChangeForActiveSessionClient()V
    .registers 12

    const-string v0, "time"

    const-string v1, "data_usage"

    const-wide/16 v2, 0x0

    .line 815
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    .line 817
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 818
    :cond_e
    :goto_e
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 819
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    const/4 v6, 0x0

    .line 822
    :try_start_1b
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_31

    .line 823
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    :cond_31
    if-eqz v6, :cond_4f

    .line 829
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 830
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_3f

    :cond_3e
    move-wide v7, v2

    .line 833
    :goto_3f
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4a

    .line 834
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_4b

    :cond_4a
    move-wide v9, v2

    .line 837
    :goto_4b
    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->dateChangedOccur(JJ)V

    goto :goto_5b

    .line 840
    :cond_4f
    invoke-virtual {v5, v2, v3, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->dateChangedOccur(JJ)V

    .line 841
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 842
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->addClientJSONInCurrentDayJSONObject(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;)V

    .line 846
    :cond_5b
    :goto_5b
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 847
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_6a} :catch_6b

    goto :goto_e

    :catch_6b
    move-exception v5

    .line 850
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e

    :cond_70
    return-void
.end method

.method private processTodayClientListAndUpdateTheSettings(Lorg/json/JSONObject;)V
    .registers 6

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 169
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 170
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    .line 171
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_5f

    if-nez v3, :cond_9

    .line 173
    :try_start_1f
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->applyClientSetting(Lorg/json/JSONObject;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_2a} :catch_2b
    .catchall {:try_start_1f .. :try_end_2a} :catchall_5f

    goto :goto_9

    :catch_2b
    move-exception v2

    .line 175
    :try_start_2c
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    .line 179
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_5f

    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 182
    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 183
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    .line 184
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 186
    :try_start_4d
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->applyClientSetting(Lorg/json/JSONObject;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;)V
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_58} :catch_59

    goto :goto_37

    :catch_59
    move-exception v1

    .line 188
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_37

    :cond_5e
    return-void

    :catchall_5f
    move-exception p0

    .line 179
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method private declared-synchronized registerBR()V
    .registers 5

    monitor-enter p0

    .line 266
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$1;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$2;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V

    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dateChangeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$3;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 317
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetActiveSessionsVariables()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 196
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDataUsage:J

    const/4 v2, 0x0

    .line 197
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    .line 198
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDisconnectedDevicesDataUsage:J

    .line 199
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularCurrentDayDataUsage:J

    .line 200
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfConnectedClient:J

    .line 201
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfDisconnectedClient:J

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    .line 203
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isEbpfMhsOnApiCalled:Z

    .line 205
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isFirstTimebackhualCheckDone:Z

    .line 206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private saveTodayDetailsInDB()V
    .registers 11

    .line 946
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 947
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v6

    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTopHotspotClientsTodayAsString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->insertOrUpdateFullDetailsOnGivenDate(IIIJLorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private setNextEbpfPollingTimer(J)V
    .registers 4

    .line 390
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    if-eqz v0, :cond_c

    .line 391
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_13

    :cond_c
    const-string p0, "SemWifiApSessionDataUsage"

    const-string p1, "can\'t set the timer wifi sharing is ON"

    .line 393
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void
.end method

.method private startDbSaveOperation()V
    .registers 4

    .line 402
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

    const/16 v0, 0x65

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopDbSaveInterval()V
    .registers 2

    .line 406
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->removeMessages(I)V

    return-void
.end method

.method private switchOffMhsDueToDataLimitReached()V
    .registers 4

    .line 466
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 467
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040f44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 470
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->restartAdvBecauseOfDataLimitChanged()V

    const-string p0, "SemWifiApSessionDataUsage"

    const-string v0, "MHS is switch off due to data limit reached"

    .line 472
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 473
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateCellularDataUsageOfConnectedClients(Ljava/util/List;[J)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 510
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    .line 511
    :goto_7
    array-length v7, p2

    if-ge v2, v7, :cond_36

    .line 512
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    if-eqz v7, :cond_33

    .line 514
    aget-wide v8, p2, v2

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->setClientMobileAndTotalDataConsumed(J)V

    .line 515
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientActiveSessionMobileDataConsumed()J

    move-result-wide v8

    add-long/2addr v3, v8

    .line 516
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientActiveSessionTotalDataConsumed()J

    move-result-wide v8

    add-long/2addr v5, v8

    .line 517
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->addClientJSONInCurrentDayJSONObject(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;)V

    .line 518
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 524
    :cond_36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 526
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDisconnectedDevicesDataUsage:J

    add-long/2addr v3, p1

    .line 527
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDataUsage:J

    cmp-long v2, v3, p1

    if-lez v2, :cond_51

    .line 528
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularCurrentDayDataUsage:J

    sub-long p1, v3, p1

    add-long/2addr v7, p1

    iput-wide v7, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularCurrentDayDataUsage:J

    .line 529
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDataUsage:J

    .line 533
    :cond_51
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfConnectedClient:J

    cmp-long p1, v5, p1

    if-lez p1, :cond_59

    .line 534
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfConnectedClient:J

    .line 536
    :cond_59
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_a0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->ignoreLast4Digit_roundOff(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->ignoreLast4Digit_roundOff(J)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_a0

    .line 537
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->switchOffMhsDueToDataLimitReached()V

    .line 538
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Global Data limit is reached, so switching off the MHS + ignoreLast4Digit_roundOff(getTodayTotalDataUsage())="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->ignoreLast4Digit_roundOff(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , ignoreLast4Digit_roundOff(dailyDataLimit) =  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->ignoreLast4Digit_roundOff(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApSessionDataUsage"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    return-void
.end method

.method private declared-synchronized updateDataUsageOfAllClients()V
    .registers 6

    monitor-enter p0

    .line 557
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    if-eqz v0, :cond_56

    .line 558
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getWifiApDataConsumptionByAllConnectedClients()Landroid/util/Pair;

    move-result-object v0

    .line 559
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 560
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    .line 561
    array-length v2, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_31

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_31

    .line 565
    :cond_21
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    if-eqz v2, :cond_2d

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mIsMobileDataEnable:Z

    if-eqz v2, :cond_2d

    .line 566
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->updateCellularDataUsageOfConnectedClients(Ljava/util/List;[J)V

    goto :goto_5d

    .line 568
    :cond_2d
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->updateTotalDataUsageOfConnectedClients(Ljava/util/List;[J)V

    goto :goto_5d

    :cond_31
    :goto_31
    const-string v2, "SemWifiApSessionDataUsage"

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "some or All of the dataConsumed is missing, dataConsumed is not proper: dataConsumed.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", connMacList.size()="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_5f

    .line 563
    monitor-exit p0

    return-void

    :cond_56
    :try_start_56
    const-string v0, "SemWifiApSessionDataUsage"

    const-string v1, "updateDataUsageOfAllClients(): MHS is switch off can\'t update"

    .line 572
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5f

    .line 574
    :goto_5d
    monitor-exit p0

    return-void

    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTodaysVariables()V
    .registers 5

    monitor-enter p0

    .line 592
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getTodayDataConsumed()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->totalTodayCellularDataUsageNotIncludedActive:J

    .line 593
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getCurrentDayClientListJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    const-string v0, "SemWifiApSessionDataUsage"

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") updated: data consumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->totalTodayCellularDataUsageNotIncludedActive:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 595
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateTotalDataUsageOfConnectedClients(Ljava/util/List;[J)V
    .registers 9
    .param p2    # [J
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 544
    :goto_3
    array-length v3, p2

    if-ge v2, v3, :cond_21

    .line 545
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    if-eqz v3, :cond_1e

    .line 547
    aget-wide v4, p2, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->setClientTotalDataConsumed(J)V

    .line 548
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientActiveSessionTotalDataConsumed()J

    move-result-wide v3

    add-long/2addr v0, v3

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 552
    :cond_21
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfConnectedClient:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_29

    .line 553
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfConnectedClient:J

    :cond_29
    return-void
.end method

.method private declared-synchronized wifiApClientConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    monitor-enter p0

    .line 671
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mEventLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1be

    :try_start_4
    const-string v1, "SemWifiApSessionDataUsage"

    const-string v2, "wifiApClientConnected() : started"

    .line 673
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    if-eqz v1, :cond_11f

    .line 676
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    invoke-virtual {v1, p1, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->insertOrUpdateDeviceName(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 680
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->updateNameAndIp(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemWifiApSessionDataUsage"

    const-string p2, "Client already connected but connected_again (may name changed), therefore update the name and ip only"

    .line 681
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_1bb

    monitor-exit p0

    return-void

    .line 685
    :cond_31
    :try_start_31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->cancelEbpfPollingTimer()V

    .line 686
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mDisconnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    if-eqz v1, :cond_78

    .line 689
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mDisconnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 691
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    .line 693
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 694
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDisconnectedDevicesDataUsage:J

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientActiveSessionMobileDataConsumed()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDisconnectedDevicesDataUsage:J

    .line 695
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfDisconnectedClient:J

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientActiveSessionTotalDataConsumed()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfDisconnectedClient:J

    .line 699
    :cond_6b
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    invoke-virtual {v1, p2, p3, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->clientConnectedAgain(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p2, "SemWifiApSessionDataUsage"

    const-string v2, "Client connect : From DisconnectedList"

    .line 700
    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 703
    :cond_78
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 704
    :cond_7e
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 705
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    .line 706
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 707
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    invoke-virtual {v3, p2, p3, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->clientConnectedAgain(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 709
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDisconnectedDevicesDataUsage:J

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientActiveSessionMobileDataConsumed()J

    move-result-wide v4

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDisconnectedDevicesDataUsage:J

    .line 710
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfDisconnectedClient:J

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientActiveSessionTotalDataConsumed()J

    move-result-wide v4

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfDisconnectedClient:J

    move-object v1, v3

    :cond_ac
    if-eqz v1, :cond_be

    .line 717
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    invoke-virtual {v1, p2, p3, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->clientConnectedAgain(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 718
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->addClientJSONInCurrentDayJSONObject(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;)V

    const-string p2, "SemWifiApSessionDataUsage"

    const-string v2, "Client connect : From active list"

    .line 719
    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :cond_be
    const-string v1, "SemWifiApSessionDataUsage"

    const-string v2, "Client connect : new object"

    .line 725
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 726
    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->createNewClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    move-result-object v1

    .line 727
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->addClientJSONInCurrentDayJSONObject(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;)V

    .line 731
    :goto_d5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    .line 734
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 737
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_fe

    .line 738
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_fe
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->staConnected(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    .line 742
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->setNextEbpfPollingTimer(J)V

    .line 744
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_126

    .line 745
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->stopDbSaveInterval()V

    .line 746
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->startDbSaveOperation()V

    const-string p2, "SemWifiApSessionDataUsage"

    const-string v1, "started DB Save operation"

    .line 747
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_126

    :cond_11f
    const-string p2, "SemWifiApSessionDataUsage"

    const-string v1, "wifiApClientConnected() : exception client connected but isMhsActive = false"

    .line 750
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_126
    :goto_126
    monitor-exit v0
    :try_end_127
    .catchall {:try_start_31 .. :try_end_127} :catchall_1bb

    :try_start_127
    const-string p2, "SemWifiApSessionDataUsage"

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiApClientConnected() : mac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " device name = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SemWifiApSessionDataUsage"

    .line 755
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSortedListOfDisconnectedClients = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SemWifiApSessionDataUsage"

    .line 756
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSortedListOfConnClients = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SemWifiApSessionDataUsage"

    .line 757
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mActiveSessionClientList = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SemWifiApSessionDataUsage"

    .line 758
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "JSON OBJECT Size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b9
    .catchall {:try_start_127 .. :try_end_1b9} :catchall_1be

    .line 759
    monitor-exit p0

    return-void

    :catchall_1bb
    move-exception p1

    .line 752
    :try_start_1bc
    monitor-exit v0
    :try_end_1bd
    .catchall {:try_start_1bc .. :try_end_1bd} :catchall_1bb

    :try_start_1bd
    throw p1
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_1be

    :catchall_1be
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized wifiApClientDisconnected(Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    .line 763
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    if-eqz v0, :cond_130

    .line 764
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->cancelEbpfPollingTimer()V

    .line 765
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mEventLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_139

    .line 766
    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    if-eqz v1, :cond_73

    .line 767
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 768
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->updateDataUsageOfAllClients()V

    .line 769
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDisconnectedDevicesDataUsage:J

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientActiveSessionMobileDataConsumed()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDisconnectedDevicesDataUsage:J

    .line 770
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfDisconnectedClient:J

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientActiveSessionTotalDataConsumed()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfDisconnectedClient:J

    .line 771
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->clientDisconnected()V

    .line 774
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 776
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    .line 779
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mDisconnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->addClientLowLevelObjectInDisconnectedList(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;)V

    .line 781
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    .line 784
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->addClientJSONInCurrentDayJSONObject(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;)V

    const-string v1, "SemWifiApSessionDataUsage"

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiApClientDisconnected(): disconnectedDevicesDataUsage is updated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDisconnectedDevicesDataUsage:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :cond_73
    const-string v1, "SemWifiApSessionDataUsage"

    const-string v2, "wifiApClientDisconnected():exception : Something went wrong device is already disconnected"

    .line 787
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_b .. :try_end_7b} :catchall_12d

    .line 791
    :try_start_7b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->staDisConnected(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 792
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->setNextEbpfPollingTimer(J)V

    const-string p1, "SemWifiApSessionDataUsage"

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSortedListOfDisconnectedClients = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SemWifiApSessionDataUsage"

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSortedListOfConnClients = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SemWifiApSessionDataUsage"

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActiveSessionClientList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SemWifiApSessionDataUsage"

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON OBJECT Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SemWifiApSessionDataUsage"

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connects sum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", disconnected sum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->saveTodayDetailsInDB()V

    .line 801
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_137

    .line 802
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->stopDbSaveInterval()V

    const-string p1, "SemWifiApSessionDataUsage"

    const-string v0, "stop DB save operation as no connected device"

    .line 803
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catchall {:try_start_7b .. :try_end_12c} :catchall_139

    goto :goto_137

    :catchall_12d
    move-exception p1

    .line 789
    :try_start_12e
    monitor-exit v0
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    :try_start_12f
    throw p1

    :cond_130
    const-string p1, "SemWifiApSessionDataUsage"

    const-string v0, "wifiApClientDisconnected():exception : MHS is switch off"

    .line 806
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catchall {:try_start_12f .. :try_end_137} :catchall_139

    .line 809
    :cond_137
    :goto_137
    monitor-exit p0

    return-void

    :catchall_139
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public backUpClientDataUsageSettingsInfo()Ljava/lang/String;
    .registers 4

    .line 1334
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    const/4 v1, 0x1

    const-string v2, "SemWifiApSessionDataUsage"

    if-eqz v0, :cond_16

    const-string v0, "Taking backup of clients Settings"

    .line 1335
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1337
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getDbDataInJsonString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, "Taking backup of clients Settings Failed. Return Empty list"

    .line 1339
    invoke-static {v2, p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1340
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public factoryReset()V
    .registers 3

    .line 1326
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    if-eqz p0, :cond_12

    .line 1327
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->factoryReset()V

    const-string p0, "SemWifiApSessionDataUsage"

    const-string v0, "Factory Reset"

    .line 1328
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1329
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_12
    return-void
.end method

.method public declared-synchronized getDailyMhsDataLimit()J
    .registers 5

    monitor-enter p0

    .line 1181
    :try_start_1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 1182
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getOverAllMhsDataLimitFromPreference()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    .line 1184
    :cond_f
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-wide v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMonthlyDataUsage()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1192
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getMonthlyListNotIncludingTodayDataUsage()Ljava/util/List;

    move-result-object v0

    .line 1193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    .line 1194
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, " "

    const/4 v4, 0x1

    if-ne v2, v4, :cond_30

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 1197
    :cond_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_90

    .line 1198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1199
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1200
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7a

    .line 1202
    :try_start_49
    aget-object v1, v2, v4

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1203
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 1204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1205
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_74} :catch_75

    goto :goto_90

    :catch_75
    move-exception p0

    .line 1207
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_90

    .line 1210
    :cond_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last month data is not correct ? = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SemWifiApSessionDataUsage"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    :goto_90
    return-object v0
.end method

.method public getTodayTotalDataUsage()J
    .registers 5

    .line 1094
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularCurrentDayDataUsage:J

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->totalTodayCellularDataUsageNotIncludedActive:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTopHotspotClientsToday(II)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1109
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mExtraConnListCopy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1110
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mExtraDisConnListCopy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1113
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1114
    :try_start_13
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    .line 1115
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    .line 1116
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mExtraConnListCopy:Ljava/util/List;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-direct {v0, v8, v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->copyTheList(Ljava/util/List;Ljava/util/List;)V

    .line 1117
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mExtraDisConnListCopy:Ljava/util/List;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-direct {v0, v8, v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->copyTheList(Ljava/util/List;Ljava/util/List;)V

    .line 1118
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_fd

    const/4 v3, 0x0

    if-le v1, v2, :cond_31

    const-string v0, "SemWifiApSessionDataUsage"

    const-string v1, "getTopHotspotClientsToday() : Wrong parameters"

    .line 1121
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 1125
    :cond_31
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mExtraConnListCopy:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v9

    .line 1127
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mExtraDisConnListCopy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1130
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 1131
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    goto :goto_50

    :cond_4f
    move-object v10, v3

    .line 1132
    :goto_50
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5d

    .line 1133
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    goto :goto_5e

    :cond_5d
    move-object v11, v3

    :goto_5e
    if-eqz v10, :cond_a0

    if-eqz v11, :cond_a0

    .line 1136
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v1, :cond_a0

    .line 1138
    invoke-virtual {v10}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v12

    invoke-virtual {v11}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-ltz v12, :cond_8b

    .line 1139
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    invoke-virtual {v10}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v12

    sub-long/2addr v4, v12

    .line 1142
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_89

    .line 1143
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    goto :goto_5e

    :cond_89
    move-object v10, v3

    goto :goto_5e

    .line 1146
    :cond_8b
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    invoke-virtual {v11}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v11

    sub-long/2addr v6, v11

    .line 1149
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5d

    .line 1150
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    goto :goto_5e

    .line 1155
    :cond_a0
    :goto_a0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v1, :cond_bf

    if-eqz v11, :cond_bf

    .line 1156
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    invoke-virtual {v11}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v11

    sub-long/2addr v6, v11

    .line 1159
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_bd

    .line 1160
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    goto :goto_a0

    :cond_bd
    move-object v11, v3

    goto :goto_a0

    .line 1164
    :cond_bf
    :goto_bf
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_df

    if-eqz v10, :cond_df

    .line 1165
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-virtual {v10}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v0

    sub-long/2addr v4, v0

    .line 1168
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1169
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    goto :goto_bf

    :cond_dd
    move-object v10, v3

    goto :goto_bf

    :cond_df
    if-nez v10, :cond_e3

    if-eqz v11, :cond_fc

    .line 1174
    :cond_e3
    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    add-long v16, v4, v6

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v24}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZ)V

    .line 1175
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_fc
    return-object v8

    :catchall_fd
    move-exception v0

    .line 1118
    :try_start_fe
    monitor-exit v3
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v0
.end method

.method public getTopHotspotClientsTodayAsString(II)Ljava/lang/String;
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "SemWifiApSessionDataUsage"

    const/4 v4, 0x0

    if-le v1, v2, :cond_11

    const-string v0, "getTopHotspotClientsTodayAsString() : Wrong parameters"

    .line 953
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 957
    :cond_11
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 958
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    iget-wide v8, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    const-wide/16 v10, 0x0

    .line 959
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v12

    .line 960
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v13

    .line 963
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_35

    .line 964
    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    goto :goto_36

    :cond_35
    move-object v14, v4

    .line 965
    :goto_36
    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_43

    .line 966
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    goto :goto_44

    :cond_43
    move-object v15, v4

    :goto_44
    const-wide/16 v16, 0x1

    if-eqz v14, :cond_94

    if-eqz v15, :cond_94

    move-object/from16 v18, v5

    int-to-long v4, v1

    cmp-long v4, v10, v4

    if-gez v4, :cond_91

    .line 971
    invoke-virtual {v14}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v19

    cmp-long v4, v4, v19

    if-ltz v4, :cond_75

    move-object/from16 v4, v18

    .line 972
    invoke-direct {v0, v4, v14, v12}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->addClientDetailsInBuffer(Ljava/lang/StringBuffer;Lcom/samsung/android/wifi/SemWifiApClientDetails;Ljava/util/ListIterator;)J

    move-result-wide v18

    sub-long v6, v6, v18

    .line 974
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 975
    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    move-object v14, v5

    goto :goto_8c

    :cond_73
    const/4 v14, 0x0

    goto :goto_8c

    :cond_75
    move-object/from16 v4, v18

    .line 978
    invoke-direct {v0, v4, v15, v13}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->addClientDetailsInBuffer(Ljava/lang/StringBuffer;Lcom/samsung/android/wifi/SemWifiApClientDetails;Ljava/util/ListIterator;)J

    move-result-wide v18

    sub-long v8, v8, v18

    .line 980
    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 981
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    move-object v15, v5

    goto :goto_8c

    :cond_8b
    const/4 v15, 0x0

    :goto_8c
    add-long v10, v10, v16

    move-object v5, v4

    const/4 v4, 0x0

    goto :goto_44

    :cond_91
    move-object/from16 v4, v18

    goto :goto_95

    :cond_94
    move-object v4, v5

    :goto_95
    move-wide/from16 v18, v6

    :goto_97
    int-to-long v5, v1

    cmp-long v5, v10, v5

    if-gez v5, :cond_b5

    if-eqz v15, :cond_b5

    .line 987
    invoke-direct {v0, v4, v15, v13}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->addClientDetailsInBuffer(Ljava/lang/StringBuffer;Lcom/samsung/android/wifi/SemWifiApClientDetails;Ljava/util/ListIterator;)J

    move-result-wide v5

    sub-long/2addr v8, v5

    add-long v10, v10, v16

    .line 990
    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 991
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    goto :goto_97

    :cond_b3
    const/4 v15, 0x0

    goto :goto_97

    :cond_b5
    move-wide/from16 v6, v18

    move-wide/from16 v18, v8

    :goto_b9
    int-to-long v8, v2

    cmp-long v1, v10, v8

    if-gez v1, :cond_d7

    if-eqz v14, :cond_d7

    .line 996
    invoke-direct {v0, v4, v14, v12}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->addClientDetailsInBuffer(Ljava/lang/StringBuffer;Lcom/samsung/android/wifi/SemWifiApClientDetails;Ljava/util/ListIterator;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long v10, v10, v16

    .line 999
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 1000
    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    goto :goto_b9

    :cond_d5
    const/4 v14, 0x0

    goto :goto_b9

    :cond_d7
    if-nez v14, :cond_db

    if-eqz v15, :cond_f3

    :cond_db
    add-long v6, v6, v18

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Others\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-long v10, v10, v16

    :cond_f3
    const/4 v0, 0x0

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saved string = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1188
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getTop3ClientsEachDayBetweenGivenDates(JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .registers 3

    monitor-enter p0

    .line 1098
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    if-eqz v0, :cond_12

    .line 1100
    new-instance p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-direct {p1, v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_26

    monitor-exit p0

    return-object p1

    .line 1102
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mDisconnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    if-eqz p1, :cond_23

    .line 1104
    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-direct {v0, p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_26

    monitor-exit p0

    return-object v0

    :cond_23
    const/4 p1, 0x0

    .line 1105
    monitor-exit p0

    return-object p1

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleBootCompleted()V
    .registers 3

    monitor-enter p0

    .line 581
    :try_start_1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    .line 582
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    .line 583
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->updateTodaysVariables()V

    .line 584
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->clearDisConnectedListAndAddFromJsonIfNotConnected()V

    .line 585
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->currentDate:Ljava/util/Calendar;

    const-wide/16 v0, -0x1

    .line 586
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    .line 587
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->registerBR()V

    const-string v0, "SemWifiApSessionDataUsage"

    const-string v1, "Handle reboot completed"

    .line 588
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 589
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public internetNetworktypeChanged()V
    .registers 1

    .line 1367
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isOverAllMhsDataLimitReached()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 1368
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->restartAdvBecauseOfUpstreamChanged()V

    :cond_11
    return-void
.end method

.method public isNeededToShowWifiApDatalimitReachedDialog()Z
    .registers 2

    .line 1359
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isActiveNetworkisCellular(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isOverAllMhsDataLimitReached()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isOverAllMhsDataLimitReached()Z
    .registers 5

    .line 1218
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_40

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->ignoreLast4Digit_roundOff(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->ignoreLast4Digit_roundOff(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_40

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTodayTotalDataUsage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",dailyDataLimit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiApSessionDataUsage"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method public isOverAllMhsDataLimitSet()Z
    .registers 5

    .line 1226
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getDailyMhsDataLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public restoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    .registers 5

    const-string v0, "Restoring of clients Settings Complete"

    const-string v1, "SemWifiApSessionDataUsage"

    .line 1346
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1347
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    if-eqz p1, :cond_1f

    .line 1348
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->updateClientSettingDbUsingJsonObject(Lorg/json/JSONObject;)V

    .line 1349
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->processTodayClientListAndUpdateTheSettings(Lorg/json/JSONObject;)V

    .line 1350
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 1351
    invoke-static {v1, v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 1354
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public setClientDataLimit(Ljava/lang/String;J)V
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_7

    move-wide p2, v0

    .line 1247
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    const-string v3, "SemWifiApSessionDataUsage"

    if-eqz v2, :cond_154

    .line 1249
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDataLimit()J

    move-result-wide v4

    cmp-long v4, v4, p2

    const/4 v5, 0x1

    const-string v6, ", name: "

    const-string v7, "MAC : "

    if-nez v4, :cond_6f

    .line 1250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", data limit set by user is same as previous = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_6f
    cmp-long v0, p2, v0

    if-lez v0, :cond_fd

    .line 1256
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->updateDataUsageOfAllClients()V

    .line 1257
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_fd

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data limit set by user is less than data usage (data usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " , limit set byt user = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1260
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040f3d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1261
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1265
    :cond_fd
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->insertOrUpdateDeviceDataLimitInBytes(Ljava/lang/String;J)V

    .line 1266
    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->setClientDataLimit(J)V

    .line 1267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", data limit set by user = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_159

    :cond_154
    const-string p0, "client disconnected , can\'t set data limit"

    .line 1270
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_159
    return-void
.end method

.method public setClientTimeLimit(Ljava/lang/String;J)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_7

    move-wide p2, v0

    .line 1278
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    const-string v1, "SemWifiApSessionDataUsage"

    if-eqz v0, :cond_6f

    .line 1280
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->insertOrUpdateDeviceTimeLimitInMilliSeconds(Ljava/lang/String;J)V

    .line 1281
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->setClientTimeLimit(J)V

    .line 1282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", name: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Time limit set by user = "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_74

    :cond_6f
    const-string p0, "client disconnected , can\'t set time limit"

    .line 1285
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    return-void
.end method

.method public setDailyMhsDataLimit(J)V
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-string v3, "SemWifiApSessionDataUsage"

    if-gez v2, :cond_e

    const-string p1, "overAll limit is trying to set negative therefore setting to zero(to indicate \'no set limit\'"

    .line 1291
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v0

    .line 1295
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getDailyMhsDataLimit()J

    move-result-wide v4

    cmp-long v2, v4, p1

    const/4 v4, 0x1

    if-nez v2, :cond_20

    const-string p0, "Overall MHS Data Limit is same as previous, not need to proceed forward"

    .line 1296
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    invoke-static {v3, p0, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_20
    cmp-long v0, p1, v0

    if-lez v0, :cond_86

    .line 1302
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->updateDataUsageOfAllClients()V

    .line 1303
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_86

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t set the overall data limit, data usage is more than or equal to the limit (datausage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " & limit user is setting = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1306
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040f3d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1307
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1311
    :cond_86
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->dailyDataLimit:J

    .line 1312
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->checkForDailyDataLimitReached()V

    .line 1317
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "daily_mhs_data_limit"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1319
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->restartAdvBecauseOfDataLimitChanged()V

    .line 1321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Over All Mhs Data limit set in bytes = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized setIsCellularUpstream(Z)V
    .registers 8

    monitor-enter p0

    .line 1040
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    if-eqz v0, :cond_cd

    .line 1041
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isEbpfMhsOnApiCalled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->setHotspotState(Z)V

    .line 1043
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isEbpfMhsOnApiCalled:Z

    :cond_11
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 1046
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMobileDataEnable()Z

    move-result v2

    goto :goto_1a

    :cond_19
    move v2, v0

    .line 1048
    :goto_1a
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isFirstTimebackhualCheckDone:Z

    if-nez v3, :cond_28

    const-string v3, "SemWifiApSessionDataUsage"

    const-string v4, "First time backhual check for current sesssion"

    .line 1049
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isFirstTimebackhualCheckDone:Z

    goto :goto_3d

    .line 1051
    :cond_28
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    if-ne p1, v1, :cond_3d

    if-eqz v1, :cond_34

    if-eqz v1, :cond_3d

    .line 1052
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mIsMobileDataEnable:Z

    if-ne v1, v2, :cond_3d

    :cond_34
    const-string p1, "SemWifiApSessionDataUsage"

    const-string v0, "action upStream not changed, no need to proceed further"

    .line 1053
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_d6

    .line 1054
    monitor-exit p0

    return-void

    :cond_3d
    :goto_3d
    :try_start_3d
    const-string v1, "SemWifiApSessionDataUsage"

    .line 1058
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action upStream changed : isCellularUpStream = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , isMobileDataEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->cancelEbpfPollingTimer()V

    .line 1060
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->stopDbSaveInterval()V

    .line 1061
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getConnectedStaCount()I

    move-result v1

    if-lez v1, :cond_9e

    .line 1062
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mEventLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6c
    .catchall {:try_start_3d .. :try_end_6c} :catchall_d6

    .line 1063
    :try_start_6c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->updateDataUsageOfAllClients()V

    .line 1064
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->saveTodayDetailsInDB()V

    .line 1065
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_9b

    if-eqz p1, :cond_93

    if-eqz v2, :cond_8b

    :try_start_77
    const-string v1, "SemWifiApSessionDataUsage"

    const-string v3, "wake up schedule & DB Save operation is started again"

    .line 1068
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

    const/16 v3, 0x64

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1070
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->startDbSaveOperation()V

    goto :goto_9e

    :cond_8b
    const-string v1, "SemWifiApSessionDataUsage"

    const-string v3, "wake up schedule and DB save operation is cancelled due to Mobile data is off"

    .line 1072
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    :cond_93
    const-string v1, "SemWifiApSessionDataUsage"

    const-string v3, "wake up schedule and DB save operation is cancelled due to wifi stream"

    .line 1075
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_77 .. :try_end_9a} :catchall_d6

    goto :goto_9e

    :catchall_9b
    move-exception p1

    .line 1065
    :try_start_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    :try_start_9d
    throw p1

    .line 1078
    :cond_9e
    :goto_9e
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    .line 1079
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mIsMobileDataEnable:Z

    .line 1080
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->checkForDailyDataLimitReached()V

    .line 1081
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->handleClientStreamChangedEvent(Z)V

    const-string p1, "SemWifiApSessionDataUsage"

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCellularUpstream = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is Mobile data enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mIsMobileDataEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_d4

    :cond_cd
    const-string p1, "SemWifiApSessionDataUsage"

    const-string v0, "Exception : trying to change upstream value when MHS is OFF"

    .line 1084
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_9d .. :try_end_d4} :catchall_d6

    .line 1087
    :goto_d4
    monitor-exit p0

    return-void

    :catchall_d6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setWifiApClientDataPaused(Ljava/lang/String;Z)V
    .registers 8

    .line 1230
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    const-string v1, "SemWifiApSessionDataUsage"

    if-eqz v0, :cond_68

    .line 1232
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->setClientDataPausedByUser(Z)V

    .line 1233
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->insertOrUpdateDeviceIsPauseSharing(Ljava/lang/String;I)V

    .line 1234
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", name: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Data Paused by User val = :"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6d

    :cond_68
    const-string p0, "client disconnected , can\'t set data paused"

    .line 1237
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d
    return-void
.end method

.method public declared-synchronized wifiApSessionStarted()V
    .registers 5

    monitor-enter p0

    .line 602
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mEventLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5a

    .line 603
    :try_start_4
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    if-nez v1, :cond_4d

    const/4 v1, 0x1

    .line 604
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    const-wide/16 v2, 0x0

    .line 605
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDataUsage:J

    .line 606
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularCurrentDayDataUsage:J

    .line 607
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionCellularDisconnectedDevicesDataUsage:J

    .line 608
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfDisconnectedClient:J

    .line 609
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->activeSessionTotalDataUsageOfConnectedClient:J

    .line 610
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isCellularUpstream:Z

    .line 611
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 612
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 613
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "SemWifiApSessionDataUsage"

    const-string v2, "wifiApSessionStarted(): MHS is started,reset current session variable "

    .line 614
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SemWifiApSessionDataUsage"

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiApSessionStart() : mSortedListOfDisconnectedClients = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_54

    :cond_4d
    const-string v1, "SemWifiApSessionDataUsage"

    const-string v2, "wifiApSessionStarted() : exception as isMhsActive = true"

    .line 617
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4 .. :try_end_55} :catchall_57

    .line 621
    monitor-exit p0

    return-void

    :catchall_57
    move-exception v1

    .line 619
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wifiApSessionStop()V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "SemWifiApSessionDataUsage"

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiApSessionStop() before : mSortedListOfDisconnectedClients = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmSortedListOfConnClients  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    .line 625
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmActiveSessionClientList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    .line 626
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 624
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 628
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mEventLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_154

    .line 629
    :try_start_42
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isMhsActive:Z

    if-eqz v1, :cond_bb

    .line 630
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->stopDbSaveInterval()V

    .line 631
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->cancelEbpfPollingTimer()V

    .line 632
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->updateDataUsageOfAllClients()V

    .line 633
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTodayTotalDataUsage()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->totalTodayCellularDataUsageNotIncludedActive:J

    .line 635
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    const/4 v6, 0x3

    invoke-virtual {p0, v6, v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->getTopHotspotClientsTodayAsString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->insertOrUpdateFullDetailsOnToday(JLorg/json/JSONObject;Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->setHotspotState(Z)V

    .line 639
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 640
    :goto_6c
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 641
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    .line 642
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mhsIsOff()V

    goto :goto_6c

    .line 645
    :cond_7c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b0

    .line 646
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfDisConnectedList:J

    const-wide/16 v3, 0x0

    .line 647
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSumOfDataUsageOfConnectedList:J

    .line 648
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 649
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mDisconnectedClientMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 650
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 651
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 652
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mConnectedClientMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 655
    :cond_b0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->resetActiveSessionsVariables()V

    const-string v1, "SemWifiApSessionDataUsage"

    const-string v3, "wifiApSessionStop() : current session data is saved in DB and the current session data"

    .line 656
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    :cond_bb
    const-string v1, "SemWifiApSessionDataUsage"

    const-string v3, "wifiApSessionStop() : exception as isMhsActive = false"

    .line 658
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :goto_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_42 .. :try_end_c3} :catchall_151

    :try_start_c3
    const-string v0, "SemWifiApSessionDataUsage"

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSortedListOfDisconnectedClients = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemWifiApSessionDataUsage"

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSortedListOfConnClients = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfConnClients:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemWifiApSessionDataUsage"

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActiveSessionClientList = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mActiveSessionClientList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemWifiApSessionDataUsage"

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON OBJECT Size= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mCurrentDayClientListJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemWifiApSessionDataUsage"

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiApSessionStop() After : mSortedListOfDisconnectedClients = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->mSortedListOfDisconnectedClients:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_14f
    .catchall {:try_start_c3 .. :try_end_14f} :catchall_154

    .line 668
    monitor-exit p0

    return-void

    :catchall_151
    move-exception v1

    .line 660
    :try_start_152
    monitor-exit v0
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_151

    :try_start_153
    throw v1
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_154

    :catchall_154
    move-exception v0

    monitor-exit p0

    throw v0
.end method
