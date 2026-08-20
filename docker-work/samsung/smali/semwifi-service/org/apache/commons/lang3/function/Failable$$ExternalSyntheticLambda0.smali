.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableCallable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableCallable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableCallable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableCallable;

    invoke-static {p0}, Lorg/apache/commons/lang3/function/Failable;->$r8$lambda$7waw8JeYJIuYzViudVPw9okNvFU(Lorg/apache/commons/lang3/function/FailableCallable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
