.class public interface abstract Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
.super Ljava/lang/Object;
.source "FailableDoubleUnaryOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;


# direct methods
.method public static synthetic $r8$lambda$8jebZH690mTBFTL2Dc0A7tasA10(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$TmcB97UgmT_0rzCXq3tdvr486QQ(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->lambda$compose$3(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$U3jaFb3f5DXro0gQs6eKB8uso3s(D)D
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->lambda$static$0(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$Z3FlOo1H6QemGckC7zOF86JxyiE(D)D
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->lambda$identity$1(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    return-void
.end method

.method public static identity()Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 67
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private synthetic lambda$compose$3(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$identity$1(D)D
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-wide p0
.end method

.method private static synthetic lambda$static$0(D)D
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsDouble(D)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public compose(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)V

    return-object v0
.end method
