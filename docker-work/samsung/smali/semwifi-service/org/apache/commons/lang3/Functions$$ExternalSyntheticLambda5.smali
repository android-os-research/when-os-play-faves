.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/Functions$FailableRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda5;->f$0:Lorg/apache/commons/lang3/Functions$FailableRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda5;->f$0:Lorg/apache/commons/lang3/Functions$FailableRunnable;

    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->$r8$lambda$_TZPQ5khvHVQVMn-_PzP9o7UjoY(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    return-void
.end method
