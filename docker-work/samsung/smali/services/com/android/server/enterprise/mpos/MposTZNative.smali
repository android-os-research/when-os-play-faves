.class Lcom/android/server/enterprise/mpos/MposTZNative;
.super Ljava/lang/Object;
.source "MposTZNative.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "MposTZNative"


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
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MposTZNative constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MposTZNative"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput p1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTAId:I

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    .line 29
    iput p5, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mSendBufSize:I

    .line 30
    iput p6, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRecvBufSize:I

    .line 31
    iput-object p2, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTATechnology:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRootName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mProcessName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    return-void
.end method

.method private native mposNativeProcessTACommand(Lcom/samsung/android/knox/mpos/TACommandRequest;Lcom/samsung/android/knox/mpos/TACommandResponse;)Z
.end method


# virtual methods
.method public loadTA(Landroid/content/Context;IJJ)Z
    .registers 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    .line 38
    iget-wide v5, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v12, 0x0

    cmp-long v5, v5, v12

    const/4 v14, 0x1

    if-eqz v5, :cond_17

    const-string v0, "MposTZNative"

    const-string v1, "MposTZNative::loadTA called for TA that is already loaded. Call Ignored"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_17
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    const/4 v15, 0x0

    if-gtz v7, :cond_77

    cmp-long v5, v3, v5

    if-lez v5, :cond_24

    goto :goto_77

    :cond_24
    long-to-int v5, v1

    long-to-int v6, v3

    .line 48
    iget v7, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTAId:I

    iget v8, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mSendBufSize:I

    iget v9, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRecvBufSize:I

    iget-object v10, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTATechnology:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRootName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mProcessName:Ljava/lang/String;

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

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/enterprise/mpos/MposTZNative;->mposNativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    cmp-long v1, v1, v12

    if-nez v1, :cond_55

    const-string v0, "MposTZNative"

    const-string v1, "Error: mposNativeCreateTLCommunicationContext failed"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    .line 55
    :cond_55
    const-class v1, Lcom/android/server/enterprise/mpos/MposTZNative;

    monitor-enter v1

    .line 56
    :try_start_58
    iput-boolean v14, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    .line 57
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_74

    const-string v1, "MposTZNative"

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MposTZNative::loadTA: mMOPTZNativePtr_ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :catchall_74
    move-exception v0

    .line 57
    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0

    :cond_77
    :goto_77
    const-string v0, "MposTZNative"

    const-string v1, "MposTZNative::loadTA : cannot get ta offset or size"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v15
.end method

.method public native mposNativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native mposNativeDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Lcom/samsung/android/knox/mpos/TACommandRequest;)Lcom/samsung/android/knox/mpos/TACommandResponse;
    .registers 5

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MposTZNative::processTACommand: request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; mMOPTZNativePtr_ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MposTZNative"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/samsung/android/knox/mpos/TACommandResponse;

    invoke-direct {v0}, Lcom/samsung/android/knox/mpos/TACommandResponse;-><init>()V

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/mpos/MposTZNative;->mposNativeProcessTACommand(Lcom/samsung/android/knox/mpos/TACommandRequest;Lcom/samsung/android/knox/mpos/TACommandResponse;)Z

    move-result p0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MposTZNative::processTACommand: ret: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", response: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_49

    const/4 p0, 0x0

    return-object p0

    :cond_49
    return-object v0
.end method

.method public unloadTA()V
    .registers 6

    .line 63
    const-class v0, Lcom/android/server/enterprise/mpos/MposTZNative;

    monitor-enter v0

    .line 64
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    if-nez v1, :cond_10

    goto :goto_21

    :cond_10
    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    .line 69
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3b

    .line 71
    invoke-virtual {p0}, Lcom/android/server/enterprise/mpos/MposTZNative;->mposNativeDestroyTLCommunicationContext()V

    .line 72
    iput-wide v3, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    const-string p0, "MposTZNative"

    const-string v0, "MposTZNative::unloadTA called"

    .line 73
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    :goto_21
    :try_start_21
    const-string v1, "MposTZNative"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MposTZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_3b

    throw p0
.end method
