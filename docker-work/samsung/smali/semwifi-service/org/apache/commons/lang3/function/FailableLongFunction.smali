.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongFunction;
.super Ljava/lang/Object;
.source "FailableLongFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableLongFunction;


# direct methods
.method public static synthetic $r8$lambda$sklSou-It_I5TmqkcRqHOUPUWgo(J)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableLongFunction;->lambda$static$0(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableLongFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongFunction;->NOP:Lorg/apache/commons/lang3/function/FailableLongFunction;

    return-void
.end method

.method private static synthetic lambda$static$0(J)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableLongFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableLongFunction<",
            "TR;TE;>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lorg/apache/commons/lang3/function/FailableLongFunction;->NOP:Lorg/apache/commons/lang3/function/FailableLongFunction;

    return-object v0
.end method


# virtual methods
.method public abstract apply(J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
