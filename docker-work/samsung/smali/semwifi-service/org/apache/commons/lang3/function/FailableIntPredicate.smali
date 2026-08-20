.class public interface abstract Lorg/apache/commons/lang3/function/FailableIntPredicate;
.super Ljava/lang/Object;
.source "FailableIntPredicate.java"


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
.field public static final FALSE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

.field public static final TRUE:Lorg/apache/commons/lang3/function/FailableIntPredicate;


# direct methods
.method public static synthetic $r8$lambda$3DckJiDbgqMvbUEt6IW8og2LDEg(I)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->lambda$static$1(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5aFCvgj1d2QtbTvhr7oqhxpX5sw(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->lambda$and$2(Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$E5ZC4TgflQ9wV9Dl5TlbzdEQkAw(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->lambda$or$4(Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dJooVEMfx-UbGTIEvY241_biCA0(I)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->lambda$static$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iFG4LA74_qr0TX0B4bv83BCUc18(Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->lambda$negate$3(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    .line 38
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-void
.end method

.method public static falsePredicate()Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-object v0
.end method

.method private synthetic lambda$and$2(Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$negate$3(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$or$4(Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

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

.method private static synthetic lambda$static$0(I)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$static$1(I)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static truePredicate()Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-object v0
.end method


# virtual methods
.method public and(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method

.method public negate()Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method

.method public or(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method

.method public abstract test(I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
