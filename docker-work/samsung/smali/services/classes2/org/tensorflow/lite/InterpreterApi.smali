.class public interface abstract Lorg/tensorflow/lite/InterpreterApi;
.super Ljava/lang/Object;
.source "InterpreterApi.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/InterpreterApi$Options;
    }
.end annotation


# virtual methods
.method public abstract allocateTensors()V
.end method

.method public abstract getInputIndex(Ljava/lang/String;)I
.end method

.method public abstract getInputTensor(I)Lorg/tensorflow/lite/Tensor;
.end method

.method public abstract getInputTensorCount()I
.end method

.method public abstract getLastNativeInferenceDurationNanoseconds()Ljava/lang/Long;
.end method

.method public abstract getOutputIndex(Ljava/lang/String;)I
.end method

.method public abstract getOutputTensor(I)Lorg/tensorflow/lite/Tensor;
.end method

.method public abstract getOutputTensorCount()I
.end method

.method public abstract resizeInput(I[I)V
.end method

.method public abstract resizeInput(I[IZ)V
.end method

.method public abstract run(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V
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
.end method
