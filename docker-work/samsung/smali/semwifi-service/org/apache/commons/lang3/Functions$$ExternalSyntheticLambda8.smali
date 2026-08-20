.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/Functions$FailableCallable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableCallable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda8;->f$0:Lorg/apache/commons/lang3/Functions$FailableCallable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda8;->f$0:Lorg/apache/commons/lang3/Functions$FailableCallable;

    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->$r8$lambda$BlXRpk5pAOB4JLqUwOfjvlhac-A(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
