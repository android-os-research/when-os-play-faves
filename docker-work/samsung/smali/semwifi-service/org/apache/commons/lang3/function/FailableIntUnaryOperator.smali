.class public interface abstract Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
.super Ljava/lang/Object;
.source "FailableIntUnaryOperator.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;


# direct methods
.method public static synthetic $r8$lambda$DXWHGN0EUU1VJJ6ZgfDA3ZVCjCE(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SZK6tscGhqzODVp5S1muUk53rVk(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->lambda$compose$3(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gQF-DywobVv2LoQ1QB5Vhv3OFWI(I)I
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->lambda$static$0(I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l39uKDczYsMD3KvKmKtkr404pGE(I)I
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->lambda$identity$1(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    return-void
.end method

.method public static identity()Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$compose$3(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$identity$1(I)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return p0
.end method

.method private static synthetic lambda$static$0(I)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsInt(I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public compose(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)V

    return-object v0
.end method
