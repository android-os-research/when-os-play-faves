.class public Lcom/android/server/wm/RecentsAnimationController$2;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "RecentsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .registers 1

    return-void
.end method

.method public onBackInvoked()V
    .registers 2

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentsAnimationController$2;->sendBackEvent(I)V

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentsAnimationController$2;->sendBackEvent(I)V

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .registers 2

    return-void
.end method

.method public onBackStarted()V
    .registers 1

    return-void
.end method

.method public final sendBackEvent(I)V
    .registers 16

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTargetActivityRecord(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 245
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 246
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x48

    const/16 v13, 0x101

    move-object v1, v0

    move-wide v2, v4

    move v6, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 251
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTargetActivityRecord(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 252
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method
