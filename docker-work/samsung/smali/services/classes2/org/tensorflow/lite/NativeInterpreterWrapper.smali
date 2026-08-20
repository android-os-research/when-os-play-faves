.class final Lorg/tensorflow/lite/NativeInterpreterWrapper;
.super Ljava/lang/Object;
.source "NativeInterpreterWrapper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final ERROR_BUFFER_SIZE:I = 0x200


# instance fields
.field public cancellationFlagHandle:J

.field public final delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/Delegate;",
            ">;"
        }
    .end annotation
.end field

.field public errorHandle:J

.field public inferenceDurationNanoseconds:J

.field public inputTensors:[Lorg/tensorflow/lite/Tensor;

.field public inputsIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public interpreterHandle:J

.field public isMemoryAllocated:Z

.field public modelByteBuffer:Ljava/nio/ByteBuffer;

.field public modelHandle:J

.field public outputTensors:[Lorg/tensorflow/lite/Tensor;

.field public outputsIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final ownedDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/AutoCloseable;",
            ">;"
        }
    .end annotation
.end field

.field public tensorToInputsIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public tensorToOutputsIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;-><init>(Ljava/lang/String;Lorg/tensorflow/lite/Interpreter$Options;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/tensorflow/lite/Interpreter$Options;)V
    .registers 10

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 529
    iput-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->cancellationFlagHandle:J

    const-wide/16 v0, -0x1

    .line 531
    iput-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inferenceDurationNanoseconds:J

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delegates:Ljava/util/List;

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->ownedDelegates:Ljava/util/List;

    .line 48
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->init()V

    const/16 v0, 0x200

    .line 49
    invoke-static {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createErrorReporter(I)J

    move-result-wide v2

    .line 50
    invoke-static {p1, v2, v3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createModel(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p2

    .line 51
    invoke-virtual/range {v1 .. v6}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->init(JJLorg/tensorflow/lite/Interpreter$Options;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V
    .registers 9

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 529
    iput-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->cancellationFlagHandle:J

    const-wide/16 v0, -0x1

    .line 531
    iput-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inferenceDurationNanoseconds:J

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delegates:Ljava/util/List;

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->ownedDelegates:Ljava/util/List;

    .line 55
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->init()V

    if-eqz p1, :cond_49

    .line 56
    instance-of v0, p1, Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_35

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v0, v1, :cond_49

    .line 63
    :cond_35
    iput-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelByteBuffer:Ljava/nio/ByteBuffer;

    const/16 p1, 0x200

    .line 64
    invoke-static {p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createErrorReporter(I)J

    move-result-wide v1

    .line 65
    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createModelWithBuffer(Ljava/nio/ByteBuffer;J)J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    .line 66
    invoke-virtual/range {v0 .. v5}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->init(JJLorg/tensorflow/lite/Interpreter$Options;)V

    return-void

    .line 59
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Model ByteBuffer should be either a MappedByteBuffer of the model file, or a direct ByteBuffer using ByteOrder.nativeOrder() which contains bytes of model content."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native allocateTensors(JJ)J
.end method

.method private static native allowBufferHandleOutput(JZ)V
.end method

.method private static native allowFp16PrecisionForFp32(JZ)V
.end method

.method private static native applyDelegate(JJJ)V
.end method

.method private static native createCancellationFlag(J)J
.end method

.method private static native createErrorReporter(I)J
.end method

.method private static native createInterpreter(JJI)J
.end method

.method private static native createModel(Ljava/lang/String;J)J
.end method

.method private static native createModelWithBuffer(Ljava/nio/ByteBuffer;J)J
.end method

.method private static native delete(JJJ)V
.end method

.method private static native deleteCancellationFlag(J)J
.end method

.method private static native getExecutionPlanLength(J)I
.end method

.method private static native getInputCount(J)I
.end method

.method private static native getInputNames(J)[Ljava/lang/String;
.end method

.method private static native getInputTensorIndex(JI)I
.end method

.method private static native getInputTensorIndexFromSignature(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native getOutputCount(J)I
.end method

.method private static native getOutputDataType(JI)I
.end method

.method private static native getOutputNames(J)[Ljava/lang/String;
.end method

.method private static native getOutputTensorIndex(JI)I
.end method

.method private static native getOutputTensorIndexFromSignature(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native getSignatureDefNames(J)[Ljava/lang/String;
.end method

.method private static native getSignatureInputs(JLjava/lang/String;)[Ljava/lang/String;
.end method

.method private static native getSignatureOutputs(JLjava/lang/String;)[Ljava/lang/String;
.end method

.method private static native hasUnresolvedFlexOp(J)Z
.end method

.method public static maybeCreateFlexDelegate(Ljava/util/List;)Lorg/tensorflow/lite/Delegate;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/Delegate;",
            ">;)",
            "Lorg/tensorflow/lite/Delegate;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "org.tensorflow.lite.flex.FlexDelegate"

    .line 505
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 507
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tensorflow/lite/Delegate;

    .line 508
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    new-array v2, p0, [Ljava/lang/Class;

    .line 512
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/tensorflow/lite/Delegate;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    return-object v0
.end method

.method private static native resetVariableTensors(JJ)V
.end method

.method private static native resizeInput(JJI[IZ)Z
.end method

.method private static native run(JJ)V
.end method

.method private static native setCancelled(JJZ)V
.end method

.method private static native useXNNPACK(JJII)V
.end method


# virtual methods
.method public allocateTensors()V
    .registers 5

    .line 250
    iget-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    .line 255
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    invoke-static {v0, v1, v2, v3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allocateTensors(JJ)J

    const/4 v0, 0x0

    .line 256
    :goto_10
    iget-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 257
    aget-object v1, v1, v0

    if-eqz v1, :cond_1c

    .line 258
    invoke-virtual {v1}, Lorg/tensorflow/lite/Tensor;->refreshShape()V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1f
    return-void
.end method

.method public final applyDelegates(Lorg/tensorflow/lite/Interpreter$Options;)V
    .registers 12

    .line 468
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->hasUnresolvedFlexOp(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 470
    iget-object v1, p1, Lorg/tensorflow/lite/Interpreter$Options;->delegates:Ljava/util/List;

    invoke-static {v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->maybeCreateFlexDelegate(Ljava/util/List;)Lorg/tensorflow/lite/Delegate;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 472
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->ownedDelegates:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Ljava/lang/AutoCloseable;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    iget-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v6, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    invoke-interface {v1}, Lorg/tensorflow/lite/Delegate;->getNativeHandle()J

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->applyDelegate(JJJ)V

    .line 479
    :cond_23
    :try_start_23
    iget-object v1, p1, Lorg/tensorflow/lite/Interpreter$Options;->delegates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tensorflow/lite/Delegate;

    .line 480
    iget-wide v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v5, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    invoke-interface {v2}, Lorg/tensorflow/lite/Delegate;->getNativeHandle()J

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->applyDelegate(JJJ)V

    .line 481
    iget-object v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delegates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 483
    :cond_46
    iget-object p1, p1, Lorg/tensorflow/lite/InterpreterApi$Options;->useNNAPI:Ljava/lang/Boolean;

    if-eqz p1, :cond_8c

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 484
    new-instance p1, Lorg/tensorflow/lite/nnapi/NnApiDelegate;

    invoke-direct {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate;-><init>()V

    .line 485
    iget-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->ownedDelegates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    invoke-virtual {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->getNativeHandle()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->applyDelegate(JJJ)V
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_65} :catch_66

    goto :goto_8c

    :catch_66
    move-exception p1

    if-eqz v0, :cond_73

    .line 494
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 495
    invoke-static {v0, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->hasUnresolvedFlexOp(J)Z

    move-result p0

    if-nez p0, :cond_73

    const/4 p0, 0x1

    goto :goto_74

    :cond_73
    const/4 p0, 0x0

    :goto_74
    if-eqz p0, :cond_8d

    .line 499
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring failed delegate application: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    return-void

    .line 497
    :cond_8d
    throw p1
.end method

.method public close()V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    .line 109
    :goto_2
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_16

    .line 110
    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    .line 111
    invoke-virtual {v2}, Lorg/tensorflow/lite/Tensor;->close()V

    .line 112
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/Tensor;

    aput-object v4, v2, v1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    move v1, v0

    .line 115
    :goto_17
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length v3, v2

    if-ge v1, v3, :cond_2a

    .line 116
    aget-object v2, v2, v1

    if-eqz v2, :cond_27

    .line 117
    invoke-virtual {v2}, Lorg/tensorflow/lite/Tensor;->close()V

    .line 118
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    aput-object v4, v2, v1

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 121
    :cond_2a
    iget-wide v5, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    iget-wide v7, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelHandle:J

    iget-wide v9, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static/range {v5 .. v10}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delete(JJJ)V

    .line 122
    iget-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->cancellationFlagHandle:J

    invoke-static {v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->deleteCancellationFlag(J)J

    const-wide/16 v1, 0x0

    .line 123
    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    .line 124
    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelHandle:J

    .line 125
    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 126
    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->cancellationFlagHandle:J

    .line 127
    iput-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelByteBuffer:Ljava/nio/ByteBuffer;

    .line 128
    iput-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    .line 129
    iput-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    .line 130
    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    .line 131
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->ownedDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    .line 134
    :try_start_61
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_55

    :catch_65
    move-exception v1

    .line 136
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close flex delegate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_55

    .line 139
    :cond_7d
    iget-object p0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->ownedDelegates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getExecutionPlanLength()I
    .registers 3

    .line 447
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getExecutionPlanLength(J)I

    move-result p0

    return p0
.end method

.method public getInputIndex(Ljava/lang/String;)I
    .registers 8

    .line 271
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 272
    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v2, v3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputNames(J)[Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    if-eqz v0, :cond_26

    move v2, v1

    .line 275
    :goto_15
    array-length v3, v0

    if-ge v2, v3, :cond_26

    .line 276
    iget-object v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 280
    :cond_26
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 281
    iget-object p0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 283
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    iget-object p0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    const/4 p1, 0x1

    aput-object p0, v2, p1

    const-string p0, "Input error: \'%s\' is not a valid name for any input. Names of inputs and their indexes are %s"

    .line 284
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputTensor(I)Lorg/tensorflow/lite/Tensor;
    .registers 5

    if-ltz p1, :cond_18

    .line 351
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length v1, v0

    if-ge p1, v1, :cond_18

    .line 354
    aget-object v1, v0, p1

    if-nez v1, :cond_17

    .line 356
    iget-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 358
    invoke-static {v1, v2, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensorIndex(JI)I

    move-result p0

    invoke-static {v1, v2, p0}, Lorg/tensorflow/lite/Tensor;->fromIndex(JI)Lorg/tensorflow/lite/Tensor;

    move-result-object v1

    aput-object v1, v0, p1

    :cond_17
    return-object v1

    .line 352
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid input Tensor index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInputTensor(Ljava/lang/String;Ljava/lang/String;)Lorg/tensorflow/lite/Tensor;
    .registers 6

    if-eqz p1, :cond_41

    .line 372
    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->initTensorIndexesMaps()V

    .line 373
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v0, v1, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensorIndexFromSignature(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 374
    iget-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->tensorToInputsIndexes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 379
    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->tensorToInputsIndexes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object p0

    return-object p0

    .line 375
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "Invalid input tensor name (%s) for signature (%s)."

    .line 376
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 370
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input tensor name provided (null)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInputTensorCount()I
    .registers 1

    .line 342
    iget-object p0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length p0, p0

    return p0
.end method

.method public getLastNativeInferenceDurationNanoseconds()Ljava/lang/Long;
    .registers 5

    .line 337
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inferenceDurationNanoseconds:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public getOutputIndex(Ljava/lang/String;)I
    .registers 8

    .line 312
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 313
    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v2, v3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputNames(J)[Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    if-eqz v0, :cond_26

    move v2, v1

    .line 316
    :goto_15
    array-length v3, v0

    if-ge v2, v3, :cond_26

    .line 317
    iget-object v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 321
    :cond_26
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 322
    iget-object p0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 324
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    iget-object p0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    const/4 p1, 0x1

    aput-object p0, v2, p1

    const-string p0, "Input error: \'%s\' is not a valid name for any output. Names of outputs and their indexes are %s"

    .line 325
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputTensor(I)Lorg/tensorflow/lite/Tensor;
    .registers 5

    if-ltz p1, :cond_18

    .line 414
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length v1, v0

    if-ge p1, v1, :cond_18

    .line 417
    aget-object v1, v0, p1

    if-nez v1, :cond_17

    .line 419
    iget-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 421
    invoke-static {v1, v2, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensorIndex(JI)I

    move-result p0

    invoke-static {v1, v2, p0}, Lorg/tensorflow/lite/Tensor;->fromIndex(JI)Lorg/tensorflow/lite/Tensor;

    move-result-object v1

    aput-object v1, v0, p1

    :cond_17
    return-object v1

    .line 415
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid output Tensor index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOutputTensor(Ljava/lang/String;Ljava/lang/String;)Lorg/tensorflow/lite/Tensor;
    .registers 6

    if-eqz p1, :cond_41

    .line 435
    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->initTensorIndexesMaps()V

    .line 436
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v0, v1, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensorIndexFromSignature(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 437
    iget-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->tensorToOutputsIndexes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 442
    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->tensorToOutputsIndexes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object p0

    return-object p0

    .line 438
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "Invalid output tensor name (%s) for signature (%s)."

    .line 439
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 433
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid output tensor name provided (null)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOutputTensorCount()I
    .registers 1

    .line 405
    iget-object p0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length p0, p0

    return p0
.end method

.method public getSignatureDefNames()[Ljava/lang/String;
    .registers 3

    .line 384
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getSignatureDefNames(J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSignatureInputs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 391
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getSignatureInputs(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSignatureOutputs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 398
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getSignatureOutputs(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(JJLorg/tensorflow/lite/Interpreter$Options;)V
    .registers 12

    if-nez p5, :cond_7

    .line 71
    new-instance p5, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {p5}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    .line 73
    :cond_7
    iput-wide p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    .line 74
    iput-wide p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelHandle:J

    .line 75
    iget v0, p5, Lorg/tensorflow/lite/InterpreterApi$Options;->numThreads:I

    invoke-static {p3, p4, p1, p2, v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createInterpreter(JJI)J

    move-result-wide p3

    iput-wide p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 76
    iget-object p3, p5, Lorg/tensorflow/lite/InterpreterApi$Options;->allowCancellation:Ljava/lang/Boolean;

    if-eqz p3, :cond_25

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_25

    .line 77
    iget-wide p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {p3, p4}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createCancellationFlag(J)J

    move-result-wide p3

    iput-wide p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->cancellationFlagHandle:J

    .line 79
    :cond_25
    iget-wide p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {p3, p4}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputCount(J)I

    move-result p3

    new-array p3, p3, [Lorg/tensorflow/lite/Tensor;

    iput-object p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/Tensor;

    .line 80
    iget-wide p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {p3, p4}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputCount(J)I

    move-result p3

    new-array p3, p3, [Lorg/tensorflow/lite/Tensor;

    iput-object p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    .line 81
    iget-object p3, p5, Lorg/tensorflow/lite/Interpreter$Options;->allowFp16PrecisionForFp32:Ljava/lang/Boolean;

    if-eqz p3, :cond_46

    .line 82
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 83
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 82
    invoke-static {v0, v1, p3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allowFp16PrecisionForFp32(JZ)V

    .line 85
    :cond_46
    iget-object p3, p5, Lorg/tensorflow/lite/Interpreter$Options;->allowBufferHandleOutput:Ljava/lang/Boolean;

    if-eqz p3, :cond_53

    .line 86
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {v0, v1, p3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allowBufferHandleOutput(JZ)V

    .line 88
    :cond_53
    invoke-virtual {p0, p5}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->applyDelegates(Lorg/tensorflow/lite/Interpreter$Options;)V

    const/4 p3, -0x1

    .line 92
    iget-object p4, p5, Lorg/tensorflow/lite/Interpreter$Options;->useXNNPACK:Ljava/lang/Boolean;

    if-eqz p4, :cond_5f

    .line 93
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :cond_5f
    move v4, p3

    const/4 p3, 0x1

    if-ne v4, p3, :cond_6b

    .line 99
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget v5, p5, Lorg/tensorflow/lite/InterpreterApi$Options;->numThreads:I

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->useXNNPACK(JJII)V

    .line 101
    :cond_6b
    iget-wide p4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {p4, p5, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allocateTensors(JJ)J

    .line 102
    iput-boolean p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    return-void
.end method

.method public final initTensorIndexesMaps()V
    .registers 7

    .line 293
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->tensorToInputsIndexes:Ljava/util/Map;

    if-eqz v0, :cond_5

    return-void

    .line 296
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->tensorToInputsIndexes:Ljava/util/Map;

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->tensorToOutputsIndexes:Ljava/util/Map;

    .line 298
    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensorCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_19
    if-ge v2, v0, :cond_31

    .line 300
    iget-wide v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v3, v4, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensorIndex(JI)I

    move-result v3

    .line 301
    iget-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->tensorToInputsIndexes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 303
    :cond_31
    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensorCount()I

    move-result v0

    :goto_35
    if-ge v1, v0, :cond_4d

    .line 305
    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v2, v3, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensorIndex(JI)I

    move-result v2

    .line 306
    iget-object v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->tensorToOutputsIndexes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_4d
    return-void
.end method

.method public resetVariableTensors()V
    .registers 5

    .line 266
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    invoke-static {v0, v1, v2, v3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resetVariableTensors(JJ)V

    return-void
.end method

.method public resizeInput(I[I)V
    .registers 4

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, p1, p2, v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resizeInput(I[IZ)V

    return-void
.end method

.method public resizeInput(I[IZ)V
    .registers 11

    .line 235
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resizeInput(JJI[IZ)Z

    move-result p2

    if-eqz p2, :cond_19

    const/4 p2, 0x0

    .line 238
    iput-boolean p2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    .line 239
    iget-object p0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/Tensor;

    aget-object p0, p0, p1

    if-eqz p0, :cond_19

    .line 240
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->refreshShape()V

    :cond_19
    return-void
.end method

.method public run([Ljava/lang/Object;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 174
    iput-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inferenceDurationNanoseconds:J

    if-eqz p1, :cond_9d

    .line 175
    array-length v0, p1

    if-eqz v0, :cond_9d

    if-eqz p2, :cond_95

    const/4 v0, 0x0

    move v1, v0

    .line 185
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_22

    .line 186
    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v2

    .line 187
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/tensorflow/lite/Tensor;->getInputShapeIfDifferent(Ljava/lang/Object;)[I

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 189
    invoke-virtual {p0, v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resizeInput(I[I)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 193
    :cond_22
    iget-boolean v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_31

    .line 195
    iget-wide v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v5, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    invoke-static {v3, v4, v5, v6}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allocateTensors(JJ)J

    .line 196
    iput-boolean v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    :cond_31
    move v2, v0

    .line 199
    :goto_32
    array-length v3, p1

    if-ge v2, v3, :cond_41

    .line 200
    invoke-virtual {p0, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/tensorflow/lite/Tensor;->setTo(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 203
    :cond_41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 204
    iget-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v6, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    invoke-static {v4, v5, v6, v7}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->run(JJ)V

    .line 205
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    if-eqz v1, :cond_62

    .line 209
    :goto_53
    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length v1, p1

    if-ge v0, v1, :cond_62

    .line 210
    aget-object p1, p1, v0

    if-eqz p1, :cond_5f

    .line 211
    invoke-virtual {p1}, Lorg/tensorflow/lite/Tensor;->refreshShape()V

    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 215
    :cond_62
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6a
    :goto_6a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 218
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/tensorflow/lite/Tensor;->copyTo(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    .line 223
    :cond_92
    iput-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inferenceDurationNanoseconds:J

    return-void

    .line 179
    :cond_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input error: Outputs should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input error: Inputs should not be null or empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runSignature(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_b0

    .line 144
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0

    if-eqz p2, :cond_a8

    .line 150
    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->initTensorIndexesMaps()V

    .line 152
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 153
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 154
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 155
    iget-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 156
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v5, v6, p3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensorIndexFromSignature(JLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 157
    iget-object v5, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->tensorToInputsIndexes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 159
    :cond_4b
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_53
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 160
    iget-wide v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 161
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v4, v5, p3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensorIndexFromSignature(JLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 162
    iget-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->tensorToOutputsIndexes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 164
    :cond_7f
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 166
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    add-int/lit8 v2, p2, 0x1

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, p2

    move p2, v2

    goto :goto_8e

    .line 169
    :cond_a4
    invoke-virtual {p0, p1, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->run([Ljava/lang/Object;Ljava/util/Map;)V

    return-void

    .line 148
    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input error: Outputs should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input error: Inputs should not be null or empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCancelled(Z)V
    .registers 6

    .line 455
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->cancellationFlagHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    .line 459
    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v2, v3, v0, v1, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->setCancelled(JJZ)V

    return-void

    .line 456
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot cancel the inference. Have you called Interpreter.Options.setCancellable?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
