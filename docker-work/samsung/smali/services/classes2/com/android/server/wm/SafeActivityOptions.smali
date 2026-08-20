.class public Lcom/android/server/wm/SafeActivityOptions;
.super Ljava/lang/Object;
.source "SafeActivityOptions.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field public mCallerOptions:Landroid/app/ActivityOptions;

.field public final mOriginalCallingPid:I

.field public final mOriginalCallingUid:I

.field public final mOriginalOptions:Landroid/app/ActivityOptions;

.field public mRealCallingPid:I

.field public mRealCallingUid:I


# direct methods
.method public constructor <init>(Landroid/app/ActivityOptions;)V
    .registers 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    .line 108
    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SafeActivityOptions created, mOriginalCallingPid="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mOriginalCallingUid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", options="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    .line 114
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    .line 112
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityOptions;II)V
    .registers 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p2, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    .line 126
    iput p3, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    .line 127
    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method public static abort(Lcom/android/server/wm/SafeActivityOptions;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 222
    invoke-virtual {p0}, Lcom/android/server/wm/SafeActivityOptions;->abort()V

    :cond_5
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;
    .registers 2

    if-eqz p0, :cond_c

    .line 82
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;
    .registers 4

    if-eqz p0, :cond_c

    .line 93
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method


# virtual methods
.method public final abort()V
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_7

    .line 213
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 215
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_e

    .line 216
    invoke-static {p0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :cond_e
    return-void
.end method

.method public final checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V
    .registers 23

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    .line 250
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    const-string v7, "android.permission.START_TASKS_FROM_RECENTS"

    const/4 v8, -0x1

    const-string v9, "ActivityTaskManager"

    const-string v10, ", uid="

    const-string v11, " (pid="

    const-string v12, " from "

    const-string v13, "Permission Denial: starting "

    if-eq v6, v8, :cond_67

    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 251
    invoke-virtual {v6, v5}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    if-nez v6, :cond_67

    .line 252
    invoke-static {v7, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v8, :cond_2d

    goto :goto_67

    .line 255
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with launchTaskId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_67
    :goto_67
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 266
    invoke-virtual {v6}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_79

    :cond_78
    const/4 v6, 0x0

    :goto_79
    if-eqz v1, :cond_ba

    if-eqz v6, :cond_ba

    .line 268
    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnTaskDisplayArea(IILcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo;)Z

    move-result v14

    if-eqz v14, :cond_84

    goto :goto_ba

    .line 270
    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with launchTaskDisplayArea="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_ba
    :goto_ba
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v6

    if-eqz v1, :cond_ff

    if-eq v6, v8, :cond_ff

    .line 279
    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-eqz v8, :cond_c9

    goto :goto_ff

    .line 281
    :cond_c9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with launchDisplayId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_ff
    :goto_ff
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v6

    if-eqz v1, :cond_14d

    if-eqz v6, :cond_14d

    .line 290
    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 291
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v6

    .line 292
    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 291
    invoke-virtual {v6, v8, v14}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11a

    goto :goto_14d

    .line 293
    :cond_11a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with lockTaskMode=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_14d
    :goto_14d
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v6

    if-eqz v1, :cond_18f

    if-eqz v6, :cond_18f

    .line 303
    invoke-static {v7, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_15c

    goto :goto_18f

    .line 306
    :cond_15c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with overrideTaskTransition=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_18f
    :goto_18f
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    if-eqz v1, :cond_1d3

    .line 316
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    invoke-static {v1, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1a0

    goto :goto_1d3

    .line 319
    :cond_1a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with remoteAnimationAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_1d3
    :goto_1d3
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchedFromBubble()Z

    move-result v1

    if-eqz v1, :cond_213

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/SafeActivityOptions;->isSystemOrSystemUI(II)Z

    move-result v1

    if-eqz v1, :cond_1e0

    goto :goto_213

    .line 328
    :cond_1e0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with launchedFromBubble=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_213
    :goto_213
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v1

    if-eqz v1, :cond_26d

    .line 337
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/SafeActivityOptions;->isSystemOrSystemUI(II)Z

    move-result v6

    if-nez v6, :cond_26d

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne v1, v7, :cond_22c

    .line 340
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 341
    invoke-virtual {p0, v1, v5}, Lcom/android/server/wm/SafeActivityOptions;->isAssistant(Lcom/android/server/wm/ActivityTaskManagerService;I)Z

    move-result v1

    if-eqz v1, :cond_22c

    const/4 v6, 0x1

    :cond_22c
    if-eqz v6, :cond_22f

    goto :goto_26d

    .line 346
    :cond_22f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with launchActivityType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26d
    :goto_26d
    return-void
.end method

.method public final getIntentString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_7

    .line 387
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_7
    const-string p0, "(no intent)"

    :goto_9
    return-object p0
.end method

.method public getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 168
    iget-object v5, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_19

    .line 169
    iget v6, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v7, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v2, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/SafeActivityOptions;->setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V

    .line 174
    :cond_19
    iget-object v8, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v8, :cond_32

    .line 175
    iget v9, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iget v10, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V

    .line 177
    iget-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    iget p2, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iget p3, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/SafeActivityOptions;->setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V

    .line 180
    :cond_32
    iget-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget-object p2, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SafeActivityOptions;->mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 147
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalOptions()Landroid/app/ActivityOptions;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public final isAssistant(Lcom/android/server/wm/ActivityTaskManagerService;I)Z
    .registers 7

    .line 357
    iget-object p0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    const/4 p1, 0x0

    if-nez p0, :cond_6

    return p1

    .line 362
    :cond_6
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 364
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/32 v1, 0x10000000

    .line 366
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 364
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1d

    if-ne p0, p2, :cond_1d

    const/4 p0, 0x1

    return p0

    :catch_1d
    :cond_1d
    return p1
.end method

.method public final isSystemOrSystemUI(II)Z
    .registers 4

    const/4 p0, 0x1

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_6

    return p0

    :cond_6
    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    .line 381
    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    if-nez p2, :cond_6

    return-object p1

    .line 239
    :cond_6
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 240
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 241
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 242
    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public popAppVerificationBundle()Landroid/os/Bundle;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public setCallerOptions(Landroid/app/ActivityOptions;)V
    .registers 3

    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    .line 138
    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method public final setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V
    .registers 4

    .line 185
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 189
    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    if-ne p2, p1, :cond_15

    const-string p0, "ActivityTaskManager"

    const-string p1, "Safe activity options constructed after clearing calling id"

    .line 190
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 193
    :cond_15
    invoke-virtual {p0, p2, p3}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    return-void
.end method
