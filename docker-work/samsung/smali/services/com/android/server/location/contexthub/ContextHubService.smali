.class public Lcom/android/server/location/contexthub/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;,
        Lcom/android/server/location/contexthub/ContextHubService$Type;
    }
.end annotation


# static fields
.field public static final CONTEXT_HUB_EVENT_RESTARTED:I = 0x1

.field public static final CONTEXT_HUB_EVENT_UNKNOWN:I = 0x0

.field public static final DEBUG_LOG_ENABLED:Z = false

.field public static final MSG_DISABLE_NANO_APP:I = 0x2

.field public static final MSG_ENABLE_NANO_APP:I = 0x1

.field public static final MSG_HUB_RESET:I = 0x7

.field public static final MSG_LOAD_NANO_APP:I = 0x3

.field public static final MSG_QUERY_MEMORY:I = 0x6

.field public static final MSG_QUERY_NANO_APPS:I = 0x5

.field public static final MSG_UNLOAD_NANO_APP:I = 0x4

.field public static final OS_APP_INSTANCE:I = -0x1

.field public static final PERIOD_METRIC_QUERY_DAYS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ContextHubService"


# instance fields
.field public final mCallbacksList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/location/IContextHubCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field public final mContext:Landroid/content/Context;

.field public final mContextHubIdToInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mContextHubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mDefaultClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/IContextHubClient;",
            ">;"
        }
    .end annotation
.end field

.field public mIsBtMainEnabled:Z

.field public mIsBtScanningEnabled:Z

.field public mIsWifiAvailable:Z

.field public mIsWifiMainEnabled:Z

.field public mIsWifiScanningEnabled:Z

.field public final mLastRestartTimestampMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field public mMetricQueryPendingContextHubIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

.field public final mSendWifiSettingUpdateLock:Ljava/lang/Object;

.field public final mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field public final mSupportedContextHubPerms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;


# direct methods
.method public static synthetic $r8$lambda$2DicqHE8AmZyaH66S6Q9mi8pIEQ(Ljava/lang/String;JLcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubService;->lambda$denyClientAuthState$3(Ljava/lang/String;JLcom/android/server/location/contexthub/ContextHubClientBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3uYRjc1gJNJkcH4lsPxQfytLv9Q(Ljava/io/PrintWriter;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->lambda$dump$2(Ljava/io/PrintWriter;Landroid/hardware/location/NanoAppInstanceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BVC3pqJn43nuQ-kdsLT4nRlmkiw(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->lambda$scheduleDailyMetricSnapshot$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ftawv_Y4J5eOME6OxcRZ_h9mCXY(Lcom/android/server/location/contexthub/ContextHubService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->lambda$new$0(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$OPnStT2frch7kM88ZHpe_1q_EhE(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->lambda$findNanoAppOnHub$1(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;Landroid/hardware/location/NanoAppInstanceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RgYKnGbgRWisJh3a6hKfyf6RHUM(Landroid/util/proto/ProtoOutputStream;Landroid/hardware/location/ContextHubInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->lambda$dump$4(Landroid/util/proto/ProtoOutputStream;Landroid/hardware/location/ContextHubInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/NanoAppStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAppAbortCallback(Lcom/android/server/location/contexthub/ContextHubService;IJI)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubService;->handleAppAbortCallback(IJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleClientMessageCallback(Lcom/android/server/location/contexthub/ContextHubService;ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubService;->handleClientMessageCallback(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleHubEventCallback(Lcom/android/server/location/contexthub/ContextHubService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->handleHubEventCallback(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLoadResponseOldApi(Lcom/android/server/location/contexthub/ContextHubService;IILandroid/hardware/location/NanoAppBinary;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubService;->handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleQueryAppsCallback(Lcom/android/server/location/contexthub/ContextHubService;ILjava/util/List;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->handleQueryAppsCallback(ILjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleTransactionResultCallback(Lcom/android/server/location/contexthub/ContextHubService;IIZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubService;->handleTransactionResultCallback(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUnloadResponseOldApi(Lcom/android/server/location/contexthub/ContextHubService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->handleUnloadResponseOldApi(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monMessageReceiptOldApi(Lcom/android/server/location/contexthub/ContextHubService;III[B)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendAirplaneModeSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBtSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendLocationSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendWifiSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 14

    const-string v0, "ContextHubService"

    .line 211
    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    .line 127
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 143
    new-instance v1, Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-direct {v1}, Lcom/android/server/location/contexthub/NanoAppStateManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 146
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x0

    .line 154
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 163
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 164
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    .line 167
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSendWifiSettingUpdateLock:Ljava/lang/Object;

    .line 171
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 213
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getContextHubWrapper()Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, 0x0

    if-nez p1, :cond_6d

    .line 217
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 218
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 219
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    return-void

    .line 229
    :cond_6d
    :try_start_6d
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getHubs()Landroid/util/Pair;

    move-result-object p1
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_71} :catch_72

    goto :goto_85

    :catch_72
    move-exception p1

    const-string v5, "RemoteException while getting Context Hub info"

    .line 231
    invoke-static {v0, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    new-instance p1, Landroid/util/Pair;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-direct {p1, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    :goto_85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 235
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x18e

    .line 236
    invoke-static {v4, v5, v6, v3}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IJI)V

    .line 238
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 239
    invoke-static {v3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v3

    .line 238
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 240
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 241
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 242
    new-instance p1, Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-direct {p1, v4, v5}, Lcom/android/server/location/contexthub/ContextHubClientManager;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 243
    new-instance v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-direct {v4, v5, p1, v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V

    iput-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 245
    const-class p1, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 246
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManagerInternal;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 248
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 249
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_155

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 250
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 250
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/hardware/location/ContextHubInfo;

    .line 254
    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 255
    invoke-virtual {p0, v4}, Lcom/android/server/location/contexthub/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 254
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v5

    .line 257
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :try_start_12c
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    new-instance v6, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    invoke-direct {v6, p0, v4}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    invoke-virtual {v5, v4, v6}, Lcom/android/server/location/contexthub/IContextHubWrapper;->registerCallback(ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_136} :catch_137

    goto :goto_151

    :catch_137
    move-exception v5

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException while registering service callback for hub (ID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    :goto_151
    invoke-virtual {p0, v4}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    goto :goto_e3

    .line 271
    :cond_155
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 273
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsLocationSettingNotifications()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_17c

    .line 274
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 275
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "location_mode"

    .line 276
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubService$1;

    invoke-direct {v4, p0, v1}, Lcom/android/server/location/contexthub/ContextHubService$1;-><init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V

    .line 275
    invoke-virtual {p1, v3, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 286
    :cond_17c
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsWifiSettingNotifications()Z

    move-result p1

    if-eqz p1, :cond_1b5

    .line 287
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    .line 289
    new-instance p1, Lcom/android/server/location/contexthub/ContextHubService$2;

    invoke-direct {p1, p0}, Lcom/android/server/location/contexthub/ContextHubService$2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 299
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 300
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    .line 301
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "wifi_scan_always_enabled"

    .line 305
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubService$3;

    invoke-direct {v4, p0, v1}, Lcom/android/server/location/contexthub/ContextHubService$3;-><init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V

    .line 304
    invoke-virtual {p1, v3, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 315
    :cond_1b5
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsAirplaneModeSettingNotifications()Z

    move-result p1

    if-eqz p1, :cond_1d4

    .line 316
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    .line 317
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "airplane_mode_on"

    .line 318
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubService$4;

    invoke-direct {v4, p0, v1}, Lcom/android/server/location/contexthub/ContextHubService$4;-><init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V

    .line 317
    invoke-virtual {p1, v3, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 328
    :cond_1d4
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsMicrophoneSettingNotifications()Z

    move-result p1

    if-eqz p1, :cond_1e9

    .line 329
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    .line 331
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    invoke-virtual {p1, v2, v0}, Landroid/hardware/SensorPrivacyManagerInternal;->addSensorPrivacyListenerForAllUsers(ILandroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;)V

    .line 341
    :cond_1e9
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsBtSettingNotifications()Z

    move-result p1

    if-eqz p1, :cond_20d

    .line 342
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    .line 344
    new-instance p1, Lcom/android/server/location/contexthub/ContextHubService$5;

    invoke-direct {p1, p0}, Lcom/android/server/location/contexthub/ContextHubService$5;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 354
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 360
    :cond_20d
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->scheduleDailyMetricSnapshot()V

    return-void
.end method

.method public static synthetic lambda$denyClientAuthState$3(Ljava/lang/String;JLcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 10

    .line 1028
    invoke-virtual {p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 1030
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p3

    move-wide v1, p1

    .line 1029
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;ZZ)I

    :cond_15
    return-void
.end method

.method public static synthetic lambda$dump$2(Ljava/io/PrintWriter;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .registers 2

    .line 1013
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$dump$4(Landroid/util/proto/ProtoOutputStream;Landroid/hardware/location/ContextHubInfo;)V
    .registers 4

    const-wide v0, 0x20b00000001L

    .line 1038
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1039
    invoke-virtual {p1, p0}, Landroid/hardware/location/ContextHubInfo;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1040
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static synthetic lambda$findNanoAppOnHub$1(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .registers 3

    .line 602
    invoke-virtual {p0, p2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 603
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method private synthetic lambda$new$0(IZ)V
    .registers 5

    .line 333
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_28

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "mic privacy: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContextHubService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdate(Z)V

    :cond_28
    return-void
.end method

.method private synthetic lambda$scheduleDailyMetricSnapshot$5()V
    .registers 5

    .line 1234
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1235
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1236
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    goto :goto_a

    :cond_27
    return-void
.end method


# virtual methods
.method public final checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z
    .registers 8

    .line 1104
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const-string v1, "RemoteException while calling onTransactionComplete"

    const/4 v2, 0x0

    const-string v3, "ContextHubService"

    if-nez v0, :cond_14

    const/16 p0, 0x8

    .line 1106
    :try_start_b
    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 1109
    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return v2

    .line 1113
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result p0

    if-nez p0, :cond_44

    .line 1114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot start "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    invoke-static {p3, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " transaction for invalid hub ID "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1114
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 1118
    :try_start_3b
    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p0

    .line 1120
    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_43
    return v2

    :cond_44
    const/4 p0, 0x1

    return p0
.end method

.method public final checkPermissions()V
    .registers 1

    .line 1051
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    return-void
.end method

.method public createClient(ILandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 833
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz p2, :cond_24

    .line 840
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    .line 841
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object p0

    return-object p0

    .line 837
    :cond_24
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot register client with null callback"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 834
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid context hub ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
    .registers 3

    .line 370
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService$6;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    return-object v0
.end method

.method public final createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 4

    .line 484
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService$7;-><init>(Lcom/android/server/location/contexthub/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V

    return-object v0
.end method

.method public createPendingIntentClient(ILandroid/app/PendingIntent;JLjava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 861
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 865
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    .line 866
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;JLjava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Landroid/hardware/location/IContextHubClient;

    move-result-object p0

    return-object p0

    .line 862
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid context hub ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 3

    .line 522
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$9;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService$9;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    return-object v0
.end method

.method public final createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 3

    .line 503
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService$8;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    return-object v0
.end method

.method public denyClientAuthState(ILjava/lang/String;J)V
    .registers 6

    .line 1027
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 957
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    const/4 v0, 0x3

    .line 958
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 963
    :cond_b
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 964
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    move-wide v3, p3

    move-object v5, p2

    .line 963
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 965
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 4

    .line 1037
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda5;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    const-wide v0, 0x10b00000002L

    .line 1043
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1044
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientManager;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1045
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1047
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 991
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-string v1, "ContextHubService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 993
    :cond_b
    array-length v0, p3

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_25

    aget-object v2, p3, v1

    const-string v3, "--proto"

    .line 994
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 995
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubService;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_25
    const-string p1, "Dumping ContextHub Service"

    .line 1000
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    .line 1002
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "=================== CONTEXT HUBS ===================="

    .line 1004
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 1006
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3e

    .line 1008
    :cond_4e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Supported permissions: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 1009
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1008
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "=================== NANOAPPS ===================="

    .line 1011
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p3, v0}, Lcom/android/server/location/contexthub/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 1015
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "=================== CLIENTS ===================="

    .line 1016
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1019
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "=================== TRANSACTIONS ===================="

    .line 1020
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 934
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    const/4 v0, 0x2

    .line 935
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 940
    :cond_b
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 941
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    move-wide v3, p3

    move-object v5, p2

    .line 940
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 942
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 599
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_14

    .line 601
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 608
    :cond_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 p2, 0x0

    .line 609
    :goto_1b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_30

    .line 610
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :cond_30
    return-object p0
.end method

.method public final getCallingPackageName()Ljava/lang/String;
    .registers 2

    .line 1248
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContextHubHandles()[I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 450
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createPrimitiveIntArray(Ljava/util/Collection;)[I

    move-result-object p0

    return-object p0
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 456
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Context Hub handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in getContextHubInfo"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 461
    :cond_2c
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/location/ContextHubInfo;

    return-object p0
.end method

.method public final getContextHubWrapper()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 1

    .line 417
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectToAidl()Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object p0

    if-nez p0, :cond_a

    .line 419
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectTo1_2()Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object p0

    :cond_a
    if-nez p0, :cond_10

    .line 422
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectTo1_1()Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object p0

    :cond_10
    if-nez p0, :cond_16

    .line 425
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectTo1_0()Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object p0

    :cond_16
    return-object p0
.end method

.method public getContextHubs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 472
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getCurrentUserId()I
    .registers 3

    .line 1252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1254
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 1255
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1260
    throw p0

    .line 1259
    :catch_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 591
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final handleAppAbortCallback(IJI)V
    .registers 5

    .line 782
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onNanoAppAborted(IJI)V

    return-void
.end method

.method public final handleClientMessageCallback(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IS",
            "Landroid/hardware/location/NanoAppMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final handleHubEventCallback(II)V
    .registers 9

    const/4 v0, 0x1

    if-ne p2, v0, :cond_40

    .line 751
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 752
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    const/16 p2, 0x18f

    .line 753
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v1, v3

    .line 755
    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 753
    invoke-static {p2, v1, v2, p1}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IJI)V

    .line 758
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 759
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    .line 760
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    .line 761
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    .line 762
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    .line 764
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onHubReset()V

    .line 765
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    .line 767
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onHubReset(I)V

    goto :goto_63

    .line 769
    :cond_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received unknown hub event (hub ID = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", type = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    return-void
.end method

.method public final handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V
    .registers 7

    if-nez p3, :cond_a

    const-string p0, "ContextHubService"

    const-string p1, "Nanoapp binary field was null for a load transaction"

    .line 707
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte p2, p2

    aput-byte p2, v0, v1

    .line 713
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 714
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v1

    .line 713
    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result p2

    const/4 p3, 0x1

    const/4 v1, 0x4

    .line 715
    invoke-static {v0, p3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p2, 0x3

    const/4 p3, -0x1

    .line 717
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    return-void
.end method

.method public final handleQueryAppsCallback(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 793
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppState;

    const/16 v2, 0x190

    .line 796
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    move-result-wide v3

    .line 797
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppVersion()J

    move-result-wide v5

    long-to-int v1, v5

    .line 794
    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IIJI)V

    goto :goto_10

    .line 799
    :cond_2b
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 800
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 801
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->scheduleDailyMetricSnapshot()V

    .line 804
    :cond_3f
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/contexthub/NanoAppStateManager;->updateCache(ILjava/util/List;)V

    .line 805
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onQueryResponse(Ljava/util/List;)V

    return-void
.end method

.method public final handleTransactionResultCallback(IIZ)V
    .registers 4

    .line 740
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onTransactionResponse(IZ)V

    return-void
.end method

.method public final handleUnloadResponseOldApi(II)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x4

    const/4 v1, -0x1

    .line 728
    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    return-void
.end method

.method public final isValidContextHubId(I)Z
    .registers 2

    .line 813
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 538
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    .line 541
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    const-string v2, "ContextHubService"

    if-nez v0, :cond_2b

    .line 542
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid Context Hub handle "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in loadNanoApp"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2b
    if-nez p2, :cond_33

    const-string p0, "NanoApp cannot be null in loadNanoApp"

    .line 546
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 551
    :cond_33
    new-instance v0, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/hardware/location/NanoAppBinary;-><init>([B)V

    .line 553
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubService;->createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object p2

    .line 555
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 556
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 558
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    const/4 p0, 0x0

    return p0
.end method

.method public loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    const/4 v0, 0x0

    .line 883
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-nez p3, :cond_19

    const-string p0, "ContextHubService"

    const-string p1, "NanoAppBinary cannot be null in loadNanoAppOnHub"

    .line 888
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 889
    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    return-void

    .line 894
    :cond_19
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 895
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 894
    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 896
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public final onMessageReceiptOldApi(III[B)I
    .registers 13

    if-nez p4, :cond_4

    const/4 p0, -0x1

    return p0

    .line 1063
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1064
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_13

    .line 1075
    monitor-exit v0

    return v3

    .line 1078
    :cond_13
    new-instance v2, Landroid/hardware/location/ContextHubMessage;

    invoke-direct {v2, p1, v3, p4}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    move p1, v3

    :goto_19
    if-ge p1, v1, :cond_4e

    .line 1080
    iget-object p4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p4, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Landroid/hardware/location/IContextHubCallback;
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_55

    .line 1082
    :try_start_23
    invoke-interface {p4, p2, p3, v2}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27
    .catchall {:try_start_23 .. :try_end_26} :catchall_55

    goto :goto_4b

    :catch_27
    move-exception v4

    :try_start_28
    const-string v5, "ContextHubService"

    .line 1084
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") calling remote callback ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ")."

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    .line 1088
    :cond_4e
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1089
    monitor-exit v0

    return v3

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_28 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 434
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubShellCommand;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/location/contexthub/ContextHubShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/ContextHubService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserChanged()V
    .registers 3

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User changed to id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 1272
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    return-void
.end method

.method public queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 978
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    const/4 v0, 0x4

    .line 979
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 984
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 985
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 986
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public final queryNanoAppsInternal(I)Z
    .registers 5

    .line 626
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 631
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 633
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 635
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 440
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added callback, total callbacks "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 443
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubService"

    .line 442
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final scheduleDailyMetricSnapshot()V
    .registers 5

    .line 1233
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 1240
    :try_start_5
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p0

    const-string v0, "ContextHubService"

    const-string v1, "Error when schedule a timer"

    .line 1243
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method public final sendAirplaneModeSettingUpdate()V
    .registers 4

    .line 1201
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 1202
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    .line 1205
    :cond_11
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onAirplaneModeSettingChanged(Z)V

    return-void
.end method

.method public final sendBtSettingUpdate(Z)V
    .registers 5

    .line 1171
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1174
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 1175
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v0

    if-nez p1, :cond_14

    .line 1176
    iget-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    if-eq v2, v0, :cond_1b

    .line 1177
    :cond_14
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 1178
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v2, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtScanningSettingChanged(Z)V

    :cond_1b
    if-nez p1, :cond_21

    .line 1180
    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    if-eq p1, v1, :cond_47

    .line 1181
    :cond_21
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 1182
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtMainSettingChanged(Z)V

    goto :goto_47

    :cond_29
    const-string p1, "ContextHubService"

    const-string v0, "BT adapter not available. Defaulting to disabled"

    .line 1185
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    .line 1187
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 1188
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtMainSettingChanged(Z)V

    .line 1190
    :cond_3c
    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    if-eqz p1, :cond_47

    .line 1191
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 1192
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtScanningSettingChanged(Z)V

    :cond_47
    :goto_47
    return-void
.end method

.method public final sendLocationSettingUpdate()V
    .registers 3

    .line 1132
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1133
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 1134
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onLocationSettingChanged(Z)V

    return-void
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 643
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    :cond_9
    const-string v0, "ContextHubService"

    if-nez p3, :cond_13

    const-string p0, "ContextHubMessage cannot be null in sendMessage"

    .line 647
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 650
    :cond_13
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v2

    if-nez v2, :cond_1f

    const-string p0, "ContextHubMessage message body cannot be null in sendMessage"

    .line 651
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 654
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 655
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid Context Hub handle "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in sendMessage"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3f
    const/4 v2, 0x0

    if-ne p2, v1, :cond_67

    .line 661
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result p2

    const/4 v3, 0x5

    if-ne p2, v3, :cond_4e

    .line 662
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    move-result p0

    goto :goto_ab

    .line 664
    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid OS message params of type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 667
    :cond_67
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v3

    if-eqz v3, :cond_91

    .line 670
    invoke-virtual {v3}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result p2

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object p3

    .line 669
    invoke-static {v3, v4, p2, p3}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object p2

    .line 672
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/location/IContextHubClient;

    .line 673
    invoke-interface {p0, p2}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result p0

    if-nez p0, :cond_aa

    const/4 p0, 0x1

    goto :goto_ab

    .line 676
    :cond_91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to send nanoapp message - nanoapp with handle "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    :goto_aa
    move p0, v2

    :goto_ab
    if-eqz p0, :cond_ae

    move v1, v2

    :cond_ae
    return v1
.end method

.method public final sendMicrophoneDisableSettingUpdate(Z)V
    .registers 4

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mic Disabled Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onMicrophoneSettingChanged(Z)V

    return-void
.end method

.method public final sendMicrophoneDisableSettingUpdateForCurrentUser()V
    .registers 4

    .line 1224
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 1225
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x1

    .line 1224
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    .line 1226
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdate(Z)V

    return-void
.end method

.method public final sendWifiSettingUpdate(Z)V
    .registers 7

    .line 1144
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSendWifiSettingUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1146
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 1147
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-nez v2, :cond_1c

    if-eqz v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v3, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v3, 0x1

    :goto_1d
    if-nez p1, :cond_23

    .line 1149
    iget-boolean v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    if-eq v4, v3, :cond_2a

    .line 1150
    :cond_23
    iput-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    .line 1151
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v4, v3}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiSettingChanged(Z)V

    :cond_2a
    if-nez p1, :cond_30

    .line 1153
    iget-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    if-eq v3, v1, :cond_37

    .line 1154
    :cond_30
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    .line 1155
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v3, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiScanningSettingChanged(Z)V

    :cond_37
    if-nez p1, :cond_3d

    .line 1157
    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    if-eq p1, v2, :cond_44

    .line 1158
    :cond_3d
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    .line 1159
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiMainSettingChanged(Z)V

    .line 1161
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public unloadNanoApp(I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 565
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    .line 569
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 570
    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 572
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid nanoapp handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in unloadNanoApp"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 576
    :cond_2d
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v3

    .line 577
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v4

    .line 579
    invoke-virtual {p0, v3}, Lcom/android/server/location/contexthub/ContextHubService;->createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v6

    .line 580
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 581
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v7

    .line 580
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 583
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    const/4 p0, 0x0

    return p0
.end method

.method public unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    const/4 v0, 0x1

    .line 912
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 917
    :cond_b
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 918
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    move-wide v3, p3

    move-object v5, p2

    .line 917
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 919
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method
