.class public interface abstract Lorg/apache/commons/lang3/function/FailableFunction;
.super Ljava/lang/Object;
.source "FailableFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableFunction;


# direct methods
.method public static synthetic $r8$lambda$BwGGkTVi_T_yOe917XbQ_gK6xTM(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableFunction;->lambda$compose$3(Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QBbMY-fQ68EPpaI2xBMKN2A1mM4(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableFunction;->lambda$identity$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iCCU21CjS6RIJdTs0GazOxIdRkc(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableFunction;->lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pq8aYIZqLdyrNq7B6jNgqr8LWTk(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableFunction;->lambda$static$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableFunction;->NOP:Lorg/apache/commons/lang3/function/FailableFunction;

    return-void
.end method

.method public static identity()Lorg/apache/commons/lang3/function/FailableFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TT;TT;TE;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$compose$3(Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 94
    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$identity$1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TT;TR;TE;>;"
        }
    .end annotation

    .line 58
    sget-object v0, Lorg/apache/commons/lang3/function/FailableFunction;->NOP:Lorg/apache/commons/lang3/function/FailableFunction;

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "-TR;+TV;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TT;TV;TE;>;"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public compose(Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "-TV;+TT;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TV;TR;TE;>;"
        }
    .end annotation

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V

    return-object v0
.end method
