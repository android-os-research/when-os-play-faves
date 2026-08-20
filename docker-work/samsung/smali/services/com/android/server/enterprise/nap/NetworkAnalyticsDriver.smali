.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
.super Ljava/lang/Object;
.source "NetworkAnalyticsDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field public static REATTEMPT_COMMAND_ACTIVATE:I = 0x1

.field public static REATTEMPT_COMMAND_DEACTIVATE:I = 0x2

.field public static REATTEMPT_COMMAND_FREQUENCY:I = 0x5

.field public static final TAG:Ljava/lang/String; = "NetworkAnalytics:NetworkAnalyticsDriver"

.field public static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# instance fields
.field public atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field public dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

.field public mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

.field public ncmVersion:Ljava/lang/String;

.field public stateOfFileDescriptor:Z

.field public stateOfIntervalSet:Z

.field public stateOfThread:Z

.field public syncObject:Ljava/lang/Object;

.field public test:Ljava/lang/String;

.field public versionMismatchCheck:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 32
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->syncObject:Ljava/lang/Object;

    .line 43
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfThread:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    .line 46
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    .line 48
    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    const-string/jumbo v0, "{ \"src\":\"10.10.12.12\", \"dst\":\"66.7.251.20\", \"sport\":\"5000\", \"dport\":\"443\", \"uid\":\"10197\", \"pid\":\"666\", \"bsent\":\"1400\", \"brecv\":\"4500\", \"hostname\":\"www.space.com\", \"protocol\":\"tcp\", \"hash\":\"a0627953\" }"

    .line 50
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->test:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 57
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 58
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public native activate(I)I
.end method

.method public beginDataRecording(I)V
    .registers 2

    return-void
.end method

.method public checkDataCollectionState()V
    .registers 1

    return-void
.end method

.method public native checkNcmVersion()I
.end method

.method public declared-synchronized checkNcmVersionMismatch()I
    .registers 1

    monitor-enter p0

    .line 104
    monitor-exit p0

    const/4 p0, -0x1

    return p0
.end method

.method public native closeDevice()I
.end method

.method public native deactivate()I
.end method

.method public endDataRecording()V
    .registers 1

    return-void
.end method

.method public native getNcmVersion()I
.end method

.method public jniSendingData(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized openCharDevice(I)I
    .registers 2

    monitor-enter p0

    .line 71
    monitor-exit p0

    const/4 p0, -0x1

    return p0
.end method

.method public native openDevice(I)I
.end method

.method public native readDevice()Ljava/lang/String;
.end method

.method public native setIntervalValue(I)I
.end method

.method public declared-synchronized setIntervalValueForFlow(I)I
    .registers 2

    monitor-enter p0

    .line 121
    monitor-exit p0

    const/4 p0, -0x1

    return p0
.end method

.method public final setStateOfCharDevice(Z)V
    .registers 2

    return-void
.end method

.method public final setStateOfThread(Z)V
    .registers 2

    return-void
.end method
