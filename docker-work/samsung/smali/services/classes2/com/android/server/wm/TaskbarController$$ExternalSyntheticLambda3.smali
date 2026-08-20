.class public final synthetic Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskbarController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskbarController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TaskbarController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TaskbarController;

    check-cast p1, Lcom/android/server/wm/DisplayFrames;

    check-cast p2, Lcom/android/server/wm/WindowContainer;

    check-cast p3, Landroid/graphics/Rect;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/TaskbarController;->$r8$lambda$AtAe6TOHK4fIlS9gV7tu5tvvh1E(Lcom/android/server/wm/TaskbarController;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method
