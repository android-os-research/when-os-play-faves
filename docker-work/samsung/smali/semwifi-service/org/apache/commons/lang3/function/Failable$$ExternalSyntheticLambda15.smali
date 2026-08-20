.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableRunnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda15;->f$0:Lorg/apache/commons/lang3/function/FailableRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda15;->f$0:Lorg/apache/commons/lang3/function/FailableRunnable;

    invoke-static {p0}, Lorg/apache/commons/lang3/function/Failable;->$r8$lambda$0XmrSbV69VmxgamlDDH0__VyYGI(Lorg/apache/commons/lang3/function/FailableRunnable;)V

    return-void
.end method
