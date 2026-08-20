.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final synthetic f$1:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/wm/Task;

    invoke-static {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->$r8$lambda$054QjcddAIz3hnkW4SO2T4RCN_g(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Task;)V

    return-void
.end method
