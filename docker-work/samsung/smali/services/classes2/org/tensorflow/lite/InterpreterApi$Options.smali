.class public Lorg/tensorflow/lite/InterpreterApi$Options;
.super Ljava/lang/Object;
.source "InterpreterApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/InterpreterApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public allowCancellation:Ljava/lang/Boolean;

.field public numThreads:I

.field public useNNAPI:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lorg/tensorflow/lite/InterpreterApi$Options;->numThreads:I

    return-void
.end method


# virtual methods
.method public setCancellable(Z)Lorg/tensorflow/lite/InterpreterApi$Options;
    .registers 2

    .line 109
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/InterpreterApi$Options;->allowCancellation:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setNumThreads(I)Lorg/tensorflow/lite/InterpreterApi$Options;
    .registers 2

    .line 93
    iput p1, p0, Lorg/tensorflow/lite/InterpreterApi$Options;->numThreads:I

    return-object p0
.end method

.method public setUseNNAPI(Z)Lorg/tensorflow/lite/InterpreterApi$Options;
    .registers 2

    .line 99
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/InterpreterApi$Options;->useNNAPI:Ljava/lang/Boolean;

    return-object p0
.end method
