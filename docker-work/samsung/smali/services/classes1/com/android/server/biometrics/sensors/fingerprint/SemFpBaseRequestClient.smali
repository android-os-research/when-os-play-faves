.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "SemFpBaseRequestClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintRequestClient"


# instance fields
.field public final mCommand:I

.field public mInputBuffer:[B

.field public final mOutputBuffer:[B

.field public final mParam:I

.field public mRequestResult:I

.field public final mUseScheduler:Z


# direct methods
.method public static synthetic $r8$lambda$fjfYB3NbgVXECPyrte8XCSFot04(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;ILjava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->lambda$startHidlHalOperation$0(ILjava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "II",
            "Ljava/lang/String;",
            "ZII[B[B)V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v12, p12

    .line 141
    new-instance v9, Lcom/android/server/biometrics/log/BiometricLogger;

    const/4 v0, 0x1

    const/4 v13, 0x0

    move-object v1, p1

    invoke-direct {v9, p1, v0, v13, v13}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v8, p6

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move/from16 v0, p9

    .line 146
    iput-boolean v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mUseScheduler:Z

    move/from16 v0, p10

    .line 147
    iput v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mCommand:I

    move/from16 v0, p11

    .line 148
    iput v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mParam:I

    const/4 v0, -0x1

    .line 149
    iput v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    move-object/from16 v0, p13

    .line 150
    iput-object v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mOutputBuffer:[B

    if-eqz v12, :cond_40

    .line 151
    array-length v0, v12

    if-nez v0, :cond_37

    goto :goto_40

    .line 154
    :cond_37
    invoke-virtual/range {p12 .. p12}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mInputBuffer:[B

    goto :goto_44

    :cond_40
    :goto_40
    new-array v0, v13, [B

    .line 152
    iput-object v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mInputBuffer:[B

    :goto_44
    return-void
.end method

.method private synthetic lambda$startHidlHalOperation$0(ILjava/util/ArrayList;)V
    .registers 3

    .line 231
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    if-nez p1, :cond_b

    .line 233
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->listToByteArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->fillOutputBuffer([B)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final fillOutputBuffer([B)V
    .registers 5

    if-eqz p1, :cond_1c

    .line 322
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_1c

    .line 325
    :cond_6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mOutputBuffer:[B

    if-eqz v0, :cond_1c

    array-length v1, v0

    if-nez v1, :cond_e

    goto :goto_1c

    .line 328
    :cond_e
    array-length v1, p1

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mOutputBuffer:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    :cond_1c
    :goto_1c
    return-void
.end method

.method public getCommand()I
    .registers 1

    .line 301
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mCommand:I

    return p0
.end method

.method public getInputBuffer()[B
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mInputBuffer:[B

    return-object p0
.end method

.method public final getInputBufferAsList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mInputBuffer:[B

    if-eqz p0, :cond_1c

    array-length v1, p0

    if-lez v1, :cond_1c

    .line 252
    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1c

    aget-byte v3, p0, v2

    .line 253
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public getParam()I
    .registers 1

    .line 305
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mParam:I

    return p0
.end method

.method public getProtoEnum()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getRequestResult()I
    .registers 1

    .line 313
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    return p0
.end method

.method public interruptsPrecedingClients()Z
    .registers 2

    .line 160
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->getCommand()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    const/4 v0, 0x7

    if-eq p0, v0, :cond_16

    const/16 v0, 0x9

    if-eq p0, v0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public final isAsyncOperation()Z
    .registers 1

    .line 187
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final listToByteArray(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 242
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [B

    const/4 v0, 0x0

    .line 243
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 244
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    return-object p0
.end method

.method public onRequestResult(I)V
    .registers 4

    .line 289
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 293
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onRequestResult(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_1d

    :catch_f
    move-exception p1

    const-string v0, "FingerprintRequestClient"

    const-string v1, "Failed to invoke sendEvent with onRequestResult"

    .line 295
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_1d
    return-void
.end method

.method public setRequestResultForTest(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 318
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 6

    .line 174
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startHalOperation()V

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mCommand:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] FP_FINISH ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms) RESULT: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FingerprintRequestClient"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_43

    move p1, v0

    goto :goto_44

    :cond_43
    move p1, v1

    .line 180
    :goto_44
    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mUseScheduler:Z

    if-eqz v2, :cond_52

    if-eqz p1, :cond_52

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->isAsyncOperation()Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_52

    :cond_51
    move v0, v1

    :cond_52
    :goto_52
    if-eqz v0, :cond_59

    .line 182
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_59
    return-void
.end method

.method public final startAidlHalOperation(Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;)V
    .registers 6

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->getCommand()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->getParam()I

    move-result v2

    .line 216
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->getInputBuffer()[B

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->getInputBuffer()[B

    move-result-object v3

    goto :goto_1a

    :cond_17
    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 215
    :goto_1a
    invoke-interface {p1, v0, v1, v2, v3}, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    move-result-object p1

    .line 217
    iget v0, p1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    .line 218
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    if-nez v0, :cond_32

    .line 220
    iget-object p1, p1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->data:[B

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->fillOutputBuffer([B)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p0

    const-string p1, "FingerprintRequestClient"

    const-string v0, "Remote exception"

    .line 223
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    :goto_32
    return-void
.end method

.method public startHalOperation()V
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 204
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    if-eqz v1, :cond_10

    .line 205
    check-cast v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startAidlHalOperation(Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;)V

    goto :goto_1d

    .line 206
    :cond_10
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    if-eqz v1, :cond_1a

    .line 207
    check-cast v0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startHidlHalOperation(Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;)V

    goto :goto_1d

    .line 209
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->unableToStart()V

    :goto_1d
    return-void
.end method

.method public final startHidlHalOperation(Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;)V
    .registers 6

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->getCommand()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->getParam()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->getInputBufferAsList()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;)V

    invoke-interface {p1, v0, v1, v2, v3}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p0

    const-string p1, "FingerprintRequestClient"

    const-string v0, "Remote exception"

    .line 237
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public startWithoutScheduler()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 260
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mUseScheduler:Z

    if-nez v0, :cond_f

    .line 264
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 273
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    return p0

    :cond_f
    const-string p0, "FingerprintRequestClient"

    const-string/jumbo v0, "startWithoutScheduler: It must be started by the scheduler!!"

    .line 261
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "useScheduler option is set"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopHalOperation()V
    .registers 3

    .line 191
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    .line 192
    instance-of v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    if-eqz v0, :cond_18

    .line 194
    :try_start_a
    check-cast p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    const-string v0, "FingerprintRequestClient"

    const-string v1, "Remote exception when requesting cancel"

    .line 196
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_18
    return-void
.end method

.method public unableToStart()V
    .registers 3

    const/4 v0, -0x1

    .line 278
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    .line 279
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method
