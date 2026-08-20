.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
.super Ljava/lang/Object;
.source "FailableLongUnaryOperator.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;


# direct methods
.method public static synthetic $r8$lambda$GqB9_uFJKGlTs_Aa2HdBdw_N6rY(J)J
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->lambda$static$0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$NFnT97HYK7NgIzyDmBA1XwnsE-4(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;J)J
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->lambda$compose$3(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$UgEWfo9a0TvnKqDXOc4Syq5MArg(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;J)J
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$dvES2YQhQ8QMvDiHjUV9gF253wU(J)J
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->lambda$identity$1(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    return-void
.end method

.method public static identity()Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableLongUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->applyAsLong(J)J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->applyAsLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private synthetic lambda$compose$3(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->applyAsLong(J)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->applyAsLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$identity$1(J)J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-wide p0
.end method

.method private static synthetic lambda$static$0(J)J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableLongUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableLongUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableLongUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsLong(J)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)J^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public compose(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableLongUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableLongUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)V

    return-object v0
.end method
