.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    return-void
.end method
