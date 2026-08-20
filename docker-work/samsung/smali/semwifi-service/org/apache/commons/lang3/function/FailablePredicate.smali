.class public interface abstract Lorg/apache/commons/lang3/function/FailablePredicate;
.super Ljava/lang/Object;
.source "FailablePredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field public static final FALSE:Lorg/apache/commons/lang3/function/FailablePredicate;

.field public static final TRUE:Lorg/apache/commons/lang3/function/FailablePredicate;


# direct methods
.method public static synthetic $r8$lambda$4f_rnAH9HA6L7Lxg1EfVpMF9Q4A(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailablePredicate;->lambda$static$0(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$M_MBQnzyKtg4GEh4wFaAWch3BWQ(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->lambda$or$4(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UISSVRtSfVVtuWXd_rvfMQVbuqg(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->lambda$and$2(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fRWIzrhH4W1K4lpYswOxhUKmox8(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate;->lambda$negate$3(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s-tDvinuI7sI-i2eJG3rp2AlTIg(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailablePredicate;->lambda$static$1(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailablePredicate;->FALSE:Lorg/apache/commons/lang3/function/FailablePredicate;

    .line 39
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailablePredicate;->TRUE:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-void
.end method

.method public static falsePredicate()Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lorg/apache/commons/lang3/function/FailablePredicate;->FALSE:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-object v0
.end method

.method private synthetic lambda$and$2(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$negate$3(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 81
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$or$4(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

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

.method private static synthetic lambda$static$0(Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$static$1(Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static truePredicate()Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 60
    sget-object v0, Lorg/apache/commons/lang3/function/FailablePredicate;->TRUE:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-object v0
.end method


# virtual methods
.method public and(Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "-TT;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method public negate()Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method public or(Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "-TT;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 92
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
