.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongToIntFunction;
.super Ljava/lang/Object;
.source "FailableLongToIntFunction.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableLongToIntFunction;


# direct methods
.method public static synthetic $r8$lambda$BP-vUI3CEsVj0nfJDaz5IxCraqU(J)I
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableLongToIntFunction;->lambda$static$0(J)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongToIntFunction;->NOP:Lorg/apache/commons/lang3/function/FailableLongToIntFunction;

    return-void
.end method

.method private static synthetic lambda$static$0(J)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableLongToIntFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableLongToIntFunction<",
            "TE;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lorg/apache/commons/lang3/function/FailableLongToIntFunction;->NOP:Lorg/apache/commons/lang3/function/FailableLongToIntFunction;

    return-object v0
.end method


# virtual methods
.method public abstract applyAsInt(J)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
