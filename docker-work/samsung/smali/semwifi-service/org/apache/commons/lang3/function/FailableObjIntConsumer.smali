.class public interface abstract Lorg/apache/commons/lang3/function/FailableObjIntConsumer;
.super Ljava/lang/Object;
.source "FailableObjIntConsumer.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableObjIntConsumer;


# direct methods
.method public static synthetic $r8$lambda$A3LpaetHN5kg5CB_KXOQs8JOqRU(Ljava/lang/Object;I)V
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableObjIntConsumer;->lambda$static$0(Ljava/lang/Object;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/function/FailableObjIntConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableObjIntConsumer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableObjIntConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableObjIntConsumer;

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Object;I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableObjIntConsumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableObjIntConsumer<",
            "TT;TE;>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lorg/apache/commons/lang3/function/FailableObjIntConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableObjIntConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
