.class public Lcom/android/server/wm/ScreenshotExecutor$3;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenshotExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ScreenshotExecutor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenshotExecutor;)V
    .registers 2

    .line 499
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor$3;->this$0:Lcom/android/server/wm/ScreenshotExecutor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 501
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 502
    iget-object p2, p0, Lcom/android/server/wm/ScreenshotExecutor$3;->this$0:Lcom/android/server/wm/ScreenshotExecutor;

    invoke-static {p2}, Lcom/android/server/wm/ScreenshotExecutor;->-$$Nest$fgetmService(Lcom/android/server/wm/ScreenshotExecutor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result p2

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isKeyguardLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_31

    return-void

    :cond_31
    const-string p2, "com.samsung.android.motion.SWEEP_LEFT"

    .line 508
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_55

    :cond_42
    const-string p2, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    .line 516
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor$3;->this$0:Lcom/android/server/wm/ScreenshotExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/ScreenshotExecutor;->-$$Nest$msendTakeScreenshotRunnable(Lcom/android/server/wm/ScreenshotExecutor;IIIILandroid/os/Bundle;)V

    goto :goto_68

    .line 509
    :cond_55
    :goto_55
    iget-object v6, p0, Lcom/android/server/wm/ScreenshotExecutor$3;->this$0:Lcom/android/server/wm/ScreenshotExecutor;

    const/4 v7, 0x1

    .line 511
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    const/4 p0, 0x2

    goto :goto_61

    :cond_60
    const/4 p0, 0x3

    :goto_61
    move v8, p0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 509
    invoke-static/range {v6 .. v11}, Lcom/android/server/wm/ScreenshotExecutor;->-$$Nest$msendTakeScreenshotRunnable(Lcom/android/server/wm/ScreenshotExecutor;IIIILandroid/os/Bundle;)V

    :cond_68
    :goto_68
    return-void
.end method
