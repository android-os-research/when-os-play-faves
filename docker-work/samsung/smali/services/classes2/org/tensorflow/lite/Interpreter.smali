.class public final Lorg/tensorflow/lite/Interpreter;
.super Ljava/lang/Object;
.source "Interpreter.java"

# interfaces
.implements Lorg/tensorflow/lite/InterpreterApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/Interpreter$Options;
    }
.end annotation


# instance fields
.field public signatureNameList:[Ljava/lang/String;

.field public wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, p1, v0}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/io/File;Lorg/tensorflow/lite/Interpreter$Options;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/tensorflow/lite/Interpreter$Options;)V
    .registers 4

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;-><init>(Ljava/lang/String;Lorg/tensorflow/lite/Interpreter$Options;)V

    iput-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    .line 218
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->getSignatureDefNames()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/Interpreter;->signatureNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, v0}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V
    .registers 4

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-direct {v0, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    iput-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    .line 248
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->getSignatureDefNames()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/Interpreter;->signatureNameList:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public allocateTensors()V
    .registers 1

    .line 420
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 421
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allocateTensors()V

    return-void
.end method

.method public final checkNotClosed()V
    .registers 2

    .line 677
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    if-eqz p0, :cond_5

    return-void

    .line 678
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: The Interpreter has already been closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 2

    .line 659
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    if-eqz v0, :cond_a

    .line 660
    invoke-virtual {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->close()V

    const/4 v0, 0x0

    .line 661
    iput-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    :cond_a
    return-void
.end method

.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 670
    :try_start_0
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 672
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 673
    throw v0
.end method

.method public getExecutionPlanLength()I
    .registers 1

    .line 652
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 653
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getExecutionPlanLength()I

    move-result p0

    return p0
.end method

.method public getInputIndex(Ljava/lang/String;)I
    .registers 2

    .line 467
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 468
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getInputTensor(I)Lorg/tensorflow/lite/Tensor;
    .registers 2

    .line 479
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 480
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object p0

    return-object p0
.end method

.method public getInputTensorCount()I
    .registers 1

    .line 455
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 456
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensorCount()I

    move-result p0

    return p0
.end method

.method public getInputTensorFromSignature(Ljava/lang/String;Ljava/lang/String;)Lorg/tensorflow/lite/Tensor;
    .registers 6

    .line 495
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    if-nez p2, :cond_e

    .line 496
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->signatureNameList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const/4 p2, 0x0

    .line 497
    aget-object p2, v0, p2

    :cond_e
    if-eqz p2, :cond_17

    .line 505
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensor(Ljava/lang/String;Ljava/lang/String;)Lorg/tensorflow/lite/Tensor;

    move-result-object p0

    return-object p0

    .line 500
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Input error: SignatureDef methodName should not be null. null is only allowed if the model has a single Signature. Available Signatures: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->signatureNameList:[Ljava/lang/String;

    .line 503
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLastNativeInferenceDurationNanoseconds()Ljava/lang/Long;
    .registers 1

    .line 615
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 616
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getLastNativeInferenceDurationNanoseconds()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getOutputIndex(Ljava/lang/String;)I
    .registers 2

    .line 553
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 554
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getOutputTensor(I)Lorg/tensorflow/lite/Tensor;
    .registers 2

    .line 572
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 573
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object p0

    return-object p0
.end method

.method public getOutputTensorCount()I
    .registers 1

    .line 541
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 542
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensorCount()I

    move-result p0

    return p0
.end method

.method public getOutputTensorFromSignature(Ljava/lang/String;Ljava/lang/String;)Lorg/tensorflow/lite/Tensor;
    .registers 6

    .line 595
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    if-nez p2, :cond_e

    .line 596
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->signatureNameList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const/4 p2, 0x0

    .line 597
    aget-object p2, v0, p2

    :cond_e
    if-eqz p2, :cond_17

    .line 605
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensor(Ljava/lang/String;Ljava/lang/String;)Lorg/tensorflow/lite/Tensor;

    move-result-object p0

    return-object p0

    .line 600
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Input error: SignatureDef methodName should not be null. null is only allowed if the model has a single Signature. Available Signatures: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->signatureNameList:[Ljava/lang/String;

    .line 603
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSignatureDefNames()[Ljava/lang/String;
    .registers 1

    .line 514
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 515
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getSignatureDefNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSignatureInputs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 524
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 525
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getSignatureInputs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSignatureOutputs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 534
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 535
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getSignatureOutputs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resetVariableTensors()V
    .registers 1

    .line 627
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 628
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resetVariableTensors()V

    return-void
.end method

.method public resizeInput(I[I)V
    .registers 4

    .line 432
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 433
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resizeInput(I[IZ)V

    return-void
.end method

.method public resizeInput(I[IZ)V
    .registers 4

    .line 448
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 449
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resizeInput(I[IZ)V

    return-void
.end method

.method public run(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 294
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 295
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3
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

    .line 343
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 344
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->run([Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public runSignature(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
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
            ">;)V"
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p0, p1, p2, v0}, Lorg/tensorflow/lite/Interpreter;->runSignature(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public runSignature(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
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

    .line 367
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    if-nez p3, :cond_e

    .line 368
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->signatureNameList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const/4 p3, 0x0

    .line 369
    aget-object p3, v0, p3

    :cond_e
    if-eqz p3, :cond_16

    .line 377
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->runSignature(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 372
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Input error: SignatureDef methodName should not be null. null is only allowed if the model has a single Signature. Available Signatures: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->signatureNameList:[Ljava/lang/String;

    .line 375
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCancelled(Z)V
    .registers 2

    .line 648
    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->setCancelled(Z)V

    return-void
.end method
