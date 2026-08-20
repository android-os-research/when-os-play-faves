.class public interface abstract Lorg/apache/commons/lang3/function/FailableIntToDoubleFunction;
.super Ljava/lang/Object;
.source "FailableIntToDoubleFunction.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableIntToDoubleFunction;


# direct methods
.method public static synthetic $r8$lambda$VtXx5x8qYBOG_y1Wpe30ny3d51c(I)D
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableIntToDoubleFunction;->lambda$static$0(I)D

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntToDoubleFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableIntToDoubleFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntToDoubleFunction;->NOP:Lorg/apache/commons/lang3/function/FailableIntToDoubleFunction;

    return-void
.end method

.method private static synthetic lambda$static$0(I)D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableIntToDoubleFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntToDoubleFunction<",
            "TE;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntToDoubleFunction;->NOP:Lorg/apache/commons/lang3/function/FailableIntToDoubleFunction;

    return-object v0
.end method


# virtual methods
.method public abstract applyAsDouble(I)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
