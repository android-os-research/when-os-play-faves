.class public final synthetic Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriPredicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Rect;

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->$r8$lambda$TuRRmHjEYcKLKJZyEM3QdVLDy10(Lcom/android/server/wm/Task;Ljava/lang/String;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method
