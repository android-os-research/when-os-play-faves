.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongPredicate;
.super Ljava/lang/Object;
.source "FailableLongPredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final FALSE:Lorg/apache/commons/lang3/function/FailableLongPredicate;

.field public static final TRUE:Lorg/apache/commons/lang3/function/FailableLongPredicate;


# direct methods
.method public static synthetic $r8$lambda$SnjGQlPngo5Hy_eteg1OdH-rUvo(Lorg/apache/commons/lang3/function/FailableLongPredicate;Lorg/apache/commons/lang3/function/FailableLongPredicate;J)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->lambda$and$2(Lorg/apache/commons/lang3/function/FailableLongPredicate;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qzgIIzbO7ERuzlYIoVnnS56PT0Q(Lorg/apache/commons/lang3/function/FailableLongPredicate;J)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->lambda$negate$3(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wh3uGYkunQnU79X42RguhcB6D_o(Lorg/apache/commons/lang3/function/FailableLongPredicate;Lorg/apache/commons/lang3/function/FailableLongPredicate;J)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->lambda$or$4(Lorg/apache/commons/lang3/function/FailableLongPredicate;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yf4pDtc6C3LPns7mdxQ81CeyQUQ(J)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->lambda$static$0(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zRkMrrpIECohWamGnKvkbDTAqSw(J)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->lambda$static$1(J)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongPredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    .line 38
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongPredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    return-void
.end method

.method public static falsePredicate()Lorg/apache/commons/lang3/function/FailableLongPredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/apache/commons/lang3/function/FailableLongPredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    return-object v0
.end method

.method private synthetic lambda$and$2(Lorg/apache/commons/lang3/function/FailableLongPredicate;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->test(J)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->test(J)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$negate$3(J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->test(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$or$4(Lorg/apache/commons/lang3/function/FailableLongPredicate;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->test(J)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->test(J)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static synthetic lambda$static$0(J)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$static$1(J)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static truePredicate()Lorg/apache/commons/lang3/function/FailableLongPredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/apache/commons/lang3/function/FailableLongPredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    return-object v0
.end method


# virtual methods
.method public and(Lorg/apache/commons/lang3/function/FailableLongPredicate;)Lorg/apache/commons/lang3/function/FailableLongPredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/lang3/function/FailableLongPredicate;Lorg/apache/commons/lang3/function/FailableLongPredicate;)V

    return-object v0
.end method

.method public negate()Lorg/apache/commons/lang3/function/FailableLongPredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/lang3/function/FailableLongPredicate;)V

    return-object v0
.end method

.method public or(Lorg/apache/commons/lang3/function/FailableLongPredicate;)Lorg/apache/commons/lang3/function/FailableLongPredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/lang3/function/FailableLongPredicate;Lorg/apache/commons/lang3/function/FailableLongPredicate;)V

    return-object v0
.end method

.method public abstract test(J)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
