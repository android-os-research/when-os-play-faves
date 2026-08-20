.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;->f$0:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;->f$0:Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->$r8$lambda$Y3UiD9jF8-SMRYMnTJtnITa8rUw(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
