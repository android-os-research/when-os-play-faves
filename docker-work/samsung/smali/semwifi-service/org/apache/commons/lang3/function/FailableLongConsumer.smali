.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongConsumer;
.super Ljava/lang/Object;
.source "FailableLongConsumer.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableLongConsumer;


# direct methods
.method public static synthetic $r8$lambda$-1ze5CtwGVysJSYhzF0IiSTKlDY(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$cApBadKmZvcpvm1-G9G_V42V7Hs(J)V
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->lambda$static$0(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    return-void
.end method

.method private synthetic lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->accept(J)V

    .line 65
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->accept(J)V

    return-void
.end method

.method private static synthetic lambda$static$0(J)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableLongConsumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableLongConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 43
    sget-object v0, Lorg/apache/commons/lang3/function/FailableLongConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public andThen(Lorg/apache/commons/lang3/function/FailableLongConsumer;)Lorg/apache/commons/lang3/function/FailableLongConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableLongConsumer<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableLongConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;)V

    return-object v0
.end method
