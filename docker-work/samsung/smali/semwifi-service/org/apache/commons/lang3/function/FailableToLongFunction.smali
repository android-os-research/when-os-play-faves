.class public interface abstract Lorg/apache/commons/lang3/function/FailableToLongFunction;
.super Ljava/lang/Object;
.source "FailableToLongFunction.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableToLongFunction;


# direct methods
.method public static synthetic $r8$lambda$pui4_bkTWCSKLEisUzNJIJYTaQE(Ljava/lang/Object;)J
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableToLongFunction;->lambda$static$0(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/function/FailableToLongFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableToLongFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableToLongFunction;->NOP:Lorg/apache/commons/lang3/function/FailableToLongFunction;

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Object;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableToLongFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableToLongFunction<",
            "TT;TE;>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lorg/apache/commons/lang3/function/FailableToLongFunction;->NOP:Lorg/apache/commons/lang3/function/FailableToLongFunction;

    return-object v0
.end method


# virtual methods
.method public abstract applyAsLong(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
