.class public final synthetic Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ChangeTransitionController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Landroid/util/ArraySet;

.field public final synthetic f$3:Lcom/android/server/wm/TaskDisplayArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ChangeTransitionController;Lcom/android/server/wm/Task;Landroid/util/ArraySet;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ChangeTransitionController;

    iput-object p2, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/Task;

    iput-object p3, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;->f$2:Landroid/util/ArraySet;

    iput-object p4, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/TaskDisplayArea;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;->f$2:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/ChangeTransitionController;->$r8$lambda$JPkYOJbzWpfUxGm3bhSIhMPFmzs(Lcom/android/server/wm/ChangeTransitionController;Lcom/android/server/wm/Task;Landroid/util/ArraySet;Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method
