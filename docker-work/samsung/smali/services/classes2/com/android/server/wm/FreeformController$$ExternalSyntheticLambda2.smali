.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Landroid/graphics/Rect;

.field public final synthetic f$5:Z

.field public final synthetic f$6:F

.field public final synthetic f$7:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;ZILandroid/graphics/Rect;Landroid/graphics/Rect;ZFF)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/FreeformController;

    iput-boolean p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$1:Z

    iput p3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$3:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$4:Landroid/graphics/Rect;

    iput-boolean p6, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$5:Z

    iput p7, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$6:F

    iput p8, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$7:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/FreeformController;

    iget-boolean v1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$1:Z

    iget v2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$3:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$4:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$5:Z

    iget v6, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$6:F

    iget v7, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$7:F

    move-object v8, p1

    check-cast v8, Lcom/android/server/wm/Task;

    invoke-static/range {v0 .. v8}, Lcom/android/server/wm/FreeformController;->$r8$lambda$sQ6A4ShPkjc9ZO63zGIbtVn_jMI(Lcom/android/server/wm/FreeformController;ZILandroid/graphics/Rect;Landroid/graphics/Rect;ZFFLcom/android/server/wm/Task;)V

    return-void
.end method
