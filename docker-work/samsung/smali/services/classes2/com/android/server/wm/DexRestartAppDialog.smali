.class public Lcom/android/server/wm/DexRestartAppDialog;
.super Landroid/app/AlertDialog;
.source "DexRestartAppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "DexRestartAppDialog"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mContext:Landroid/content/Context;

.field public final mDexController:Lcom/android/server/wm/DexController;

.field public final mDialogController:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

.field public final mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

.field public final mInfo:Lcom/android/server/wm/DexRestartAppInfo;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRun:Z

.field public final mTargetDisplayId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTargetDisplayId(Lcom/android/server/wm/DexRestartAppDialog;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mTargetDisplayId:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DexController;Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;Lcom/android/server/wm/DexRestartAppInfo;I)V
    .registers 8

    const v0, 0x1030593

    .line 56
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 139
    new-instance v0, Lcom/android/server/wm/DexRestartAppDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DexRestartAppDialog$1;-><init>(Lcom/android/server/wm/DexRestartAppDialog;)V

    iput-object v0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 59
    iput-object p2, p0, Lcom/android/server/wm/DexRestartAppDialog;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    iput-object p3, p0, Lcom/android/server/wm/DexRestartAppDialog;->mDexController:Lcom/android/server/wm/DexController;

    .line 61
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wm/DexRestartAppDialog;->mContext:Landroid/content/Context;

    .line 62
    iput-object p4, p0, Lcom/android/server/wm/DexRestartAppDialog;->mDialogController:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    .line 63
    iput-object p5, p0, Lcom/android/server/wm/DexRestartAppDialog;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    .line 64
    iput p6, p0, Lcom/android/server/wm/DexRestartAppDialog;->mTargetDisplayId:I

    const/4 p4, 0x1

    .line 65
    invoke-virtual {p0, p4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const p6, 0x1040433

    .line 66
    invoke-virtual {p1, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    new-array p4, p4, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 67
    invoke-virtual {p5, p1, p2}, Lcom/android/server/wm/DexRestartAppInfo;->getAppName(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p5, 0x0

    aput-object p2, p4, p5

    .line 66
    invoke-static {p6, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string p4, "layout_inflater"

    .line 70
    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    const p4, 0x109007e

    const/4 p5, 0x0

    .line 71
    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const p4, 0x10202be

    .line 72
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/android/server/wm/DexRestartAppDialog;->mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

    .line 73
    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const p3, 0x1040431

    .line 75
    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    const/4 p4, -0x1

    invoke-virtual {p0, p4, p3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p3, 0x1040000

    .line 76
    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p3, -0x2

    invoke-virtual {p0, p3, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7d3

    invoke-virtual {p1, p3}, Landroid/view/Window;->setType(I)V

    .line 79
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p3, 0x20000

    invoke-virtual {p1, p3, p3}, Landroid/view/Window;->setFlags(II)V

    .line 81
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x51

    invoke-virtual {p1, p3}, Landroid/view/Window;->setGravity(I)V

    .line 83
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p2, p2, 0x110

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 87
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final dismissSplitIfNeeded()V
    .registers 3

    .line 155
    iget v0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mTargetDisplayId:I

    if-nez v0, :cond_45

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 157
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 158
    iget-object p0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    iget-object p0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    .line 159
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object p0

    .line 158
    invoke-static {p0}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 160
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 161
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-nez v1, :cond_32

    .line 162
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 163
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3a

    const/4 v1, 0x2

    .line 168
    :cond_3a
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 172
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;)V

    :cond_45
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 p1, -0x2

    const-string v0, "DexRestartAppDialog"

    if-eq p2, p1, :cond_46

    const/4 p1, -0x1

    if-eq p2, p1, :cond_9

    goto :goto_4c

    .line 119
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/DexRestartAppDialog;->mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1f

    .line 121
    iget-object v1, p0, Lcom/android/server/wm/DexRestartAppDialog;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_chooser_do_not_show_again"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick Positive button. Do_not_show_again="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/android/server/wm/DexRestartAppDialog;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    iget v1, p0, Lcom/android/server/wm/DexRestartAppDialog;->mTargetDisplayId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DexController;->scheduleMoveTasksBackAndStartPendingActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V

    .line 126
    iget-object p1, p0, Lcom/android/server/wm/DexRestartAppDialog;->mDialogController:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->setRestartDialogShowRequested(Z)V

    .line 127
    iput-boolean p2, p0, Lcom/android/server/wm/DexRestartAppDialog;->mRun:Z

    goto :goto_4c

    :cond_46
    const-string/jumbo p0, "onClick Negative button."

    .line 132
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 92
    iget v0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mTargetDisplayId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 93
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/android/server/wm/DexRestartAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 97
    :cond_24
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 104
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/DexRestartAppDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mDialogController:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->setRestartDialogShowRequested(Z)V

    .line 107
    iget-boolean v0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mRun:Z

    if-nez v0, :cond_2c

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/DexRestartAppDialog;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/DexRestartAppDialog;->dismissSplitIfNeeded()V

    .line 110
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2c

    :catchall_26
    move-exception p0

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_2c
    :goto_2c
    return-void
.end method
