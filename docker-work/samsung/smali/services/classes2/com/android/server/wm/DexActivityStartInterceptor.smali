.class public Lcom/android/server/wm/DexActivityStartInterceptor;
.super Ljava/lang/Object;
.source "DexActivityStartInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;
    }
.end annotation


# static fields
.field public static final INTERCEPT_REASON_HAS_VISIBLE_ACTIVITY:I = 0x1

.field public static final INTERCEPT_REASON_PROCESS_CONFIGURATIONS:I = 0x2

.field public static final SAFE_DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "DexActivityStartInterceptor"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mDexController:Lcom/android/server/wm/DexController;

.field public mDexDisplay:Landroid/hardware/display/VirtualDisplay;

.field public final mDexRestartAppDialogController:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAtmService(Lcom/android/server/wm/DexActivityStartInterceptor;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDexController(Lcom/android/server/wm/DexActivityStartInterceptor;)Lcom/android/server/wm/DexController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDexDisplay(Lcom/android/server/wm/DexActivityStartInterceptor;)Landroid/hardware/display/VirtualDisplay;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDexRestartAppDialogController(Lcom/android/server/wm/DexActivityStartInterceptor;)Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexRestartAppDialogController:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetSAFE_DEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/DexActivityStartInterceptor;->SAFE_DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 50
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/DexActivityStartInterceptor;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 67
    iput-object p1, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    .line 68
    iput-object p2, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    new-instance p1, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;-><init>(Lcom/android/server/wm/DexActivityStartInterceptor;)V

    iput-object p1, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexRestartAppDialogController:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    return-void
.end method


# virtual methods
.method public final cancelIntercept(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 3

    .line 321
    invoke-static {p2}, Lcom/android/server/wm/DexController;->isDefaultOrDexDisplay(I)Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_8

    return p2

    .line 325
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result p0

    if-nez p0, :cond_f

    return p2

    .line 330
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "DexActivityStartInterceptor"

    const-string p1, "Overlay activity can be launched on any display."

    .line 331
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public final hasVisibleTaskLocked(Ljava/lang/String;II)Z
    .registers 5

    .line 316
    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/DexController;->getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public intercept(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IILandroid/app/ActivityOptions;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/Task;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v1, p2

    move/from16 v13, p5

    .line 86
    invoke-virtual {v0, v1, v13}, Lcom/android/server/wm/DexActivityStartInterceptor;->cancelIntercept(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    return v3

    :cond_10
    const/4 v2, 0x0

    if-eqz v5, :cond_18

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    goto :goto_19

    :cond_18
    move-object v4, v2

    :goto_19
    if-eqz v4, :cond_26

    .line 92
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_27

    :cond_26
    move-object v2, v4

    .line 95
    :goto_27
    iget-object v4, v0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v4}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v4

    const/4 v6, 0x2

    const/4 v14, 0x1

    const-string v7, "DexActivityStartInterceptor"

    if-eq v4, v6, :cond_6e

    if-eqz v2, :cond_3f

    if-nez v13, :cond_3f

    .line 98
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    if-ne v4, v6, :cond_3f

    move v4, v14

    goto :goto_40

    :cond_3f
    move v4, v3

    :goto_40
    if-eqz v4, :cond_6d

    .line 100
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v4

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v4, v6, :cond_54

    .line 101
    iget-object v0, v0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    move-object/from16 v4, p3

    move-object/from16 v15, p6

    invoke-virtual {v0, v5, v2, v4, v15}, Lcom/android/server/wm/DexController;->moveTaskToDefaultDisplayAndLayoutTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    return v3

    :cond_54
    move-object/from16 v4, p3

    move-object/from16 v15, p6

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delay stopping dex activity process kill, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :cond_6d
    return v3

    :cond_6e
    move-object/from16 v4, p3

    move-object/from16 v15, p6

    :goto_72
    if-eqz v2, :cond_75

    goto :goto_76

    :cond_75
    move-object v2, v1

    .line 113
    :goto_76
    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 114
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v11

    .line 115
    iget-object v6, v0, Lcom/android/server/wm/DexActivityStartInterceptor;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v12, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v6

    if-eqz v6, :cond_ad

    .line 117
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getDisplayId()I

    move-result v8

    if-ne v8, v13, :cond_8b

    goto :goto_ad

    .line 126
    :cond_8b
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v6

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v6, v8, :cond_b9

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip intercept "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is system process activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 119
    :cond_ad
    :goto_ad
    iget-object v6, v0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v6, v5, v12, v13}, Lcom/android/server/wm/DexController;->collectShouldKillProcess(Lcom/android/server/wm/Task;Ljava/lang/String;I)Landroid/util/SparseArray;

    move-result-object v6

    .line 120
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_13f

    .line 131
    :cond_b9
    sget-boolean v3, Lcom/android/server/wm/DexActivityStartInterceptor;->SAFE_DEBUG:Z

    if-eqz v3, :cond_e1

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intercept "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to d"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reusedTask="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_e1
    new-instance v3, Lcom/android/server/wm/PendingActivityLaunch;

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v10

    const/16 v16, 0x0

    move-object v6, v3

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move v4, v11

    move-object/from16 v11, v16

    move-object v1, v12

    move-object/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Lcom/android/server/wm/PendingActivityLaunch;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/uri/NeededUriGrants;)V

    .line 139
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v1

    move-object v1, v3

    move-object v2, v9

    move v3, v4

    move v10, v4

    move-object v4, v6

    move-object/from16 v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p6

    move/from16 v8, p5

    .line 140
    invoke-static/range {v1 .. v8}, Lcom/android/server/wm/DexRestartAppInfo;->createPendingActivityLaunchType(Lcom/android/server/wm/PendingActivityLaunch;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/DexRestartAppInfo;

    move-result-object v7

    .line 162
    iget-object v1, v0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1, v9, v10, v14, v13}, Lcom/android/server/wm/DexController;->getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_121

    .line 166
    iget-object v0, v0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0, v7, v13}, Lcom/android/server/wm/DexController;->scheduleMoveTasksBackAndStartPendingActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V

    goto :goto_13e

    .line 170
    :cond_121
    iget-object v1, v0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, v9

    move v3, v10

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DexController;->getTaskLocked(Ljava/lang/String;IZZI)Ljava/util/ArrayList;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_139

    .line 172
    iget-object v0, v0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0, v7, v13}, Lcom/android/server/wm/DexController;->KillProcessAndWaitDisposed(Lcom/android/server/wm/DexRestartAppInfo;I)V

    goto :goto_13e

    .line 174
    :cond_139
    iget-object v0, v0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0, v7, v13}, Lcom/android/server/wm/DexController;->scheduleKillProcessAndStartActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V

    :goto_13e
    return v14

    .line 123
    :cond_13f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do not need process kill, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public interceptPairApps(Landroid/window/WindowContainerTransaction;)Z
    .registers 14

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    return v2

    .line 251
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    :cond_2b
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 258
    invoke-virtual {v7}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_40

    goto :goto_2b

    .line 262
    :cond_40
    new-instance v8, Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 263
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v8

    if-nez v8, :cond_54

    goto :goto_2b

    .line 267
    :cond_54
    invoke-virtual {v7}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_5b

    goto :goto_2b

    :cond_5b
    const/high16 v8, 0x10000

    .line 271
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 273
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_65
    :goto_65
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 274
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_65

    .line 276
    iget-object v9, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    if-eqz v9, :cond_65

    .line 278
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getDisplayId()I

    move-result v10

    if-nez v10, :cond_8a

    goto :goto_65

    .line 283
    :cond_8a
    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_65

    .line 284
    iget-object v7, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v7, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v7

    if-eqz v7, :cond_b3

    or-int/lit8 v6, v6, 0x1

    .line 290
    invoke-virtual {v8, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2b

    :cond_b3
    or-int/lit8 v6, v6, 0x2

    goto/16 :goto_2b

    :cond_b7
    if-eqz v6, :cond_cc

    .line 301
    invoke-static {v1, v3, v4, p1}, Lcom/android/server/wm/DexRestartAppInfo;->createPendingPairAppsLaunchType(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/window/WindowContainerTransaction;)Lcom/android/server/wm/DexRestartAppInfo;

    move-result-object p1

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_c7

    .line 304
    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexRestartAppDialogController:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->showRestartAppDialogLocked(Lcom/android/server/wm/DexRestartAppInfo;I)V

    goto :goto_cc

    .line 307
    :cond_c7
    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DexController;->scheduleMoveTasksBackAndStartPendingActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V

    :cond_cc
    :goto_cc
    if-eqz v6, :cond_cf

    const/4 v2, 0x1

    :cond_cf
    return v2
.end method

.method public interceptStartFromRecents(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Z
    .registers 13

    if-eqz p2, :cond_7

    .line 182
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    .line 183
    :goto_8
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    .line 188
    :cond_10
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DexActivityStartInterceptor;->cancelIntercept(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v3

    if-eqz v3, :cond_17

    return v2

    .line 192
    :cond_17
    iget-object v3, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v3}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v3

    const/4 v7, 0x1

    const-string v4, "DexActivityStartInterceptor"

    const/4 v5, 0x2

    if-eq v3, v5, :cond_55

    if-nez v0, :cond_2d

    .line 194
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    if-ne v3, v5, :cond_2d

    move v3, v7

    goto :goto_2e

    :cond_2d
    move v3, v2

    :goto_2e
    if-eqz v3, :cond_54

    .line 196
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v3

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v3, v5, :cond_3f

    .line 197
    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/server/wm/DexController;->moveTaskToDefaultDisplayAndLayoutTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    return v2

    .line 201
    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delay stopping dex activity process kill, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :cond_54
    return v2

    .line 208
    :cond_55
    :goto_55
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 209
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v8

    .line 210
    iget-object v5, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v3, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    if-eqz v9, :cond_aa

    .line 212
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getDisplayId()I

    move-result v3

    if-ne v3, v0, :cond_6a

    goto :goto_aa

    .line 218
    :cond_6a
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 220
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, p1

    move-object v5, p2

    move v6, v0

    .line 219
    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/DexRestartAppInfo;->createStartActivityFromRecentsType(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/DexRestartAppInfo;

    move-result-object p1

    .line 230
    iget-object p2, v9, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {p0, p2, v8, v0}, Lcom/android/server/wm/DexActivityStartInterceptor;->hasVisibleTaskLocked(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_8c

    .line 234
    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DexController;->scheduleMoveTasksBackAndStartPendingActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V

    goto :goto_a9

    .line 237
    :cond_8c
    iget-object v1, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v2, v9, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v3, v8

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DexController;->getTaskLocked(Ljava/lang/String;IZZI)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a4

    .line 238
    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DexController;->KillProcessAndWaitDisposed(Lcom/android/server/wm/DexRestartAppInfo;I)V

    goto :goto_a9

    .line 240
    :cond_a4
    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DexController;->scheduleKillProcessAndStartActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V

    :goto_a9
    return v7

    .line 213
    :cond_aa
    :goto_aa
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "do not need process kill, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public setDexDisplay(Landroid/hardware/display/VirtualDisplay;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method

.method public setDoNotShowAgainChecked(Z)V
    .registers 2

    .line 343
    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor;->mDexRestartAppDialogController:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->setDoNotShowAgainChecked(Z)V

    return-void
.end method
