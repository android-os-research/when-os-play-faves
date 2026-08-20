.class public final synthetic Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Lcom/android/server/wm/Task;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/Task;

    iput-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->$r8$lambda$vN6FxqZOl7nKRuqNNFxTmmT-Uko(Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;Ljava/util/List;Lcom/android/server/wm/Task;)V

    return-void
.end method
