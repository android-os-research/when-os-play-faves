.class public Lorg/tensorflow/lite/Interpreter$Options;
.super Lorg/tensorflow/lite/InterpreterApi$Options;
.source "Interpreter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/Interpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public allowBufferHandleOutput:Ljava/lang/Boolean;

.field public allowFp16PrecisionForFp32:Ljava/lang/Boolean;

.field public final delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/Delegate;",
            ">;"
        }
    .end annotation
.end field

.field public useXNNPACK:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Lorg/tensorflow/lite/InterpreterApi$Options;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/Interpreter$Options;->delegates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addDelegate(Lorg/tensorflow/lite/Delegate;)Lorg/tensorflow/lite/Interpreter$Options;
    .registers 3

    .line 129
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter$Options;->delegates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAllowBufferHandleOutput(Z)Lorg/tensorflow/lite/Interpreter$Options;
    .registers 2

    .line 145
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/Interpreter$Options;->allowBufferHandleOutput:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setAllowFp16PrecisionForFp32(Z)Lorg/tensorflow/lite/Interpreter$Options;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/Interpreter$Options;->allowFp16PrecisionForFp32:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setCancellable(Z)Lorg/tensorflow/lite/Interpreter$Options;
    .registers 2

    .line 156
    invoke-super {p0, p1}, Lorg/tensorflow/lite/InterpreterApi$Options;->setCancellable(Z)Lorg/tensorflow/lite/InterpreterApi$Options;

    return-object p0
.end method

.method public bridge synthetic setCancellable(Z)Lorg/tensorflow/lite/InterpreterApi$Options;
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Interpreter$Options;->setCancellable(Z)Lorg/tensorflow/lite/Interpreter$Options;

    move-result-object p0

    return-object p0
.end method

.method public setNumThreads(I)Lorg/tensorflow/lite/Interpreter$Options;
    .registers 2

    .line 98
    invoke-super {p0, p1}, Lorg/tensorflow/lite/InterpreterApi$Options;->setNumThreads(I)Lorg/tensorflow/lite/InterpreterApi$Options;

    return-object p0
.end method

.method public bridge synthetic setNumThreads(I)Lorg/tensorflow/lite/InterpreterApi$Options;
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Interpreter$Options;->setNumThreads(I)Lorg/tensorflow/lite/Interpreter$Options;

    move-result-object p0

    return-object p0
.end method

.method public setUseNNAPI(Z)Lorg/tensorflow/lite/Interpreter$Options;
    .registers 2

    .line 105
    invoke-super {p0, p1}, Lorg/tensorflow/lite/InterpreterApi$Options;->setUseNNAPI(Z)Lorg/tensorflow/lite/InterpreterApi$Options;

    return-object p0
.end method

.method public bridge synthetic setUseNNAPI(Z)Lorg/tensorflow/lite/InterpreterApi$Options;
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Interpreter$Options;->setUseNNAPI(Z)Lorg/tensorflow/lite/Interpreter$Options;

    move-result-object p0

    return-object p0
.end method

.method public setUseXNNPACK(Z)Lorg/tensorflow/lite/Interpreter$Options;
    .registers 2

    .line 182
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/Interpreter$Options;->useXNNPACK:Ljava/lang/Boolean;

    return-object p0
.end method
