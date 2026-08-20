.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskDisplayArea;

.field public final synthetic f$1:[Lcom/android/server/wm/Task;

.field public final synthetic f$2:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskDisplayArea;[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$1:[Lcom/android/server/wm/Task;

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$2:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$1:[Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$2:Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->$r8$lambda$AR0e6hgN6LluPpY0HPELU8Ico5M(Lcom/android/server/wm/TaskDisplayArea;[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    return-void
.end method
