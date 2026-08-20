.class public final Lcom/samsung/android/server/wifi/SemWifiTwtControl;
.super Ljava/lang/Object;
.source "SemWifiTwtControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;,
        Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;
    }
.end annotation


# static fields
.field private static final CONNECTION_STATE_CHANGED:I = 0x6

.field private static final CREATE_TWT_SESSION:I = 0x1

.field private static final DELAY_FOR_COMMAND_RETRY_MS:I = 0x2bc

.field private static final DELAY_FOR_RECOVERY_MS:I = 0x64

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x1f4

.field private static final DUMP_ARG:Ljava/lang/String; = "TWT Control history:"

.field private static final FLOW_TYPE_ANNOUNCED:I = 0x0

.field private static final FLOW_TYPE_NON_ANNOUNCED:I = 0x1

.field private static final MIN_LATENCY_TOLERANCE_MS:I = 0x2710

.field private static final NEGOTICATION_TYPE_BROADCAST:I = 0x1

.field private static final NEGOTICATION_TYPE_INDIVIDUAL:I = 0x0

.field private static final NOT_ACCEPTABLE_RESPONSE:I = 0x1

.field private static final NOT_SUPPORT_TWT_INFORMATION:I = 0x8

.field private static final NOT_UPDATE_PARAMETER:I = 0x4

.field private static final NO_RESPONSE_FROM_PEER:I = 0x10

.field private static final REJECT_PARAMETER_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemWifiTwtControl"

.field private static final TEARDOWN_TWT_SESSION:I = 0x2

.field private static final TRIGGER_TYPE_NON_TRIGGER_ENABLED:I = 0x0

.field private static final TRIGGER_TYPE_TRIGGER_ENABLED:I = 0x1

.field private static final TWT_ACTIVATED:I = 0x1

.field private static final TWT_CMD_FAILURE_BUSY:I = -0xa

.field private static final TWT_CMD_FAILURE_INVALID_ARGS:I = -0x5

.field private static final TWT_CMD_FAILURE_NOT_AVAILABLE:I = -0x4

.field private static final TWT_CMD_FAILURE_NOT_SUPPORTED:I = -0x3

.field private static final TWT_CMD_FAILURE_OTHERS:I = -0x1

.field private static final TWT_CMD_FAILURE_UNINITIALIZED:I = -0x2

.field private static final TWT_DRIVER_COMMAND_TIMEOUT:I = 0x5

.field private static final TWT_LATENCY_TOLERANCE:I = 0x14

.field private static final TWT_NEGOTIATION_RESULT_EVENT:I = 0x3

.field private static final TWT_NEGO_RESULT_ACCEPTED:I = 0x0

.field private static final TWT_NEGO_RESULT_FAILED_DUE_TO_OTHER_REASONS:I = 0xff

.field private static final TWT_NEGO_RESULT_IE_VALIDATION_FAILED:I = 0x3

.field private static final TWT_NEGO_RESULT_NOT_ACCEPTABLE_SUGGESTION:I = 0x4

.field private static final TWT_NEGO_RESULT_NO_RESPONSE_FROM_PEER:I = 0x2

.field private static final TWT_NEGO_RESULT_REJECTED:I = 0x1

.field private static final TWT_NEGO_RESULT_TWT_INFORMATION_DISABLED_AP:I = 0x5

.field private static final TWT_NOTIFY_CLEAR_TWT_REQUIRED_BIT:I = 0x3

.field private static final TWT_NOTIFY_DONGLE_READY:I = 0x1

.field private static final TWT_NOTIFY_SET_TWT_REQUIRED_BIT:I = 0x2

.field private static final TWT_NO_NEGOTIATION:I = 0x0

.field private static final TWT_RATE_TOLERANCE:I = 0x14

.field private static final TWT_SETUP_CMD_TIMEOUT_MS:I = 0x44c

.field private static final TWT_SUSPENDED:I = 0x2

.field private static final TWT_TEARDOWN_CMD_TIMEOUT_MS:I = 0x898

.field private static final TWT_TEARDOWN_EVENT:I = 0x4

.field private static final TWT_TORNDOWN_BY_HOST:I = 0x0

.field private static final TWT_TORNDOWN_BY_PEER:I = 0x1

.field private static final TWT_TORNDOWN_DUE_TO_BT_COEX:I = 0x5

.field private static final TWT_TORNDOWN_DUE_TO_MULTI_CHANNEL_CONNECTION:I = 0x3

.field private static final TWT_TORNDOWN_DUE_TO_MULTI_CONNECTION_IN_SAME_CHANNEL:I = 0x2

.field private static final TWT_TORNDOWN_DUE_TO_OTHER_REASONS:I = 0xff

.field private static final TWT_TORNDOWN_DUE_TO_ROAM_CSA:I = 0x4

.field private static final TWT_TORNDOWN_FAILED_DUE_TO_NO_RESPONSE_FROM_PEER:I = 0x6


# instance fields
.field private errorDetectionCntForCmdTimeout:I

.field private errorDetectionCntForTwtSetup:I

.field private errorDetectionCntForTwtTeardown:I

.field private mApAbnormality:I

.field private mFirmwareAbnormality:I

.field private mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNegotiatedDuration:I

.field private mNegotiatedInterval:I

.field private mNegotiatedSessionId:I

.field private mNegotiationStatus:I

.field mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

.field private final mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

.field private final mTwtSetupHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingRenegotiation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWaitingSetupResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWaitingTeardownResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private setupRetryCnt:I

.field private tearDownRetryCnt:I


# direct methods
.method static bridge synthetic -$$Nest$fgeterrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForCmdTimeout:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeterrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtTeardown:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmApAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedSetupAfterTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingRenegotiation(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingRenegotiation:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingSetupResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingTeardownResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputerrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForCmdTimeout:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputerrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtTeardown:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmApAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFirmwareAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mFirmwareAbnormality:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNegotiatedDuration(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedDuration:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNegotiatedInterval(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedInterval:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNegotiatedSessionId(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->handleNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetupFailures(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->handleSetupFailures(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiTwtControl;ILcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->handleTeardownFailures(ILcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->initializeVariables()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;IIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->reportNegotiationResult(IIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->reportTeardownResult(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;III)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupTwt(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mteardownAllTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mteardownTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownTwt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .registers 5

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingSetupResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingTeardownResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingRenegotiation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedDuration:I

    .line 110
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedInterval:I

    .line 111
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    .line 112
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    .line 114
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 125
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 126
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    return-void
.end method

.method private doesApNotResponseToTwtRequest()Z
    .registers 1

    .line 392
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private doesApSuggestNotAcceptableSession()Z
    .registers 2

    .line 388
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private handleNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V
    .registers 8

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiation result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 599
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3a

    .line 600
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtSetup:I

    goto :goto_62

    .line 602
    :cond_3a
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtSetup:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtSetup:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_62

    const-string v0, "Stop retry due to burst failure"

    .line 603
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 604
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtSetup:I

    .line 605
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->querySessionExistence(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 606
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    .line 608
    :cond_54
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    if-ne p1, v1, :cond_5e

    .line 609
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 611
    :cond_5e
    invoke-direct {p0, v3, p1, v3, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->reportNegotiationResult(IIII)V

    return-void

    :cond_62
    :goto_62
    if-eqz v0, :cond_86

    const/4 v4, 0x4

    if-eq v0, v4, :cond_7b

    const/4 v3, 0x5

    if-eq v0, v3, :cond_71

    const/4 p1, 0x0

    const/16 v0, 0x2bc

    .line 644
    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    goto :goto_ae

    .line 636
    :cond_71
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 637
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    goto :goto_ae

    .line 631
    :cond_7b
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 632
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    invoke-direct {p0, p1, v4, v3, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->reportNegotiationResult(IIII)V

    goto :goto_ae

    .line 618
    :cond_86
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    .line 619
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    .line 620
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedDuration:I

    .line 621
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedInterval:I

    .line 622
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->isAgreementAcceptable(Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 623
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 624
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    goto :goto_ae

    .line 626
    :cond_a5
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedDuration:I

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedInterval:I

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->reportNegotiationResult(IIII)V

    :goto_ae
    return-void
.end method

.method private handleSetupFailures(I)V
    .registers 7

    .line 657
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-le v0, v3, :cond_11

    .line 658
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 659
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    return-void

    :cond_11
    const/16 v0, -0xa

    const/16 v3, 0x2bc

    const/4 v4, 0x0

    if-eq p1, v0, :cond_77

    const/4 v0, -0x5

    if-eq p1, v0, :cond_6b

    const/4 v0, -0x4

    if-eq p1, v0, :cond_30

    const/4 v0, -0x2

    if-eq p1, v0, :cond_25

    const/4 v0, -0x1

    if-eq p1, v0, :cond_77

    goto :goto_7a

    .line 665
    :cond_25
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 666
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 667
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    goto :goto_7a

    .line 670
    :cond_30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->queryTwtStatus(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    move-result-object p1

    .line 671
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->status:I

    if-eqz v0, :cond_68

    .line 672
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    if-lez v0, :cond_5f

    .line 673
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 674
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 675
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    if-ne v0, v1, :cond_5a

    const-string p1, "Unexpected setup failure. Teardown all session for recovery."

    .line 676
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 677
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    goto :goto_7a

    :cond_5a
    const/4 v0, 0x2

    .line 679
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    goto :goto_7a

    :cond_5f
    const-string p1, "Unexpected setup id. Teardown all session."

    .line 682
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    goto :goto_7a

    .line 686
    :cond_68
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    goto :goto_7a

    .line 690
    :cond_6b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    if-gtz v0, :cond_73

    .line 691
    iput v1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 693
    :cond_73
    invoke-direct {p0, v1, v4, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    goto :goto_7a

    .line 697
    :cond_77
    invoke-direct {p0, v1, v4, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    :goto_7a
    return-void
.end method

.method private handleTeardownFailures(ILcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V
    .registers 6

    .line 706
    iget-object v0, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->querySessionExistence(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 707
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->tearDownRetryCnt:I

    .line 708
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 709
    iget-object v0, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    iput-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 710
    iget p2, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    iput p2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 711
    iput v1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    const/4 p2, 0x4

    .line 712
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    goto :goto_54

    :cond_1f
    const/16 v0, -0xa

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3e

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected teardown failure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Teardown all session for recovery."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    move v1, v2

    :cond_3e
    if-nez v1, :cond_51

    .line 728
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->tearDownRetryCnt:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->tearDownRetryCnt:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_4a

    goto :goto_51

    :cond_4a
    const/4 p1, 0x2

    const/16 v0, 0x2bc

    .line 731
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    goto :goto_54

    .line 729
    :cond_51
    :goto_51
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    :goto_54
    return-void
.end method

.method private initializeVariables()V
    .registers 4

    .line 420
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingSetupResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingTeardownResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 422
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingRenegotiation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 425
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedDuration:I

    .line 426
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedInterval:I

    .line 427
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    .line 428
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    .line 429
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 430
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->tearDownRetryCnt:I

    .line 431
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtSetup:I

    .line 432
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtTeardown:I

    .line 433
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForCmdTimeout:I

    .line 435
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    const-string v2, ""

    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 436
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 437
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 438
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 440
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mFirmwareAbnormality:I

    const/4 v0, 0x2

    .line 441
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    return-void
.end method

.method private isAgreementAcceptable(Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)Z
    .registers 10

    .line 569
    iget v0, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    const/4 v1, 0x0

    if-lez v0, :cond_67

    iget v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    if-gtz v2, :cond_a

    goto :goto_67

    .line 574
    :cond_a
    iget v3, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    mul-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x50

    div-int/lit8 v4, v4, 0x64

    .line 575
    iget v5, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    mul-int/lit8 v6, v5, 0x64

    div-int/2addr v6, v0

    sub-int/2addr v2, v3

    sub-int/2addr v0, v5

    sub-int v3, v0, v2

    if-lez v3, :cond_24

    const/16 v5, 0x2710

    if-ge v3, v5, :cond_24

    add-int/2addr v2, v5

    goto :goto_28

    :cond_24
    mul-int/lit8 v2, v2, 0x78

    .line 582
    div-int/lit8 v2, v2, 0x64

    :goto_28
    if-lt v6, v4, :cond_2f

    if-le v0, v2, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p0, 0x1

    return p0

    .line 586
    :cond_2f
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requested, but "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " received"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    return v1

    .line 570
    :cond_67
    :goto_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interval is zero: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    return v1
.end method

.method private isTwtInformationFrameNotSupported()Z
    .registers 1

    .line 384
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private logTwtControlHistory(Ljava/lang/String;)V
    .registers 6

    const-string v0, "SemWifiTwtControl"

    .line 737
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    monitor-enter v1

    .line 742
    :try_start_1e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 743
    :goto_32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x1f4

    if-le p1, v0, :cond_42

    .line 744
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_32

    .line 746
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

.method private queryTwtStatus(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;
    .registers 7

    const-string v0, ""

    .line 495
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 496
    iput-object p1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 498
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_61

    :try_start_12
    const-string v3, "\n"

    .line 501
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "\r"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-lez p2, :cond_27

    goto :goto_2d

    .line 503
    :cond_27
    aget-object p2, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_2d
    iput p2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    const/4 p2, 0x1

    .line 504
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->status:I

    const/4 p2, 0x2

    .line 505
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    const/4 p2, 0x3

    .line 506
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4a} :catch_4b

    goto :goto_63

    :catch_4b
    move-exception p1

    .line 508
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    goto :goto_63

    .line 511
    :cond_61
    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->status:I

    :goto_63
    return-object v1
.end method

.method private removeMessages(I)V
    .registers 2

    .line 454
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->removeMessages(I)V

    return-void
.end method

.method private reportNegotiationResult(IIII)V
    .registers 5

    .line 410
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object p0

    .line 411
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->onSessionCreationResult(IIII)V

    return-void
.end method

.method private reportTeardownResult(II)V
    .registers 3

    .line 415
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object p0

    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->onSessionTeardownResult(II)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .registers 3

    .line 445
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendMessageDelayed(ILjava/lang/Object;I)V
    .registers 4

    .line 449
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    .line 450
    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    .line 449
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendTimeoutEventForRecovery(Ljava/lang/String;II)V
    .registers 5

    .line 458
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 459
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 460
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    const/4 p1, 0x5

    .line 461
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    return-void
.end method

.method private setupTwt(Ljava/lang/String;III)I
    .registers 7

    const/16 v0, 0x44c

    .line 476
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendTimeoutEventForRecovery(Ljava/lang/String;II)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 482
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setupTwt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private teardownAllTwt()V
    .registers 4

    .line 650
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 651
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 652
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    const/4 v1, 0x2

    const/16 v2, 0x64

    .line 653
    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    return-void
.end method

.method private teardownTwt(Ljava/lang/String;I)I
    .registers 5

    const/16 v0, 0x898

    .line 488
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendTimeoutEventForRecovery(Ljava/lang/String;II)V

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 491
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->teardownTwt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public changeSessionParameters(Ljava/lang/String;III)V
    .registers 6

    .line 316
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    .line 317
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->createSession(Ljava/lang/String;III)V

    goto :goto_13

    .line 319
    :cond_a
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingRenegotiation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownSession(Ljava/lang/String;I)V

    :goto_13
    return-void
.end method

.method public connectionStateChanged()V
    .registers 2

    .line 288
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    const/4 v0, 0x6

    .line 289
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 288
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public createSession(Ljava/lang/String;III)V
    .registers 6

    .line 300
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 301
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 302
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 303
    iput p3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 304
    iput p4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    const/4 p1, 0x1

    .line 305
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 751
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 752
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 753
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "TWT Control history:"

    .line 754
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 756
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 758
    :cond_24
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 759
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p0

    .line 753
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public getAbnormalityOfAP()I
    .registers 1

    .line 406
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    return p0
.end method

.method public hasAbnormalityInFirmware()Z
    .registers 1

    .line 402
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mFirmwareAbnormality:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasTwtIotIssue()Z
    .registers 2

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->isTwtInformationFrameNotSupported()Z

    move-result v0

    if-nez v0, :cond_15

    .line 397
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->doesApSuggestNotAcceptableSession()Z

    move-result v0

    if-nez v0, :cond_15

    .line 398
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->doesApNotResponseToTwtRequest()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public onChannelSwitchCompleted(Ljava/lang/String;I)V
    .registers 4

    .line 559
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Operating channel changed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 560
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    if-eqz p1, :cond_25

    const/16 p1, 0x1388

    if-le p2, p1, :cond_22

    .line 562
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 564
    :cond_22
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    :cond_25
    return-void
.end method

.method public onNegotiationCompleted(Ljava/lang/String;BBBBBBJII)V
    .registers 12

    const/4 p3, 0x5

    .line 519
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->removeMessages(I)V

    const/4 p3, 0x0

    .line 521
    iput p3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 522
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 523
    iput-object p1, p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    and-int/lit16 p1, p2, 0xff

    .line 524
    iput p1, p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    and-int/lit16 p1, p4, 0xff

    .line 525
    iput p1, p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 526
    iput p10, p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 527
    iput p11, p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    const/4 p1, 0x3

    .line 528
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onTwtNotificationForReady(Ljava/lang/String;B)V
    .registers 4

    .line 543
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification from dongle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    return-void
.end method

.method public onTwtTorndown(Ljava/lang/String;BB)V
    .registers 5

    const/4 v0, 0x5

    .line 532
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->removeMessages(I)V

    const/4 v0, 0x0

    .line 534
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->tearDownRetryCnt:I

    .line 535
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 536
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    and-int/lit16 p1, p2, 0xff

    .line 537
    iput p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    and-int/lit16 p1, p3, 0xff

    .line 538
    iput p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    const/4 p1, 0x4

    .line 539
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public querySessionExistence(Ljava/lang/String;)Z
    .registers 5

    const-string v0, ""

    .line 366
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3e

    :try_start_b
    const-string v1, "\n"

    .line 369
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\r"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 371
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_28

    if-lez p0, :cond_43

    const/4 p0, 0x1

    move v2, p0

    goto :goto_43

    :catch_28
    move-exception p1

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    goto :goto_43

    :cond_3e
    const-string p1, "Session existence query failed"

    .line 378
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    :cond_43
    :goto_43
    return v2
.end method

.method public queryTwtCapabilities(Ljava/lang/String;)I
    .registers 5

    .line 346
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 347
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_32

    const/4 v1, 0x2

    .line 349
    :try_start_12
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_32

    :catch_1d
    move-exception p1

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    :cond_32
    :goto_32
    return v0
.end method

.method public teardownSession(Ljava/lang/String;I)V
    .registers 4

    .line 330
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 331
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 332
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    const/4 p1, 0x2

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
