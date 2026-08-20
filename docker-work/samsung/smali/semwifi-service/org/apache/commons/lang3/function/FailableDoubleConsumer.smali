.class public interface abstract Lorg/apache/commons/lang3/function/FailableDoubleConsumer;
.super Ljava/lang/Object;
.source "FailableDoubleConsumer.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;


# direct methods
.method public static synthetic $r8$lambda$CyHYuVONnzGYWgq3GLL2hicGZk0(D)V
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->lambda$static$0(D)V

    return-void
.end method

.method public static synthetic $r8$lambda$uteKWghr9vOsRm1upjAmY13TCNE(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    return-void
.end method

.method private synthetic lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->accept(D)V

    .line 65
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->accept(D)V

    return-void
.end method

.method private static synthetic lambda$static$0(D)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableDoubleConsumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoubleConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 43
    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public andThen(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)Lorg/apache/commons/lang3/function/FailableDoubleConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoubleConsumer<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoubleConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)V

    return-object v0
.end method
