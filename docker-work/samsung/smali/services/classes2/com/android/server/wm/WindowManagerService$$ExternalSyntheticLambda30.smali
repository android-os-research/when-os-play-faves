.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ZZLjava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda30;->f$0:Z

    iput-boolean p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda30;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda30;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda30;->f$0:Z

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda30;->f$1:Z

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda30;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$mDa7k3r1_L4U0jJ_4Z6cV9aljcg(ZZLjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
