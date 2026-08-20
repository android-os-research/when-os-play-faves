.class public interface abstract Lorg/apache/commons/lang3/function/FailableBiFunction;
.super Ljava/lang/Object;
.source "FailableBiFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableBiFunction;


# direct methods
.method public static synthetic $r8$lambda$3AQmbBO7oy12fFhq8zhsLBkqc0Y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableBiFunction;->lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C2NfyN_b8FGwUnaPmOUxrQAowbM(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableBiFunction;->lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableBiFunction;->NOP:Lorg/apache/commons/lang3/function/FailableBiFunction;

    return-void
.end method

.method private synthetic lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 63
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableBiFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableBiFunction<",
            "TT;TU;TR;TE;>;"
        }
    .end annotation

    .line 50
    sget-object v0, Lorg/apache/commons/lang3/function/FailableBiFunction;->NOP:Lorg/apache/commons/lang3/function/FailableBiFunction;

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableBiFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "-TR;+TV;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableBiFunction<",
            "TT;TU;TV;TE;>;"
        }
    .end annotation

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
