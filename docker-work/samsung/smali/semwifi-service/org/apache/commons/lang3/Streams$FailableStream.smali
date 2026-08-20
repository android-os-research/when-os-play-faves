.class public Lorg/apache/commons/lang3/Streams$FailableStream;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailableStream"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private stream:Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Stream<",
            "TO;>;"
        }
    .end annotation
.end field

.field private terminated:Z


# direct methods
.method public constructor <init>(Ljava/util/stream/Stream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TO;>;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/commons/lang3/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    return-void
.end method


# virtual methods
.method public allMatch(Lorg/apache/commons/lang3/Functions$FailablePredicate;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailablePredicate<",
            "TO;*>;)Z"
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->assertNotTerminated()V

    .line 332
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/lang3/Functions;->asPredicate(Lorg/apache/commons/lang3/Functions$FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public anyMatch(Lorg/apache/commons/lang3/Functions$FailablePredicate;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailablePredicate<",
            "TO;*>;)Z"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->assertNotTerminated()V

    .line 354
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/lang3/Functions;->asPredicate(Lorg/apache/commons/lang3/Functions$FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method protected assertNotTerminated()V
    .registers 2

    .line 91
    iget-boolean p0, p0, Lorg/apache/commons/lang3/Streams$FailableStream;->terminated:Z

    if-nez p0, :cond_5

    return-void

    .line 92
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This stream is already terminated."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;-TO;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->makeTerminated()V

    .line 237
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TO;TA;TR;>;)TR;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->makeTerminated()V

    .line 187
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public filter(Lorg/apache/commons/lang3/Functions$FailablePredicate;)Lorg/apache/commons/lang3/Streams$FailableStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailablePredicate<",
            "TO;*>;)",
            "Lorg/apache/commons/lang3/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->assertNotTerminated()V

    .line 113
    iget-object v0, p0, Lorg/apache/commons/lang3/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    invoke-static {p1}, Lorg/apache/commons/lang3/Functions;->asPredicate(Lorg/apache/commons/lang3/Functions$FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    return-object p0
.end method

.method public forEach(Lorg/apache/commons/lang3/Functions$FailableConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailableConsumer<",
            "TO;*>;)V"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->makeTerminated()V

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/lang3/Functions;->asConsumer(Lorg/apache/commons/lang3/Functions$FailableConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected makeTerminated()V
    .registers 2

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->assertNotTerminated()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lorg/apache/commons/lang3/Streams$FailableStream;->terminated:Z

    return-void
.end method

.method public map(Lorg/apache/commons/lang3/Functions$FailableFunction;)Lorg/apache/commons/lang3/Streams$FailableStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableFunction<",
            "TO;TR;*>;)",
            "Lorg/apache/commons/lang3/Streams$FailableStream<",
            "TR;>;"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->assertNotTerminated()V

    .line 300
    new-instance v0, Lorg/apache/commons/lang3/Streams$FailableStream;

    iget-object p0, p0, Lorg/apache/commons/lang3/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    invoke-static {p1}, Lorg/apache/commons/lang3/Functions;->asFunction(Lorg/apache/commons/lang3/Functions$FailableFunction;)Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/util/function/BinaryOperator<",
            "TO;>;)TO;"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->makeTerminated()V

    .line 285
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public stream()Ljava/util/stream/Stream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TO;>;"
        }
    .end annotation

    .line 308
    iget-object p0, p0, Lorg/apache/commons/lang3/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    return-object p0
.end method
