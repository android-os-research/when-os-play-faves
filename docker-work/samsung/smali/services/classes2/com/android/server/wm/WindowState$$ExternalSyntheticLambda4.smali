.class public final synthetic Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowState;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WindowState;

    iput-object p2, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/Task;

    iput-object p3, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;->f$2:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;->f$2:Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/WindowState;->$r8$lambda$93zRD-fqAmIhzxq1JirTrJ1TN0w(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
