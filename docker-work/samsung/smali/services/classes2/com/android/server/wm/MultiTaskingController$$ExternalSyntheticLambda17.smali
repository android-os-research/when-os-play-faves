.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/Task;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda17;->f$1:Lcom/android/server/wm/Task;

    iput-boolean p3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda17;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda17;->f$1:Lcom/android/server/wm/Task;

    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda17;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/MultiTaskingController;->$r8$lambda$dQvCZXhdtkOljgItjxVajNJe4gU(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/Task;Z)V

    return-void
.end method
