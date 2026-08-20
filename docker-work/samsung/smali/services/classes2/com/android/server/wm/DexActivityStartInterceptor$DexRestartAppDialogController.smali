.class public Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;
.super Ljava/lang/Object;
.source "DexActivityStartInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexActivityStartInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DexRestartAppDialogController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;
    }
.end annotation


# instance fields
.field public mIsDoNotShowAgainChecked:Z

.field public mRestartDialogShowRequested:Z

.field public final mUiHandler:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;

.field public final synthetic this$0:Lcom/android/server/wm/DexActivityStartInterceptor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexActivityStartInterceptor;)V
    .registers 2

    .line 346
    iput-object p1, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->this$0:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 347
    iput-boolean p1, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->mIsDoNotShowAgainChecked:Z

    .line 348
    iput-boolean p1, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->mRestartDialogShowRequested:Z

    .line 349
    new-instance p1, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;-><init>(Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;)V

    iput-object p1, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->mUiHandler:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;

    return-void
.end method


# virtual methods
.method public setDoNotShowAgainChecked(Z)V
    .registers 2

    .line 352
    iput-boolean p1, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->mIsDoNotShowAgainChecked:Z

    return-void
.end method

.method public setRestartDialogShowRequested(Z)V
    .registers 2

    .line 356
    iput-boolean p1, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->mRestartDialogShowRequested:Z

    return-void
.end method

.method public showRestartAppDialogLocked(Lcom/android/server/wm/DexRestartAppInfo;I)V
    .registers 6

    .line 360
    invoke-static {}, Lcom/android/server/wm/DexActivityStartInterceptor;->-$$Nest$sfgetSAFE_DEBUG()Z

    move-result v0

    const-string v1, "DexActivityStartInterceptor"

    if-eqz v0, :cond_32

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showRestartAppDialogLocked on #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 362
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/wm/DexRestartAppInfo;->skipToShow()Z

    move-result v0

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->mIsDoNotShowAgainChecked:Z

    if-eqz v0, :cond_3d

    goto :goto_50

    .line 373
    :cond_3d
    iget-boolean v0, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->mRestartDialogShowRequested:Z

    if-nez v0, :cond_4f

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->mUiHandler:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;

    const/4 v1, 0x0

    .line 375
    invoke-virtual {v0, v1, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 374
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->setRestartDialogShowRequested(Z)V

    :cond_4f
    return-void

    .line 365
    :cond_50
    :goto_50
    invoke-static {}, Lcom/android/server/wm/DexActivityStartInterceptor;->-$$Nest$sfgetSAFE_DEBUG()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip to show Restart app DialogmDoNotShowAgainChecked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->mIsDoNotShowAgainChecked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_6c
    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->this$0:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-static {p0}, Lcom/android/server/wm/DexActivityStartInterceptor;->-$$Nest$fgetmDexController(Lcom/android/server/wm/DexActivityStartInterceptor;)Lcom/android/server/wm/DexController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DexController;->scheduleMoveTasksBackAndStartPendingActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V

    return-void
.end method
