.class public Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;
.super Ljava/lang/Thread;
.source "SDPLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SDPLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logger"
.end annotation


# static fields
.field public static final MAX_LINES:I = 0x12c

.field public static final cLock:Ljava/lang/Object;

.field public static mLogQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSavQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mState:I

.field public static final qLock:Ljava/lang/Object;

.field public static sFilePath:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$madd(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->add(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetLock()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->getLock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetStateLocked()I
    .registers 1

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->getStateLocked()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smsetStateLocked(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->setStateLocked(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 58
    sput v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->sFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;-><init>()V

    return-void
.end method

.method public static getLock()Ljava/lang/Object;
    .registers 1

    .line 62
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getStateLocked()I
    .registers 1

    .line 66
    sget v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    return v0
.end method

.method public static preventBOFLocked(Ljava/util/Queue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_19

    const-string v0, "Log buffer reached the limit! Clearing the buffer..."

    .line 75
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->-$$Nest$smLogE(Ljava/lang/String;)V

    .line 76
    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    const-string v0, "ACLog: Unfortunately buffer cleared to prevent overflow!"

    .line 80
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method public static setStateLocked(I)V
    .registers 1

    .line 70
    sput p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)V
    .registers 3

    .line 86
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    monitor-enter p0

    .line 87
    :try_start_3
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->preventBOFLocked(Ljava/util/Queue;)V

    .line 88
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public run()V
    .registers 3

    :goto_0
    const-string p0, "Start accumulating..."

    .line 95
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->-$$Nest$smLogD(Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    .line 97
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_61

    .line 103
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    monitor-enter p0

    .line 104
    :try_start_d
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    .line 106
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_5e

    const-string v0, "Start saving..."

    .line 108
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->-$$Nest$smLogD(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 110
    :try_start_22
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->setStateLocked(I)V

    .line 111
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_5b

    .line 115
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->saveFile(Ljava/util/Queue;)V

    .line 116
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    const/4 v1, 0x0

    .line 117
    sput-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    .line 119
    monitor-enter v0

    .line 120
    :try_start_34
    monitor-enter p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_58

    .line 121
    :try_start_35
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "Back to accumulate!"

    .line 122
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogger;->-$$Nest$smLogD(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 123
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->setStateLocked(I)V

    .line 124
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_55

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_58

    goto :goto_0

    :cond_49
    :try_start_49
    const-string v1, "Finished!"

    .line 126
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogger;->-$$Nest$smLogD(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 127
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->setStateLocked(I)V

    .line 129
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_55

    .line 130
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_58

    return-void

    :catchall_55
    move-exception v1

    .line 129
    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw v1

    :catchall_58
    move-exception p0

    .line 130
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_58

    throw p0

    :catchall_5b
    move-exception p0

    .line 111
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0

    :catchall_5e
    move-exception v0

    .line 106
    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0

    :catch_61
    const-string p0, "Logger interrupted!"

    .line 99
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->-$$Nest$smLogE(Ljava/lang/String;)V

    return-void
.end method
