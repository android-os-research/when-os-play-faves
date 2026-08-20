.class public interface abstract Lorg/apache/commons/lang3/function/FailableIntConsumer;
.super Ljava/lang/Object;
.source "FailableIntConsumer.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableIntConsumer;


# direct methods
.method public static synthetic $r8$lambda$l_MmYkwdFod6cr3-MVg5Ky-bwd4(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableIntConsumer;->lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$m__4NHcIh7XXAhT4ClcBPOZ16R4(I)V
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableIntConsumer;->lambda$static$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    return-void
.end method

.method private synthetic lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableIntConsumer;->accept(I)V

    .line 65
    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableIntConsumer;->accept(I)V

    return-void
.end method

.method private static synthetic lambda$static$0(I)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableIntConsumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 43
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public andThen(Lorg/apache/commons/lang3/function/FailableIntConsumer;)Lorg/apache/commons/lang3/function/FailableIntConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntConsumer<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;)V

    return-object v0
.end method
