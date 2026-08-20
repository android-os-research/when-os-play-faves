.class Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "SemClientModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientModeStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;,
        Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;
    }
.end annotation


# static fields
.field static final CMD_24HOURS_PASSED_AFTER_BOOT:I = 0x6

.field static final CMD_AIRPLANE_MODE_CHANGED:I = 0xc

.field static final CMD_BOOT_COMPLETED:I = 0x1

.field static final CMD_CAPABILITIES_CHANGED:I = 0xb

.field static final CMD_DEFAULT_NETWORK_CHANGED:I = 0xa

.field static final CMD_DISABLE_RANDOM_MAC:I = 0x8

.field static final CMD_INITIALIZE:I = 0x0

.field static final CMD_INTERFACE_ADDED:I = 0x2

.field static final CMD_INTERFACE_REMOVED:I = 0x3

.field static final CMD_LAZY_BOOT_COMPLETED:I = 0xf

.field static final CMD_LINK_CONFIGURED_CHANGED:I = 0x5

.field static final CMD_NETWORK_STATE_CHANGED:I = 0x4

.field static final CMD_RECOVERY_INTERFACE_SETUP:I = 0xe

.field static final CMD_RECOVER_SCANNING_SERVICE_ENABLE:I = 0x9

.field static final CMD_SIM_STATE_CHANGED:I = 0x7

.field static final CMD_TELEPHONY_COUNTRY_CODE_CHANGED:I = 0x10

.field static final CMD_TELEPHONY_SERVICE_STATE_CHANGED:I = 0xd

.field static final RECOVER_SCANNING_SERVICE_STATE_TIME:I = 0x3a98
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final WIFI_MONITOR_EVENTS:[I

.field private final mIdleState:Lcom/android/internal/util/State;

.field private final mMessageClasses:[Ljava/lang/Class;

.field private final mStartedState:Lcom/android/internal/util/State;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final sGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIdleState(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->mIdleState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartedState(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->mStartedState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdetermineInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->determineInterfaceName()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitializeSoftApChipInfo(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->initializeSoftApChipInfo()V

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 6

    .line 910
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    const-string p1, "SemClientModeManager"

    .line 911
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    .line 901
    const-class p2, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->mMessageClasses:[Ljava/lang/Class;

    .line 904
    invoke-static {p1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sGetWhatToString:Landroid/util/SparseArray;

    .line 907
    new-instance p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->mIdleState:Lcom/android/internal/util/State;

    .line 908
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState-IA;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->mStartedState:Lcom/android/internal/util/State;

    const/4 p2, 0x5

    new-array p2, p2, [I

    .line 991
    fill-array-data p2, :array_48

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->WIFI_MONITOR_EVENTS:[I

    .line 912
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 915
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 916
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 919
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 920
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->setLogOnlyTransitions(Z)V

    const/16 p1, 0x64

    .line 921
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->setLogRecSize(I)V

    .line 924
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->registerMonitor()V

    .line 925
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->start()V

    return-void

    :array_48
    .array-data 4
        0x24064
        0x24065
        0x24066
        0x24067
        0x24068
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;I)V
    .registers 2

    .line 879
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;I)V
    .registers 2

    .line 879
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;I)V
    .registers 2

    .line 879
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->removeMessages(I)V

    return-void
.end method

.method private determineInterfaceName()I
    .registers 6

    .line 1210
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->probeStaIfaceNames()Ljava/util/List;

    move-result-object v0

    .line 1211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1212
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_e

    :cond_21
    const-string v3, "wlan"

    .line 1215
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1216
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_e

    .line 1220
    :cond_36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmClientModes(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1221
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 1222
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_44

    .line 1226
    :cond_63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private initializeSoftApChipInfo()V
    .registers 4

    .line 1256
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1257
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->isReady()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1258
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1279
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1f
    return-void
.end method

.method private registerMonitor()V
    .registers 7

    .line 1000
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->WIFI_MONITOR_EVENTS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget v3, v0, v2

    .line 1001
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->registerHandler(ILandroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1285
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimaryInterface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmPrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmClientModes(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClientModes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/util/StateMachine;

    if-eqz v1, :cond_68

    .line 1291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_6d

    :cond_68
    const-string v0, "Not a state machine object"

    .line 1293
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    :goto_6d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2b

    :cond_71
    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 5

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    if-lez v1, :cond_19

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    const/16 v2, 0x3f2

    if-eq v1, v2, :cond_19

    const-string v1, " uid="

    .line 932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 934
    :cond_19
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_65

    const/4 v2, 0x5

    if-eq v1, v2, :cond_65

    const/16 v2, 0xa

    if-eq v1, v2, :cond_65

    const/16 v2, 0xb

    if-eq v1, v2, :cond_4d

    const/16 p0, 0xd

    if-eq v1, p0, :cond_65

    const/16 p0, 0x10

    if-eq v1, p0, :cond_65

    packed-switch v1, :pswitch_data_7c

    const-string p0, " "

    .line 953
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    iget p0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 949
    :cond_4d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_77

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 946
    :cond_65
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_6b
    :pswitch_6b
    const-string p0, " iface="

    .line 939
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    :cond_77
    :goto_77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_7c
    .packed-switch 0x24064
        :pswitch_6b
        :pswitch_6b
    .end packed-switch
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3

    .line 964
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sGetWhatToString:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    packed-switch p1, :pswitch_data_30

    .line 985
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "what:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2e

    :pswitch_20
    const-string p0, "SUP_SERVICE_DEATH_EVENT"

    goto :goto_2e

    :pswitch_23
    const-string p0, "SUP_SERVICE_REGISTRATION_EVENT"

    goto :goto_2e

    :pswitch_26
    const-string p0, "SUP_TERMINATING_EVENT"

    goto :goto_2e

    :pswitch_29
    const-string p0, "IFACE_REMOVAL_EVENT"

    goto :goto_2e

    :pswitch_2c
    const-string p0, "IFACE_CREATION_EVENT"

    :goto_2e
    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x24064
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method setScanningEnable(ZLjava/lang/String;)V
    .registers 5

    .line 1230
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmScanningEnable(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 1231
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmScanningEnable(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_1c

    const/16 v0, 0x9

    .line 1233
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->removeMessages(I)V

    .line 1236
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiScanner;->setScanningEnabled(Z)V

    .line 1237
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->allowAutojoinGlobal(Z)V

    .line 1238
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    const/16 v0, 0x12

    const-string v1, "SemWifiManager.setAllowWifiScan"

    .line 1239
    invoke-static {v1, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForChangeState(Ljava/lang/String;ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1238
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->report(ILandroid/os/Bundle;)V

    return-void
.end method

.method startScan()Z
    .registers 4

    .line 1244
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmScanningEnable(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1245
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "SemClientModeManager"

    const-string v1, "startScan sendMessageDelayed after 15seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->setScanningEnabled(Z)V

    .line 1247
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->allowAutojoinGlobal(Z)V

    const/16 v0, 0x9

    .line 1248
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->removeMessages(I)V

    .line 1250
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1249
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1252
    :cond_40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->startScan()Z

    move-result p0

    return p0
.end method
