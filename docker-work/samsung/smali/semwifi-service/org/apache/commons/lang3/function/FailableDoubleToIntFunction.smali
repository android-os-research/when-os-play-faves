.class public interface abstract Lorg/apache/commons/lang3/function/FailableDoubleToIntFunction;
.super Ljava/lang/Object;
.source "FailableDoubleToIntFunction.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableDoubleToIntFunction;


# direct methods
.method public static synthetic $r8$lambda$oQA0XJUk3kd598rTkgXxL3I5_ro(D)I
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleToIntFunction;->lambda$static$0(D)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleToIntFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableDoubleToIntFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableDoubleToIntFunction;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleToIntFunction;

    return-void
.end method

.method private static synthetic lambda$static$0(D)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableDoubleToIntFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoubleToIntFunction<",
            "TE;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoubleToIntFunction;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleToIntFunction;

    return-object v0
.end method


# virtual methods
.method public abstract applyAsInt(D)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
