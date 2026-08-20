.class public Lcom/android/server/wm/RemoteAppController;
.super Ljava/lang/Object;
.source "RemoteAppController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RemoteAppController$CallerInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RemoteAppController"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RemoteAppControllerCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mRoot:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static isInterceptRequested(Landroid/content/Intent;)Z
    .registers 1

    .line 290
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->isRemoteAppLaunch()Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidActivityTypeLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 285
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, "[RemoteAppController]"

    .line 78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "isRemoteAppDisplayRunning="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayRunningLocked()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public initialize()V
    .registers 1

    return-void
.end method

.method public interceptMoveTaskToBackLocked(I)Z
    .registers 2

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RemoteAppController;->notifyMoveTaskToBackLocked(I)Z

    move-result p0

    return p0
.end method

.method public interceptStartActivityFromRecentsLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;ILjava/lang/String;)Z
    .registers 21

    move-object/from16 v0, p0

    move/from16 v12, p3

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    .line 164
    iget-object v1, v0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v13, :cond_d1

    .line 165
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_d1

    if-nez v1, :cond_19

    goto/16 :goto_d1

    .line 167
    :cond_19
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v1

    const-string v14, "RemoteAppController"

    if-eqz v1, :cond_3a

    .line 168
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_39

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptStartActivityFromRecentsLocked: Can\'t intercept taskOverlay, r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return v2

    .line 173
    :cond_3a
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 174
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_58

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptStartActivityFromRecentsLocked: Can\'t intercept Chooser/Resolver, r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return v2

    :cond_59
    if-nez v12, :cond_d1

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayLocked(I)Z

    move-result v1

    if-eqz v1, :cond_d1

    const/4 v15, 0x2

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    .line 185
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v11, 0x0

    const/4 v10, 0x2

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/RemoteAppController;->notifyStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;IILcom/android/server/wm/ActivityStarter$Request;)Z

    move-result v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptStartActivityFromRecentsLocked: intercepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", recentTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", intercept_reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {v15}, Lcom/android/server/wm/RemoteAppControllerCallbacks;->interceptReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v14, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d1
    :goto_d1
    return v2
.end method

.method public interceptStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Lcom/android/server/wm/ActivityStarter$Request;)Z
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p5

    .line 201
    iget-object v1, v0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 202
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    if-eqz v2, :cond_142

    if-nez v1, :cond_17

    goto/16 :goto_142

    .line 204
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v2

    const-string v15, "RemoteAppController"

    if-eqz v2, :cond_38

    .line 205
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_37

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptStartActivityLocked: Can\'t intercept taskOverlay, r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return v3

    .line 209
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 210
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_56

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptStartActivityLocked: Can\'t intercept Chooser/Resolver, r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return v3

    .line 219
    :cond_57
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/server/wm/RemoteAppController;->isInterceptRequested(Landroid/content/Intent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_64

    const/4 v1, 0x4

    :goto_61
    move/from16 v16, v1

    goto :goto_ad

    .line 222
    :cond_64
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v2

    if-eqz v2, :cond_96

    if-nez v13, :cond_6e

    move v2, v4

    goto :goto_6f

    :cond_6e
    move v2, v3

    .line 224
    :goto_6f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_81

    .line 225
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    if-lez v5, :cond_81

    if-nez v2, :cond_7f

    if-eq v1, v13, :cond_81

    :cond_7f
    move v1, v4

    goto :goto_92

    :cond_81
    if-eqz v13, :cond_90

    .line 228
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    if-eq v1, v14, :cond_90

    const/4 v1, 0x3

    move/from16 v17, v4

    move v4, v1

    move/from16 v1, v17

    goto :goto_92

    :cond_90
    move v1, v3

    move v4, v1

    :goto_92
    move/from16 v16, v4

    move v4, v1

    goto :goto_ad

    .line 232
    :cond_96
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_aa

    if-eqz v13, :cond_aa

    .line 233
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayLocked(I)Z

    move-result v1

    if-eqz v1, :cond_aa

    const/4 v1, 0x2

    goto :goto_61

    :cond_aa
    move v4, v3

    move/from16 v16, v4

    :goto_ad
    if-eqz v4, :cond_142

    const/4 v1, 0x0

    if-eqz v13, :cond_bd

    .line 243
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    .line 244
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    move v5, v1

    move-object v6, v2

    goto :goto_bf

    :cond_bd
    move-object v6, v1

    move v5, v3

    .line 246
    :goto_bf
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v12, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move/from16 v4, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move/from16 v10, v16

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/RemoteAppController;->notifyStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;IILcom/android/server/wm/ActivityStarter$Request;)Z

    move-result v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptStartActivityLocked: intercepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", opts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reusedTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sourceRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", intentGrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", intercept_reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static/range {v16 .. v16}, Lcom/android/server/wm/RemoteAppControllerCallbacks;->interceptReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v15, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_142
    :goto_142
    return v3
.end method

.method public isRemoteAppDisplayLocked(I)Z
    .registers 5

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 276
    iget-object v1, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 277
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_1d

    .line 278
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result p0

    return p0

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isRemoteAppDisplayRunningLocked()Z
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 266
    iget-object v2, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 267
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public notifyMoveTaskToBackLocked(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public notifyStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;IILcom/android/server/wm/ActivityStarter$Request;)Z
    .registers 12
    .param p10    # I
        .annotation build Lcom/android/server/wm/RemoteAppControllerCallbacks$InterceptReason;
        .end annotation
    .end param

    if-eqz p8, :cond_11

    if-eqz p7, :cond_a

    .line 132
    new-instance p1, Lcom/android/server/wm/RemoteAppController$CallerInfo;

    invoke-direct {p1, p0, p7}, Lcom/android/server/wm/RemoteAppController$CallerInfo;-><init>(Lcom/android/server/wm/RemoteAppController;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_11

    :cond_a
    if-eqz p11, :cond_11

    .line 134
    new-instance p1, Lcom/android/server/wm/RemoteAppController$CallerInfo;

    invoke-direct {p1, p0, p11}, Lcom/android/server/wm/RemoteAppController$CallerInfo;-><init>(Lcom/android/server/wm/RemoteAppController;Lcom/android/server/wm/ActivityStarter$Request;)V

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return p0
.end method

.method public registerCallbacks(Lcom/android/server/wm/RemoteAppControllerCallbacks;)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "RemoteAppController"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallbacks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 73
    iget-object p1, p0, Lcom/android/server/wm/RemoteAppController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    return-void
.end method

.method public startActivityAsCaller(Landroid/content/Intent;Lcom/android/server/wm/RemoteAppController$CallerInfo;ILandroid/os/Bundle;)V
    .registers 6

    .line 298
    iget-object p0, p0, Lcom/android/server/wm/RemoteAppController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    const-string/jumbo v0, "startActivityAsCaller"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget p1, p2, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromUid:I

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object p1, p2, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromPackage:Ljava/lang/String;

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object p1, p2, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromFeatureId:Ljava/lang/String;

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object p1, p2, Lcom/android/server/wm/RemoteAppController$CallerInfo;->resolvedType:Ljava/lang/String;

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    const/4 p1, -0x1

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 304
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 305
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    const/4 p1, 0x0

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 307
    iget-boolean p3, p2, Lcom/android/server/wm/RemoteAppController$CallerInfo;->isResolver:Z

    if-eqz p3, :cond_3c

    goto :goto_3e

    :cond_3c
    iget p1, p2, Lcom/android/server/wm/RemoteAppController$CallerInfo;->launchedFromUid:I

    :goto_3e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    const/4 p1, 0x1

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    return-void
.end method

.method public unregisterCallbacks(Lcom/android/server/wm/RemoteAppControllerCallbacks;)V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p0, "RemoteAppController"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterCallbacks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method
