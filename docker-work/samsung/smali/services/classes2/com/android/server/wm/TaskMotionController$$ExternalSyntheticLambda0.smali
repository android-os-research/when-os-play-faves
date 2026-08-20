.class public final synthetic Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskMotionController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskMotionController;

    iput-object p2, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskMotionController;

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    invoke-static {v0, p0}, Lcom/android/server/wm/TaskMotionController;->$r8$lambda$Xqa4gqBYErWG9ZoYCzfpiWr2n1I(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
