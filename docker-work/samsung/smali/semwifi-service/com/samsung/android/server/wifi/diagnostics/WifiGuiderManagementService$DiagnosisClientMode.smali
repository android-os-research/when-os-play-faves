.class final Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;
.super Lcom/android/internal/util/StateMachine;
.source "WifiGuiderManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DiagnosisClientMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;,
        Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$DefaultState;
    }
.end annotation


# static fields
.field static final CMD_BIND_SERVICE:I = 0x1

.field static final CMD_REGISTER_SERVICE:I = 0x3

.field static final CMD_SERVICE_TIMEOUT:I = 0x5

.field static final CMD_START_DIAGNOSIS:I = 0x4

.field static final CMD_UNBIND_SERVICE:I = 0x2

.field static final DEFAULT_SERVICE_REGISTER_DELAY_MS:J = 0x1388L

.field static final DELEGATION_ACTION:Ljava/lang/String; = "action"

.field static final DELEGATION_ACTION_ISSUE_DETECTOR:Ljava/lang/String; = "issuedetector_report"

.field static final DELEGATION_ACTION_SETTINGS_OBSERVER:Ljava/lang/String; = "settings_observer"

.field static final DELEGATION_ARGS_GLOBAL_DB:Ljava/lang/String; = "global_db_name"

.field static final DELEGATION_ARGS_REPORT_IDS:Ljava/lang/String; = "report_ids"

.field static final DELEGATION_ARGS_SECURE_DB:Ljava/lang/String; = "secure_db_name"

.field static final DELEGATION_ARGS_SEM_WIFI_DB:Ljava/lang/String; = "custom_uri_name"

.field static final EVENT_PACKAGE_REPLACED:I = 0x69

.field static final EVENT_RECEIVED_DIAGNOSIS_RESULT:I = 0x68

.field static final EVENT_RECEIVED_ISSUE_DETECTOR_REPORT:I = 0x66

.field static final EVENT_RECEIVED_REGISTERED_BROADCAST_ACTION:I = 0x67

.field static final EVENT_SERVICE_CONNECTED:I = 0x64

.field static final EVENT_SERVICE_DISCONNECTED:I = 0x65

.field static final OBSERVER_PREFIX:Ljava/lang/String; = "observer:"


# instance fields
.field private final mActiveState:Lcom/android/internal/util/State;

.field mClientService:Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDelegationBroadcasts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelegationObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelegationReportIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;


# direct methods
.method public static synthetic $r8$lambda$ogr0boFTRlhk7nL560EtzTfSRwI(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->lambda$processReport$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActiveState(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mActiveState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDefaultState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelegationBroadcasts(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationBroadcasts:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelegationReportIds(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationReportIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnection(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mregisterDefaultDiagnosticsClient(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->registerDefaultDiagnosticsClient(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterDelegationBroadcast(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->registerDelegationBroadcast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterDelegationObserver(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->registerDelegationObserver(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterDelegationBroadcast(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->unregisterDelegationBroadcast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterDelegationObservers(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->unregisterDelegationObservers()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;Landroid/os/Looper;)V
    .registers 6

    .line 144
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    const-string p1, "WifiGuiderService"

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 133
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationReportIds:Ljava/util/Set;

    .line 134
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationObservers:Ljava/util/Set;

    .line 135
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationBroadcasts:Ljava/util/Map;

    .line 137
    new-instance p1, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$DefaultState;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$DefaultState;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDefaultState:Lcom/android/internal/util/State;

    .line 138
    new-instance p2, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mActiveState:Lcom/android/internal/util/State;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 141
    const-class v2, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    aput-object v2, v0, v1

    .line 142
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mGetWhatToString:Landroid/util/SparseArray;

    .line 167
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$1;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$2;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 147
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->addState(Lcom/android/internal/util/State;)V

    .line 148
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->setInitialState(Lcom/android/internal/util/State;)V

    const/16 p1, 0xa

    .line 151
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->setLogRecSize(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;I)V
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;I)V
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->removeMessages(I)V

    return-void
.end method

.method private synthetic lambda$processReport$0(I)V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationReportIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x66

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->sendMessage(III)V

    :cond_12
    return-void
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .registers 4

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " what="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Landroid/os/Message;->what:I

    .line 213
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->getWhatToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiGuiderService"

    .line 212
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerDefaultDiagnosticsClient(Z)V
    .registers 5

    if-eqz p1, :cond_b

    const/16 v0, 0x69

    .line 234
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->sendMessage(I)V

    const/4 v0, 0x2

    .line 235
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->sendMessage(I)V

    :cond_b
    const/4 v0, 0x3

    .line 237
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->removeMessages(I)V

    const-wide/16 v1, 0x1388

    .line 238
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->sendMessageDelayed(IIJ)V

    return-void
.end method

.method private registerDelegationBroadcast()V
    .registers 4

    .line 296
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationBroadcasts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 297
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationBroadcasts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 299
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_17

    .line 303
    :cond_27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_32
    return-void
.end method

.method private registerDelegationObserver(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    .line 271
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$6;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;Landroid/os/Handler;Ljava/lang/String;)V

    .line 278
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 282
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationObservers:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setupClientPackageMonitor()V
    .registers 16

    .line 243
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 244
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "package"

    .line 245
    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v7, "com.samsung.android.net.wifi.wifiguider"

    const/4 v8, 0x0

    .line 246
    invoke-virtual {v3, v7, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$4;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v4, 0x0

    .line 248
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 256
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 257
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v12, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v12, v7, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$5;

    invoke-direct {v10, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$5;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->getHandler()Landroid/os/Handler;

    move-result-object v14

    const/4 v13, 0x0

    .line 261
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterDelegationBroadcast()V
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationBroadcasts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 309
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationBroadcasts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_18
    return-void
.end method

.method private unregisterDelegationObservers()V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 287
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 288
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    goto :goto_e

    .line 291
    :cond_2a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mDelegationObservers:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_2f
    return-void
.end method


# virtual methods
.method attemptDiagnosis(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x4

    .line 156
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 4

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x66

    if-eq v0, v1, :cond_f

    goto :goto_24

    :cond_f
    const-string v0, " reportId:"

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_1a
    const-string v0, " "

    .line 202
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    :goto_24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mGetWhatToString:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    .line 194
    :cond_b
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public processReport(I)V
    .registers 4

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .registers 4

    .line 219
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->setupClientPackageMonitor()V

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->registerDefaultDiagnosticsClient(Z)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$3;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.net.wifi.wifiguider.DIAGNOSIS_RESULT_AVAILABLE"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
