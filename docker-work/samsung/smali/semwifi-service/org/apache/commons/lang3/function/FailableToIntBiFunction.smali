.class public interface abstract Lorg/apache/commons/lang3/function/FailableToIntBiFunction;
.super Ljava/lang/Object;
.source "FailableToIntBiFunction.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableToIntBiFunction;


# direct methods
.method public static synthetic $r8$lambda$_VUm7n29bUSwlwcGzafiZgE4t4E(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableToIntBiFunction;->lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lorg/apache/commons/lang3/function/FailableToIntBiFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableToIntBiFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableToIntBiFunction;->NOP:Lorg/apache/commons/lang3/function/FailableToIntBiFunction;

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableToIntBiFunction;
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
            "Lorg/apache/commons/lang3/function/FailableToIntBiFunction<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lorg/apache/commons/lang3/function/FailableToIntBiFunction;->NOP:Lorg/apache/commons/lang3/function/FailableToIntBiFunction;

    return-object v0
.end method


# virtual methods
.method public abstract applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
