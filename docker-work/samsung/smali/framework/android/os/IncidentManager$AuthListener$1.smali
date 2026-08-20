.class Landroid/os/IncidentManager$AuthListener$1;
.super Landroid/os/IIncidentAuthListener$Stub;
.source "IncidentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager$AuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/IncidentManager$AuthListener;


# direct methods
.method constructor blacklist <init>(Landroid/os/IncidentManager$AuthListener;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/IncidentManager$AuthListener;

    .line 384
    iput-object p1, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    invoke-direct {p0}, Landroid/os/IIncidentAuthListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onReportApproved$0$android-os-IncidentManager$AuthListener$1()V
    .registers 2

    .line 389
    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    invoke-virtual {v0}, Landroid/os/IncidentManager$AuthListener;->onReportApproved()V

    .line 390
    return-void
.end method

.method synthetic blacklist lambda$onReportDenied$1$android-os-IncidentManager$AuthListener$1()V
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    invoke-virtual {v0}, Landroid/os/IncidentManager$AuthListener;->onReportDenied()V

    .line 401
    return-void
.end method

.method public blacklist onReportApproved()V
    .registers 3

    .line 387
    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    iget-object v0, v0, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_13

    .line 388
    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    iget-object v0, v0, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/IncidentManager$AuthListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/os/IncidentManager$AuthListener$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/IncidentManager$AuthListener$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_18

    .line 392
    :cond_13
    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    invoke-virtual {v0}, Landroid/os/IncidentManager$AuthListener;->onReportApproved()V

    .line 394
    :goto_18
    return-void
.end method

.method public blacklist onReportDenied()V
    .registers 3

    .line 398
    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    iget-object v0, v0, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_13

    .line 399
    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    iget-object v0, v0, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/IncidentManager$AuthListener$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/os/IncidentManager$AuthListener$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/IncidentManager$AuthListener$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_18

    .line 403
    :cond_13
    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    invoke-virtual {v0}, Landroid/os/IncidentManager$AuthListener;->onReportDenied()V

    .line 405
    :goto_18
    return-void
.end method
