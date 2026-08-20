.class public final Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;
.super Ljava/lang/Object;
.source "SemWifiScheduledPmControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;,
        Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;
    }
.end annotation


# static fields
.field private static final CONNECTION_STATE_CHANGED:I = 0x5

.field private static final CREATE_SCHEDULED_PM_SESSION:I = 0x1

.field private static final DELAY_FOR_COMMAND_RETRY_MS:I = 0x2bc

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x1f4

.field private static final DUMP_ARG:Ljava/lang/String; = "ScheduledPmControl history:"

.field private static final FAILURE_DUE_TO_BUSY:I = -0xa

.field private static final FAILURE_DUE_TO_FIRMWARE_UNINITIALIZED:I = -0x2

.field private static final FAILURE_DUE_TO_INVALID_ARGS:I = -0x5

.field private static final FAILURE_DUE_TO_NOT_AVAILABLE:I = -0x4

.field private static final FAILURE_DUE_TO_NOT_SUPPORTED:I = -0x3

.field private static final FAILURE_DUE_TO_OTHER_REASON:I = -0x1

.field private static final SCHEDULED_PM_CREATION_EVENT:I = 0x3

.field private static final SCHEDULED_PM_TEARDOWN_EVENT:I = 0x4

.field private static final SESSION_ACTIVATED:I = 0x1

.field private static final SESSION_CREATION_FAILED_DUE_TO_OTHER_REASONS:I = 0xff

.field private static final SESSION_CREATION_SUCCESS:I = 0x0

.field private static final SESSION_NOT_EXISTED:I = 0x0

.field private static final SESSION_SUSPENDED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemWifiScheduledPmControl"

.field private static final TEARDOWN_SCHEDULED_PM_SESSION:I = 0x2

.field private static final TORNDOWN_BY_HOST:I = 0x0

.field private static final TORNDOWN_DUE_TO_BT_COEX:I = 0x5

.field private static final TORNDOWN_DUE_TO_MULTI_CHANNEL_CONNECTION:I = 0x3

.field private static final TORNDOWN_DUE_TO_MULTI_CONNECTION_IN_SAME_CHANNEL:I = 0x2

.field private static final TORNDOWN_DUE_TO_OTHER_REASONS:I = 0xff

.field private static final TORNDOWN_DUE_TO_ROAM_CSA:I = 0x4


# instance fields
.field private final mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

.field private final mControlHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCreatedDuration:I

.field private mCreatedInterval:I

.field private mCreatedSessionId:I

.field mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

.field private mSessionStatus:I

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private setupRetryCnt:I

.field private tearDownRetryCnt:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedInterval:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedSessionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mSessionStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedDuration:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedInterval:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedSessionId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mSessionStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsetupRetryCnt(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtearDownRetryCnt(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetupFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->handleSetupFailures(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->handleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->initializeVariables()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->logControlHistory(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;IIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->reportNegotiationResult(IIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->reportTeardownResult(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupScheduledPm(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;II)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupScheduledPm(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mteardownScheduledPm(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->teardownScheduledPm(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedDuration:I

    .line 74
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedInterval:I

    .line 75
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedSessionId:I

    .line 76
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mSessionStatus:I

    .line 78
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 81
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 82
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    return-void
.end method

.method private handleSetupFailures(I)V
    .registers 6

    .line 198
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-le v0, v3, :cond_11

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->teardownSessionIfExist()V

    .line 200
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    return-void

    :cond_11
    const/16 v0, -0xa

    if-eq p1, v0, :cond_2a

    const/4 v0, -0x5

    if-eq p1, v0, :cond_24

    const/4 v0, -0x4

    if-eq p1, v0, :cond_24

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2a

    .line 217
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    goto :goto_30

    .line 207
    :cond_24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->teardownSessionIfExist()V

    .line 208
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    goto :goto_30

    :cond_2a
    const/4 p1, 0x0

    const/16 v0, 0x2bc

    .line 213
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    :goto_30
    return-void
.end method

.method private handleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;)V
    .registers 6

    .line 223
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->queryScheduledPmStatus(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    move-result-object v0

    .line 224
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 225
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    .line 226
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(II)V

    goto :goto_2a

    .line 228
    :cond_12
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_24

    .line 229
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    const/16 p1, 0xff

    .line 230
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(II)V

    goto :goto_2a

    :cond_24
    const/4 v0, 0x2

    const/16 v1, 0x2bc

    .line 232
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    :goto_2a
    return-void
.end method

.method private initializeVariables()V
    .registers 3

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedDuration:I

    .line 176
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedInterval:I

    .line 177
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedSessionId:I

    .line 178
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mSessionStatus:I

    .line 180
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    .line 181
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    .line 183
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 184
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    .line 185
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    .line 186
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I

    return-void
.end method

.method private logControlHistory(Ljava/lang/String;)V
    .registers 6

    const-string v0, "SemWifiScheduledPmControl"

    .line 367
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

    monitor-enter v1

    .line 372
    :try_start_1e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 373
    :goto_32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x1f4

    if-le p1, v0, :cond_42

    .line 374
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_32

    .line 376
    :cond_42
    monitor-exit v1

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1e .. :try_end_46} :catchall_44

    throw p0
.end method

.method private queryScheduledPmStatus(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;
    .registers 5

    const-string v0, ""

    .line 273
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;-><init>()V

    .line 274
    iput-object p1, v1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 276
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_58

    const/4 p1, 0x0

    :try_start_12
    const-string v2, "\n"

    .line 279
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\r"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 281
    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    const/4 v0, 0x1

    .line 282
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    const/4 v0, 0x2

    .line 283
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_3e} :catch_3f

    goto :goto_58

    :catch_3f
    move-exception p0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiScheduledPmControl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput p1, v1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    :cond_58
    :goto_58
    return-object v1
.end method

.method private removeMessages(I)V
    .registers 2

    .line 252
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->removeMessages(I)V

    return-void
.end method

.method private reportNegotiationResult(IIII)V
    .registers 5

    .line 357
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object p0

    .line 358
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->onSessionCreationResult(IIII)V

    return-void
.end method

.method private reportTeardownResult(II)V
    .registers 3

    .line 362
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object p0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->onSessionTeardownResult(II)V

    return-void
.end method

.method private sendMessage(II)V
    .registers 4

    .line 239
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .registers 3

    .line 243
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendMessageDelayed(ILjava/lang/Object;I)V
    .registers 4

    .line 247
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    .line 248
    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    .line 247
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setupScheduledPm(Ljava/lang/String;II)I
    .registers 6

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x800

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 265
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private teardownScheduledPm(Ljava/lang/String;)I
    .registers 2

    .line 269
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->teardownScheduledPm(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private teardownSessionIfExist()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 191
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->queryScheduledPmStatus(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    move-result-object v0

    .line 192
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    if-lez v1, :cond_10

    const/4 v1, 0x2

    .line 193
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(ILjava/lang/Object;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public changeSessionParameters(Ljava/lang/String;III)V
    .registers 5

    .line 331
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->createSession(Ljava/lang/String;III)V

    return-void
.end method

.method public connectionStateChanged()V
    .registers 2

    .line 302
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    const/4 v0, 0x5

    .line 303
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 302
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public createSession(Ljava/lang/String;III)V
    .registers 6

    .line 314
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;-><init>()V

    .line 315
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 316
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    .line 317
    iput p3, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    .line 318
    iput p4, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I

    const/4 p1, 0x1

    .line 319
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 382
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 383
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "ScheduledPmControl history:"

    .line 384
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 388
    :cond_24
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 389
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p0

    .line 383
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public onScheduledPmTorndown(Ljava/lang/String;I)V
    .registers 3

    const/4 p1, 0x4

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(II)V

    return-void
.end method

.method public querySessionExistence(Ljava/lang/String;)Z
    .registers 2

    .line 352
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->queryScheduledPmStatus(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    move-result-object p0

    .line 353
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public teardownSession(Ljava/lang/String;I)V
    .registers 4

    .line 340
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;-><init>()V

    .line 341
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 342
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    const/4 p1, 0x2

    .line 343
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
