.class public Lcom/android/server/wm/NaturalSwitchingController;
.super Ljava/lang/Object;
.source "NaturalSwitchingController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NaturalSwitchingController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mDeathRecipient:Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;

.field public mExitAnimationPreparing:Z

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mHideNaturalSwitchingTaskOnly:Z

.field public final mNaturalSwitchingAnimTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public mNaturalSwitchingCallback:Landroid/os/IRemoteCallback;

.field public mNaturalSwitchingRunning:Z

.field public mNaturalSwitchingTask:Lcom/android/server/wm/Task;

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/wm/NaturalSwitchingController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNaturalSwitchingCallback(Lcom/android/server/wm/NaturalSwitchingController;)Landroid/os/IRemoteCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingCallback:Landroid/os/IRemoteCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    .line 56
    iput-boolean v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mHideNaturalSwitchingTaskOnly:Z

    .line 57
    iput-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingCallback:Landroid/os/IRemoteCallback;

    .line 58
    new-instance v2, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;-><init>(Lcom/android/server/wm/NaturalSwitchingController;Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient-IA;)V

    iput-object v2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mDeathRecipient:Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingAnimTasks:Ljava/util/ArrayList;

    .line 69
    iput-boolean v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mExitAnimationPreparing:Z

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 74
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public final addSyncAppsForExitAnimation()V
    .registers 5

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 279
    iget-boolean v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mHideNaturalSwitchingTaskOnly:Z

    if-eqz v1, :cond_17

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 283
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 285
    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 286
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    if-ne v1, v2, :cond_1f

    .line 287
    :cond_35
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 288
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_1f

    .line 291
    :cond_42
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 292
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v2, :cond_4d

    goto :goto_1f

    .line 295
    :cond_4d
    iget-object v2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    const-string v3, "natural_switching"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/ChangeTransitionController;->addToSyncApps(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    goto :goto_1f

    :cond_57
    return-void
.end method

.method public addToNaturalSwitchingAnimTasks(Lcom/android/server/wm/Task;)V
    .registers 5

    if-eqz p1, :cond_7

    .line 227
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_4b

    .line 228
    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingAnimTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4b

    .line 231
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 233
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Lcom/android/server/wm/Task;->mNaturalSwitchingBounds:Landroid/graphics/Rect;

    .line 234
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingAnimTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addToNaturalSwitchingAnimTasks: #"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NaturalSwitchingController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    return-void
.end method

.method public adjustShownAlphaIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 149
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/server/wm/NaturalSwitchingController;->shouldBeHiddenForNaturalSwitching(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 151
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_11
    return-void
.end method

.method public changeLayout(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 7

    .line 173
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 174
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    .line 176
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/NaturalSwitchingController;->getChanger(II)Lcom/android/server/wm/NaturalSwitchingChanger;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "changeLayout: invalid changer, from="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", to="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NaturalSwitchingController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_2d
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/NaturalSwitchingChanger;->setInitialState(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    .line 182
    invoke-virtual {v2}, Lcom/android/server/wm/NaturalSwitchingChanger;->changeLayout()V

    .line 184
    invoke-virtual {v2}, Lcom/android/server/wm/NaturalSwitchingChanger;->isExitAnimationNeeded()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 185
    invoke-virtual {v2}, Lcom/android/server/wm/NaturalSwitchingChanger;->shouldSyncTask()Z

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/NaturalSwitchingController;->prepareExitAnimation(Landroid/graphics/Rect;Z)V

    :cond_40
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const-string v0, "[NaturalSwitchingController]"

    .line 332
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 335
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isRunning=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_3f

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mNaturalSwitchingTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isExitAnimationPreparing()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isExitAnimationPreparing=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    :cond_59
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingAnimTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mNaturalSwitchingAnimTasks="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingAnimTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7a
    return-void
.end method

.method public executeExitAnimation()V
    .registers 4

    .line 300
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isExitAnimationPreparing()Z

    move-result v0

    const-string v1, "NaturalSwitchingController"

    if-nez v0, :cond_e

    const-string p0, "executeExitAnimation: failed, not ready"

    .line 301
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 304
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeExitAnimation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0}, Lcom/android/server/wm/NaturalSwitchingController;->setExitAnimationPreparing(Z)V

    .line 307
    iput-boolean v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mHideNaturalSwitchingTaskOnly:Z

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingAnimTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingAnimTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 312
    iget-object v2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ChangeTransitionController;->handleNaturalSwitchingTaskLocked(Lcom/android/server/wm/Task;)V

    goto :goto_3e

    .line 314
    :cond_52
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingAnimTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :cond_5c
    return-void
.end method

.method public finishNaturalSwitching()V
    .registers 5

    .line 122
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isRunning()Z

    move-result v0

    const-string v1, "NaturalSwitchingController"

    if-nez v0, :cond_e

    const-string p0, "finishNaturalSwitching: failed, it\'s not running!"

    .line 123
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isExitAnimationPreparing()Z

    move-result v0

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishNaturalSwitching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isExitAnimating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    if-nez v0, :cond_3f

    .line 133
    iput-boolean v1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mHideNaturalSwitchingTaskOnly:Z

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingAnimTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController;->notifyNaturalSwitchingFinish()V

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 141
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public getChanger(II)Lcom/android/server/wm/NaturalSwitchingChanger;
    .registers 5

    const/4 v0, 0x5

    const/4 v1, 0x6

    if-ne p1, v1, :cond_18

    if-ne p2, v1, :cond_e

    .line 192
    new-instance p1, Lcom/android/server/wm/NaturalSwitchingChanger$SplitToSplitChanger;

    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p1, p0}, Lcom/android/server/wm/NaturalSwitchingChanger$SplitToSplitChanger;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-object p1

    :cond_e
    if-ne p2, v0, :cond_18

    .line 195
    new-instance p1, Lcom/android/server/wm/NaturalSwitchingChanger$SplitToFreeformChanger;

    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p1, p0}, Lcom/android/server/wm/NaturalSwitchingChanger$SplitToFreeformChanger;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-object p1

    :cond_18
    if-ne p1, v0, :cond_2e

    if-ne p2, v1, :cond_24

    .line 200
    new-instance p1, Lcom/android/server/wm/NaturalSwitchingChanger$FreeformToSplitChanger;

    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p1, p0}, Lcom/android/server/wm/NaturalSwitchingChanger$FreeformToSplitChanger;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-object p1

    :cond_24
    if-ne p2, v0, :cond_2e

    .line 203
    new-instance p1, Lcom/android/server/wm/NaturalSwitchingChanger$FreeformToFreeformChanger;

    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p1, p0}, Lcom/android/server/wm/NaturalSwitchingChanger$FreeformToFreeformChanger;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-object p1

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize()V
    .registers 1

    return-void
.end method

.method public isExitAnimationPreparing()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 273
    iget-boolean p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mExitAnimationPreparing:Z

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    return p0
.end method

.method public onChangeTransitStateReady()V
    .registers 3

    .line 211
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isExitAnimationPreparing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_10

    .line 213
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    goto :goto_13

    .line 215
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->executeExitAnimation()V

    :cond_13
    :goto_13
    return-void
.end method

.method public onStopFreezingDisplay(I)V
    .registers 2

    if-nez p1, :cond_b

    .line 221
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isExitAnimationPreparing()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 222
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->executeExitAnimation()V

    :cond_b
    return-void
.end method

.method public final prepareExitAnimation(Landroid/graphics/Rect;Z)V
    .registers 6

    .line 240
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isExitAnimationPreparing()Z

    move-result v0

    const-string v1, "NaturalSwitchingController"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "prepareExitAnimation: failed, exit animation is already prepare state!"

    .line 241
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 244
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->addSyncAppsForExitAnimation()V

    if-eqz p2, :cond_23

    .line 245
    iget-object p2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    if-eqz p2, :cond_23

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v2, "natural_switching"

    invoke-virtual {v0, p2, v2}, Lcom/android/server/wm/ChangeTransitionController;->addToSyncTasks(ILjava/lang/String;)V

    .line 249
    :cond_23
    iget-object p2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p2}, Lcom/android/server/wm/ChangeTransitionController;->isPreparing()Z

    move-result p2

    if-nez p2, :cond_34

    const-string/jumbo p0, "prepareExitAnimation: failed to sync!"

    .line 250
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 253
    :cond_34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "prepareExitAnimation: t="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 255
    invoke-virtual {p0, p2}, Lcom/android/server/wm/NaturalSwitchingController;->setExitAnimationPreparing(Z)V

    .line 256
    iget-object p2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ChangeTransitionController;->freezeDisplay(Z)V

    .line 257
    iget-object p2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    if-eqz p2, :cond_69

    .line 258
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p2, Lcom/android/server/wm/Task;->mNaturalSwitchingBounds:Landroid/graphics/Rect;

    .line 259
    iget-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingAnimTasks:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_69
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public setExitAnimationPreparing(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 266
    iget-boolean v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mExitAnimationPreparing:Z

    if-eq v0, p1, :cond_6

    .line 267
    iput-boolean p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mExitAnimationPreparing:Z

    :cond_6
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public final shouldBeHiddenForNaturalSwitching(Lcom/android/server/wm/Task;)Z
    .registers 5

    .line 160
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 161
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_31

    .line 162
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_31

    .line 165
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1a

    return v2

    .line 168
    :cond_1a
    iget-boolean p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mHideNaturalSwitchingTaskOnly:Z

    if-nez p0, :cond_31

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p0

    if-nez p0, :cond_30

    .line 169
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-nez p0, :cond_30

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_31

    :cond_30
    move v1, v2

    :cond_31
    :goto_31
    return v1
.end method

.method public startNaturalSwitching(ILandroid/os/IRemoteCallback;)Z
    .registers 8

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isRunning()Z

    move-result v0

    const-string v1, "NaturalSwitchingController"

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const-string/jumbo p0, "startNaturalSwitching: failed, already running!"

    .line 88
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 91
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isExitAnimationPreparing()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo p0, "startNaturalSwitching: failed, animating exit!"

    .line 92
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 97
    :cond_1d
    :try_start_1d
    invoke-interface {p2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/NaturalSwitchingController;->mDeathRecipient:Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;

    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_8c

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x1

    .line 105
    iput-boolean v4, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 106
    iput-object p2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingCallback:Landroid/os/IRemoteCallback;

    .line 107
    iget-object p2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p2}, Lcom/android/server/wm/MultiTaskingController;->notifyNaturalSwitchingStart()V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_6d

    .line 109
    iget-object p2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_6b

    .line 111
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 112
    invoke-virtual {p1, v3}, Lcom/android/server/wm/MultiTaskingController;->canUseCellWindowingModeLocked(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 113
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_6a

    :cond_64
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p1

    if-eqz p1, :cond_6b

    :goto_6a
    move v2, v4

    :cond_6b
    iput-boolean v2, p0, Lcom/android/server/wm/NaturalSwitchingController;->mHideNaturalSwitchingTaskOnly:Z

    .line 115
    :cond_6d
    iput-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 116
    iget-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startNaturalSwitching: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_8c
    const-string/jumbo p0, "startNaturalSwitching: failed, cannot link to death"

    .line 99
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
