.class public Lcom/android/server/wm/CustomLetterboxEnhancedController;
.super Ljava/lang/Object;
.source "CustomLetterboxEnhancedController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;,
        Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;,
        Lcom/android/server/wm/CustomLetterboxEnhancedController$VisibleReason;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CustomLetterbox"


# instance fields
.field public final mDisplay:Lcom/android/server/wm/DisplayContent;

.field public mEnhancedEnabled:Z

.field public mEnhancedReason:I

.field public final mHandler:Landroid/os/Handler;

.field public mOnApplyLetterboxEnhanced:Ljava/lang/Runnable;

.field public mSeq:J

.field public mShouldShowLetterbox:Z

.field public final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mWaitingForEnhancedEnabled:Z

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$aW8KS0ujA4PBhSmLPF_sNelJTHQ(Lcom/android/server/wm/CustomLetterboxEnhancedController;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->lambda$scheduleCompleteLetterboxEnhanced$1(JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gKBCpFXJe39EBJGpuI2e0jCajxE(Lcom/android/server/wm/CustomLetterboxEnhancedController;Lcom/android/server/wm/Task;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->hasCustomLetterboxEnabledLocked(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jzNmi6lxkUUtM3W5EX8Z7v1iFao(Lcom/android/server/wm/CustomLetterboxEnhancedController;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->lambda$refreshLetterboxLocked$2(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sdCeyjCskXAcVGmV5qdgk8Jso00(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->lambda$hasCustomLetterboxEnabledLocked$0(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smenhancedReasonToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->enhancedReasonToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    .line 104
    new-instance v0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;)V

    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mOnApplyLetterboxEnhanced:Ljava/lang/Runnable;

    .line 107
    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 108
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 109
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 110
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static enhancedReasonToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_24

    .line 294
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "CAPTURED_WALLPAPER_NULL"

    return-object p0

    :pswitch_b
    const-string p0, "VISIBLE_WALLPAPER_NULL"

    return-object p0

    :pswitch_e
    const-string p0, "NO_LETTERBOX"

    return-object p0

    :pswitch_11
    const-string p0, "HOME_OR_RECENTS_VISIBLE"

    return-object p0

    :pswitch_14
    const-string p0, "DISPLAY_FOLDED"

    return-object p0

    :pswitch_17
    const-string p0, "LIVE_WALLPAPER"

    return-object p0

    :pswitch_1a
    const-string p0, "MODE_DISABLED"

    return-object p0

    :pswitch_1d
    const-string p0, "ENABLED"

    return-object p0

    :pswitch_20
    const-string p0, "UNDEFINED"

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static synthetic lambda$hasCustomLetterboxEnabledLocked$0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 155
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/BoundsCompatController;->isCustomLetterboxEnabled()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private synthetic lambda$refreshLetterboxLocked$2(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 230
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-virtual {p2, p0}, Lcom/android/server/wm/LetterboxUiController;->updateLetterboxSurface(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$scheduleCompleteLetterboxEnhanced$1(JZ)V
    .registers 5

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 191
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->completeLetterboxEnhancedLocked(JZ)V

    .line 192
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public addWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 2

    return-void
.end method

.method public adjustWallpaperWindowsLocked()V
    .registers 1

    return-void
.end method

.method public final applyLetterboxEnhancedIfNeededLocked(ZZZ)V
    .registers 6

    .line 123
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 126
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->getEnhancedReasonLocked(ZZ)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    move p1, v0

    goto :goto_14

    :cond_13
    move p1, p2

    .line 128
    :goto_14
    iget-boolean v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    if-eq p1, v1, :cond_19

    move p2, v0

    .line 129
    :cond_19
    iput-boolean p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    if-nez p2, :cond_21

    if-eqz p1, :cond_24

    if-eqz p3, :cond_24

    .line 131
    :cond_21
    invoke-virtual {p0, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->applyLetterboxEnhancedLocked(Z)V

    :cond_24
    return-void
.end method

.method public final applyLetterboxEnhancedLocked(Z)V
    .registers 6

    .line 160
    iget-wide v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLetterboxEnhancedLocked: seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    .line 163
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->enhancedReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabledChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    .line 165
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomLetterbox"

    .line 161
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-boolean p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    const/4 p1, 0x1

    .line 167
    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->refreshLetterboxLocked(ZZ)V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->removeCallbacks()V

    .line 170
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mOnApplyLetterboxEnhanced:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mOnApplyLetterboxEnhanced:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final completeLetterboxEnhancedLocked(JZ)V
    .registers 6

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isInvalidSeqLocked(J)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 200
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "completeLetterboxEnhancedLocked: seq="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", enabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    .line 202
    invoke-static {p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->enhancedReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", applied="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CustomLetterbox"

    .line 200
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 204
    iput-boolean p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    if-eqz p3, :cond_4b

    .line 205
    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    if-nez p2, :cond_49

    goto :goto_4b

    :cond_49
    move p2, p1

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 p2, 0x1

    :goto_4c
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->refreshLetterboxLocked(ZZ)V

    .line 206
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_HIDING_WALLPAPER:Z

    if-eqz p1, :cond_61

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->shouldHideWallpaper()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 207
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget p2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 209
    :cond_61
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 253
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "CustomLetterboxEnhancedController(mDisplayId="

    .line 254
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ")"

    .line 256
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSeq="

    .line 258
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    iget-wide v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, ", mEnhancedEnabled="

    .line 260
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, ", mEnhancedReason="

    .line 262
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    invoke-static {p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->enhancedReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 265
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mShouldShowLetterbox="

    .line 266
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, ", mWaitingForEnhancedEnabled="

    .line 268
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Z)V

    .line 270
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final failLetterboxEnhanced()V
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "CustomLetterbox"

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failLetterboxEnhanced: showLetterbox="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    .line 216
    invoke-static {v3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->enhancedReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 217
    iput-boolean v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    const/4 v1, 0x1

    .line 218
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->refreshLetterboxLocked(ZZ)V

    .line 219
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_44
    move-exception p0

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getCapturedBlurWallpaperInfo()Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;
    .registers 6

    .line 340
    new-instance v0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo-IA;)V

    .line 341
    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 342
    iget-wide v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    invoke-static {v0, v2, v3}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmSeq(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;J)V

    .line 343
    iget-boolean v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    invoke-static {v0, v2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmEnabled(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;Z)V

    .line 344
    iget v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedReason:I

    invoke-static {v0, v2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmReason(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 345
    iget-boolean v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    if-nez v2, :cond_26

    .line 346
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 348
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getLetterboxBackgroundWallpaperBlurRadius()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmBlurRadius(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 349
    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_44

    .line 351
    invoke-static {v0, v3}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmEnabled(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;Z)V

    const/4 p0, 0x7

    .line 352
    invoke-static {v0, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmReason(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 353
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 355
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 356
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmWidth(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 357
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmHeight(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 358
    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmWidth(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v2

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmHeight(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->getScreenshotLocked(II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmScreenshot(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;Landroid/graphics/Bitmap;)V

    .line 359
    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmScreenshot(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_7e

    .line 360
    invoke-static {v0, v3}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmEnabled(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;Z)V

    const/16 p0, 0x8

    .line 361
    invoke-static {v0, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fputmReason(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V

    .line 362
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_44 .. :try_end_7a} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 364
    :cond_7e
    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_83
    move-exception p0

    :try_start_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getEnhancedReasonLocked(ZZ)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    if-eqz p2, :cond_8

    const/4 p0, 0x3

    return p0

    .line 145
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 146
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 147
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p0, 0x5

    return p0

    .line 150
    :cond_22
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    new-instance p2, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_31

    const/4 p0, 0x1

    goto :goto_32

    :cond_31
    const/4 p0, 0x6

    :goto_32
    return p0
.end method

.method public final getScreenshotLocked(II)Landroid/graphics/Bitmap;
    .registers 13

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotExecutor:Lcom/android/server/wm/ScreenshotExecutor;

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 370
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/16 v3, 0x7dd

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v6, p1

    move v7, p2

    .line 369
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ScreenshotExecutor;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final hasCustomLetterboxEnabledLocked(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 155
    new-instance p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isAvailable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isInvalidSeqLocked(J)Z
    .registers 5

    .line 118
    iget-wide v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mSeq:J

    cmp-long p0, p1, v0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isWaitingForEnhancedEnabledLocked()Z
    .registers 1

    .line 249
    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    return p0
.end method

.method public onApplyLetterboxEnhanced()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    .line 179
    iput-boolean v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWaitingForEnhancedEnabled:Z

    .line 180
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final refreshLetterboxLocked(ZZ)V
    .registers 5

    .line 223
    iget-boolean v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 226
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshLetterboxLocked: shown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", immediately="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomLetterbox"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mDisplay:Lcom/android/server/wm/DisplayContent;

    new-instance v0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;Z)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    if-nez p2, :cond_33

    return-void

    .line 235
    :cond_33
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public removeCallbacks()V
    .registers 1

    return-void
.end method

.method public removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 2

    return-void
.end method

.method public final scheduleCompleteLetterboxEnhanced(JZ)V
    .registers 6

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isInvalidSeqLocked(J)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 186
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 188
    :cond_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_22
    move-exception p0

    .line 188
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public shouldHideWallpaper()Z
    .registers 2

    .line 299
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isAllowWallpaperBelowLetterbox()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mEnhancedEnabled:Z

    if-eqz v0, :cond_10

    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final shouldShowLetterbox()Z
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->shouldShowLetterboxLocked()Z

    move-result p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_11
    move-exception p0

    .line 241
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final shouldShowLetterboxLocked()Z
    .registers 1

    .line 245
    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mShouldShowLetterbox:Z

    return p0
.end method
