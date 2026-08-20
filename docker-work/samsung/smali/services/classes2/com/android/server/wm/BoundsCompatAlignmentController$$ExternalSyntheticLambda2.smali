.class public final synthetic Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Rect;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/BoundsCompatAlignmentController;->$r8$lambda$hyHQUAgH6g8KE_qR1zi32eZLudc(Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
