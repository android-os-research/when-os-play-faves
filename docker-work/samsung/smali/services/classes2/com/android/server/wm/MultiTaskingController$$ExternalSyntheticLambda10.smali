.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic f$2:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/wm/WindowProcessController;

    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda10;->f$2:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/wm/WindowProcessController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda10;->f$2:Lcom/android/server/wm/Task;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/MultiTaskingController;->$r8$lambda$E_jNljPiva6oo_urLaG1qqRIaNg(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V

    return-void
.end method
