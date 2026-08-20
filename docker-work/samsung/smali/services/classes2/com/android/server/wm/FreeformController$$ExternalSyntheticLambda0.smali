.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowState;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FreeformController;

    iput-object p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    iput-object p3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FreeformController;

    iget-object v1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/FreeformController;->$r8$lambda$VKeOBFdi7d6JAGKmvLc8MnlAFs4(Lcom/android/server/wm/FreeformController;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
