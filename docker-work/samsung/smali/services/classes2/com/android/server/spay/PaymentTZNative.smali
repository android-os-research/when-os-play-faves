.class Lcom/android/server/spay/PaymentTZNative;
.super Ljava/lang/Object;
.source "PaymentTZNative.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "PaymentManagerService"


# instance fields
.field public mIsLoaded:Z

.field public mMOPTZNativePtr_:J

.field public mProcessName:Ljava/lang/String;

.field public mRecvBufSize:I

.field public mRootName:Ljava/lang/String;

.field public mSendBufSize:I

.field public mTAId:I

.field public mTATechnology:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 17
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentTZNative constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1d
    iput p1, p0, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 32
    iput p5, p0, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    .line 33
    iput p6, p0, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    .line 34
    iput-object p2, p0, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    return-void
.end method

.method private native nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z
.end method


# virtual methods
.method public loadTA(Landroid/content/Context;IJJ)Z
    .registers 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    .line 41
    iget-wide v5, v0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v12, 0x0

    cmp-long v5, v5, v12

    const/4 v14, 0x1

    if-eqz v5, :cond_17

    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentTZNative::loadTA called for TA that is already loaded. Call Ignored"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_17
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    const/4 v15, 0x0

    if-gtz v7, :cond_7b

    cmp-long v5, v3, v5

    if-lez v5, :cond_24

    goto :goto_7b

    :cond_24
    long-to-int v5, v1

    long-to-int v6, v3

    .line 51
    iget v7, v0, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    iget v8, v0, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    iget v9, v0, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    iget-object v10, v0, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v16, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/spay/PaymentTZNative;->nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    cmp-long v1, v1, v12

    if-nez v1, :cond_55

    const-string v0, "PaymentManagerService"

    const-string v1, "Error: nativeCreateTLCommunicationContext failed"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    .line 58
    :cond_55
    const-class v1, Lcom/android/server/spay/PaymentTZNative;

    monitor-enter v1

    .line 59
    :try_start_58
    iput-boolean v14, v0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 60
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_78

    .line 61
    sget-boolean v1, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v1, :cond_77

    const-string v1, "PaymentManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentTZNative::loadTA: mMOPTZNativePtr_ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return v14

    :catchall_78
    move-exception v0

    .line 60
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    :cond_7b
    :goto_7b
    const-string v0, "PaymentManagerService"

    const-string v1, "SpayFw_loadTA: cannot get ta offset or size"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v15
.end method

.method public native nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .registers 6

    .line 80
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    const-string v1, "PaymentManagerService"

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentTZNative::processTACommand: request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mMOPTZNativePtr_ = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_24
    new-instance v0, Landroid/spay/TACommandResponse;

    invoke-direct {v0}, Landroid/spay/TACommandResponse;-><init>()V

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/android/server/spay/PaymentTZNative;->nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z

    move-result p0

    if-nez p0, :cond_36

    const-string p0, "PaymentTZNative::processTACommand: Error: nativeProcessTACommand returned failure"

    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_36
    return-object v0
.end method

.method public unloadTA()V
    .registers 6

    .line 66
    const-class v0, Lcom/android/server/spay/PaymentTZNative;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    iget-boolean v1, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    if-nez v1, :cond_10

    goto :goto_25

    :cond_10
    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 72
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3f

    .line 74
    invoke-virtual {p0}, Lcom/android/server/spay/PaymentTZNative;->nativeDestroyTLCommunicationContext()V

    .line 75
    iput-wide v3, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 76
    sget-boolean p0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz p0, :cond_24

    const-string p0, "PaymentManagerService"

    const-string v0, "PaymentTZNative::unloadTA called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void

    :cond_25
    :goto_25
    :try_start_25
    const-string v1, "PaymentManagerService"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentTZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    .line 72
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_3f

    throw p0
.end method
