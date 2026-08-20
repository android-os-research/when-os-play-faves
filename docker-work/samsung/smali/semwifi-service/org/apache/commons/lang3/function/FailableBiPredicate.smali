.class public interface abstract Lorg/apache/commons/lang3/function/FailableBiPredicate;
.super Ljava/lang/Object;
.source "FailableBiPredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
.field public static final FALSE:Lorg/apache/commons/lang3/function/FailableBiPredicate;

.field public static final TRUE:Lorg/apache/commons/lang3/function/FailableBiPredicate;


# direct methods
.method public static synthetic $r8$lambda$Mr_UhGUSsjt5pPi_nk6T3Vq4VWc(Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->lambda$negate$3(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SXg6-akzSTi88NiJn5C67aozBSs(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->lambda$and$2(Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YbuRf08fcv2hZ64bSJcBtOKnvj4(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->lambda$static$1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qml196xBfsJjNNAkUtuTR9NMZAw(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$skwBXolMbtdDPLyodxkmU4cK-3E(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->lambda$or$4(Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableBiPredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    .line 40
    new-instance v0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableBiPredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    return-void
.end method

.method public static falsePredicate()Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/apache/commons/lang3/function/FailableBiPredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    return-object v0
.end method

.method private synthetic lambda$and$2(Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 75
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$negate$3(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$or$4(Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 96
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method private static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$static$1(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static truePredicate()Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/apache/commons/lang3/function/FailableBiPredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    return-object v0
.end method


# virtual methods
.method public and(Lorg/apache/commons/lang3/function/FailableBiPredicate;)Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "-TT;-TU;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)V

    return-object v0
.end method

.method public negate()Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;)V

    return-object v0
.end method

.method public or(Lorg/apache/commons/lang3/function/FailableBiPredicate;)Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "-TT;-TU;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 95
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
