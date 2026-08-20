.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;ZZLandroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/FreeformController;

    iput-boolean p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;->f$3:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/FreeformController;

    iget-boolean v1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;->f$2:Z

    iget-object p0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;->f$3:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/FreeformController;->$r8$lambda$8EF9wAHw8lntmz0hXYdauBgnBDM(Lcom/android/server/wm/FreeformController;ZZLandroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    return-void
.end method
