.class Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SarDevice"
.end annotation


# static fields
.field private static final MAX_SENSORS:I = 0x3


# instance fields
.field private final MAX_CHANNEL:I

.field protected mNumSensors:I

.field protected mSarTypes:[I

.field protected mStates:[I

.field protected mUnknownModes:[I

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .param p2, "sarDevice"    # I

    .line 231
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;[I)V

    .line 232
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;II)V
    .registers 6
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .param p2, "sarDevice"    # I
    .param p3, "sarDevice2nd"    # I

    .line 235
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;[I)V

    .line 236
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;[I)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .param p2, "sarDevices"    # [I

    .line 224
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_1e

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    .line 221
    new-array v0, v0, [I

    fill-array-data v0, :array_26

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mUnknownModes:[I

    .line 225
    array-length v0, p2

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->MAX_CHANNEL:I

    .line 226
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[I

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mNumSensors:I

    .line 228
    return-void

    nop

    :array_1e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method addSensor()V
    .registers 2

    .line 245
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mNumSensors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mNumSensors:I

    .line 246
    return-void
.end method

.method clear(II)V
    .registers 8
    .param p1, "channel"    # I
    .param p2, "index"    # I

    .line 284
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->MAX_CHANNEL:I

    if-lt p1, v0, :cond_7

    const/4 v0, 0x3

    if-ge p2, v0, :cond_65

    .line 285
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v0, v0, p1

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mUnknownModes:[I

    aget v0, v0, p1

    if-nez v0, :cond_14

    return-void

    .line 286
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] SarDevice clear "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v1, v0, p1

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    not-int v2, v2

    and-int/2addr v1, v2

    aput v1, v0, p1

    .line 288
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mUnknownModes:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    .line 289
    aget v0, v0, p1

    if-nez v0, :cond_65

    .line 290
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[I

    aget v1, v1, p1

    int-to-long v3, v1

    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 293
    :cond_65
    return-void
.end method

.method getDevice(I)I
    .registers 3
    .param p1, "channel"    # I

    .line 239
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->MAX_CHANNEL:I

    if-ge p1, v0, :cond_9

    .line 240
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[I

    aget v0, v0, p1

    return v0

    .line 241
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method getSensorCnt()I
    .registers 2

    .line 249
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mNumSensors:I

    return v0
.end method

.method set(II)V
    .registers 7
    .param p1, "channel"    # I
    .param p2, "index"    # I

    .line 274
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->MAX_CHANNEL:I

    if-lt p1, v0, :cond_7

    const/4 v0, 0x3

    if-ge p2, v0, :cond_54

    .line 275
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 276
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[I

    aget v2, v2, p1

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 278
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v2, v0, p1

    shl-int/2addr v1, p2

    or-int/2addr v1, v2

    aput v1, v0, p1

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] SarDevice set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_54
    return-void
.end method

.method tunerGrip(JZ)V
    .registers 6
    .param p1, "deviceId"    # J
    .param p3, "state"    # Z

    .line 269
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] tunerGrip is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method unknownMode(II)V
    .registers 10
    .param p1, "channel"    # I
    .param p2, "state"    # I

    .line 253
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->MAX_CHANNEL:I

    if-ge p1, v0, :cond_8a

    .line 254
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mUnknownModes:[I

    aget v1, v0, p1

    if-ne v1, p2, :cond_b

    return-void

    .line 255
    :cond_b
    aput p2, v0, p1

    .line 256
    const/16 v0, 0x12c

    const-string v1, " , state : "

    const-string v2, " channel : "

    const-string v3, "MotionRecognitionService"

    if-ne p2, v0, :cond_51

    .line 257
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[I

    aget v4, v4, p1

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SAR] UnknownMode set "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[I

    aget v4, v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 261
    :cond_51
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[I

    aget v4, v4, p1

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SAR] UnknownMode clear "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[I

    aget v4, v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_8a
    :goto_8a
    return-void
.end method
