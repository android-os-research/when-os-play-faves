.class public interface abstract Lorg/apache/commons/lang3/function/FailableDoublePredicate;
.super Ljava/lang/Object;
.source "FailableDoublePredicate.java"


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
.field public static final FALSE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

.field public static final TRUE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# direct methods
.method public static synthetic $r8$lambda$OUcWJ6DYFkHDapHMwws8XG_B2UE(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->lambda$or$4(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$R8ckRYSa7X9D-jf2TrmQg0oNhPE(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->lambda$negate$3(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZAo-EAg2eZAZQA-QTyqF37lyDrE(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->lambda$and$2(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_oaSv2WPDmAvKpA2DJ4haINOTHY(D)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->lambda$static$1(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xU6Hp_ahz4OIqBsRq4fTNEMsY-A(D)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->lambda$static$0(D)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    .line 38
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    return-void
.end method

.method public static falsePredicate()Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    return-object v0
.end method

.method private synthetic lambda$and$2(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$negate$3(D)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$or$4(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

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

.method private static synthetic lambda$static$0(D)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$static$1(D)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static truePredicate()Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    return-object v0
.end method


# virtual methods
.method public and(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V

    return-object v0
.end method

.method public negate()Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V

    return-object v0
.end method

.method public or(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V

    return-object v0
.end method

.method public abstract test(D)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
