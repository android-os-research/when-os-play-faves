.class public Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;
.super Ljava/lang/Object;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyEventHandler"
.end annotation


# static fields
.field public static final KEY_TYPE_MEDIA:I = 0x0

.field public static final KEY_TYPE_VOLUME:I = 0x1


# instance fields
.field public mIsLongPressing:Z

.field public mKeyType:I

.field public mLongPressRunnableInBlackScreen:Ljava/lang/Runnable;

.field public mLongPressTimeoutRunnable:Ljava/lang/Runnable;

.field public mMultiTapCount:I

.field public mMultiTapKeyCode:I

.field public mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

.field public mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method public static synthetic $r8$lambda$xhehcLP9Bh9FDjVXuEYn2WKCL-c(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateCanceledKeyEvent(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createCanceledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdispatchDownAndUpKeyEventsLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V
    .registers 10

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->dispatchDownAndUpKeyEventsLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetLongPressTracking(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetMultiTapTrackingLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetMultiTapTrackingLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V
    .registers 3

    .line 2821
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3158
    new-instance p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressRunnableInBlackScreen:Ljava/lang/Runnable;

    .line 2822
    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 4

    .line 3159
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3160
    :try_start_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmVolumeKeyLongPressReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 3162
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    const/4 v1, 0x1

    .line 3163
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 3165
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_25

    throw p0
.end method


# virtual methods
.method public final cancelTrackingIfNeeded(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZI)V
    .registers 22

    move-object v0, p0

    move-object/from16 v7, p5

    .line 2944
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_c

    return-void

    .line 2948
    :cond_c
    invoke-virtual {p0, v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2949
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_28

    .line 2950
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2951
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2953
    :cond_28
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_37

    .line 2954
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iget v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapKeyCode:I

    if-eq v1, v2, :cond_37

    .line 2955
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->runExistingMultiTapRunnableLocked()V

    .line 2957
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    return-void

    .line 2961
    :cond_3b
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    if-eqz v1, :cond_c9

    .line 2962
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_c9

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2963
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_c9

    .line 2964
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_c9

    .line 2965
    invoke-virtual {p0, v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_bc

    .line 2966
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_6b

    .line 2967
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->runExistingMultiTapRunnableLocked()V

    :cond_6b
    and-int/lit8 v1, p10, 0x8

    if-nez v1, :cond_c9

    .line 2970
    iget v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    const/4 v10, 0x0

    if-ne v1, v2, :cond_a0

    .line 2971
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v1

    if-nez v1, :cond_c9

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2973
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mneedVolumeKeyLongPressBroadCastLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    if-nez v1, :cond_c9

    .line 2975
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object v2, p1

    move-object/from16 v3, p7

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchVolumeKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 2977
    iput-object v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    goto :goto_c9

    .line 2979
    :cond_a0
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    move-result v1

    if-nez v1, :cond_c9

    .line 2980
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 2982
    iput-object v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    goto :goto_c9

    .line 2985
    :cond_bc
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-le v1, v2, :cond_c9

    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    if-nez v1, :cond_c9

    .line 2986
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    :cond_c9
    :goto_c9
    return-void
.end method

.method public final createCanceledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 5

    const/4 p0, 0x1

    .line 3080
    invoke-static {p1, p0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p0

    .line 3081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x0

    const/16 v2, 0x20

    invoke-static {p0, v0, v1, p1, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object p0

    return-object p0
.end method

.method public createDoubleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZZ)Ljava/lang/Runnable;
    .registers 26

    .line 3133
    new-instance v13, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;

    move-object v0, v13

    move-object v1, p0

    move/from16 v2, p11

    move-object/from16 v3, p5

    move/from16 v4, p10

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;ZLandroid/view/KeyEvent;ZLjava/lang/String;IIZZLjava/lang/String;IZ)V

    return-object v13
.end method

.method public final createLongPressTimeoutRunnable(Landroid/view/KeyEvent;)Ljava/lang/Runnable;
    .registers 3

    .line 3062
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Landroid/view/KeyEvent;)V

    return-object v0
.end method

.method public createSingleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZ)Ljava/lang/Runnable;
    .registers 24

    .line 3115
    new-instance v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p10

    move-object/from16 v3, p5

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;ZLandroid/view/KeyEvent;Ljava/lang/String;IIZZLjava/lang/String;IZ)V

    return-object v12
.end method

.method public final dispatchDownAndUpKeyEventsLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V
    .registers 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v8, p5

    .line 3098
    invoke-static {v8, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 3099
    iget v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 3100
    iget-object v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v10, p1

    move-object/from16 v11, p7

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object v15, v1

    move/from16 v16, p8

    move/from16 v17, p9

    invoke-static/range {v9 .. v17}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchVolumeKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 3102
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v2 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchVolumeKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_59

    .line 3105
    :cond_38
    iget-object v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object v14, v1

    move/from16 v15, p6

    invoke-static/range {v9 .. v15}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 3107
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    :goto_59
    return-void
.end method

.method public handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V
    .registers 26

    move-object/from16 v12, p0

    move-object/from16 v11, p5

    .line 2841
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2846
    :cond_b
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    const/4 v13, 0x0

    if-eqz v0, :cond_44

    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    .line 2847
    invoke-virtual {v0}, Lcom/android/server/media/MediaKeyDispatcher;->getOverriddenKeyEvents()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 2848
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaKeyDispatcher;->getOverriddenKeyEvents()Ljava/util/Map;

    move-result-object v0

    .line 2849
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v14, v0

    goto :goto_45

    :cond_44
    move v14, v13

    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move v10, v14

    .line 2851
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->cancelTrackingIfNeeded(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZI)V

    .line 2853
    invoke-virtual {v12, v11, v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->needTracking(Landroid/view/KeyEvent;I)Z

    move-result v0

    const/4 v15, 0x1

    if-nez v0, :cond_90

    .line 2854
    iget v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    if-ne v0, v15, :cond_7e

    .line 2855
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchVolumeKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_8f

    .line 2858
    :cond_7e
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    :goto_8f
    return-void

    .line 2864
    :cond_90
    invoke-virtual {v12, v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 2865
    iput-object v11, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2866
    iput-boolean v13, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 2868
    iget v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    if-ne v0, v15, :cond_bd

    .line 2871
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressRunnableInBlackScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2872
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressRunnableInBlackScreen:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-$$Nest$sfgetLONG_PRESS_TIMEOUT()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_bd
    return-void

    .line 2879
    :cond_be
    invoke-virtual {v12, v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 2880
    iput-boolean v15, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 2881
    iget v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    if-ne v0, v15, :cond_d7

    .line 2882
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressRunnableInBlackScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2885
    :cond_d7
    iget-boolean v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    if-eqz v0, :cond_e1

    move/from16 v6, p6

    .line 2886
    invoke-virtual {v12, v11, v6, v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleLongPressLocked(Landroid/view/KeyEvent;ZI)V

    return-void

    :cond_e1
    move/from16 v6, p6

    .line 2890
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v15, :cond_1c4

    .line 2891
    iget v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    if-ne v0, v15, :cond_fa

    .line 2892
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressRunnableInBlackScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_fa
    const/4 v0, 0x0

    .line 2895
    iput-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2896
    invoke-virtual {v12, v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->shouldTrackForMultipleTapsLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 2897
    iget v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    if-nez v0, :cond_15a

    .line 2901
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 2898
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createSingleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZ)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2902
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 2903
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isDoubleTapOverridden(I)Z

    move-result v0

    if-nez v0, :cond_13e

    .line 2904
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isTripleTapOverridden(I)Z

    move-result v0

    if-nez v0, :cond_13e

    .line 2905
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1c4

    .line 2907
    :cond_13e
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-$$Nest$sfgetMULTI_TAP_TIMEOUT()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2909
    iput v15, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    .line 2910
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapKeyCode:I

    goto/16 :goto_1c4

    :cond_15a
    const/4 v13, 0x2

    if-ne v0, v15, :cond_1ae

    .line 2913
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2916
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result v10

    .line 2917
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isDoubleTapOverridden(I)Z

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move v11, v15

    .line 2914
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createDoubleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZZ)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2918
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isTripleTapOverridden(I)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 2919
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-$$Nest$sfgetMULTI_TAP_TIMEOUT()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2920
    iput v13, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    goto :goto_1c4

    .line 2922
    :cond_1a8
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1c4

    :cond_1ae
    if-ne v0, v13, :cond_1c4

    .line 2925
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2926
    invoke-virtual {v12, v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->onTripleTap(Landroid/view/KeyEvent;)V

    goto :goto_1c4

    .line 2929
    :cond_1c1
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->dispatchDownAndUpKeyEventsLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    :cond_1c4
    :goto_1c4
    return-void
.end method

.method public final handleLongPressLocked(Landroid/view/KeyEvent;ZI)V
    .registers 5

    .line 3028
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 3029
    invoke-static {p3}, Lcom/android/server/media/MediaKeyDispatcher;->isLongPressOverridden(I)Z

    move-result p3

    if-eqz p3, :cond_53

    .line 3030
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p2, p2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/media/MediaKeyDispatcher;->onLongPress(Landroid/view/KeyEvent;)V

    .line 3032
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_2c

    .line 3033
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p2, p2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3035
    :cond_2c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_4f

    .line 3036
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    if-nez p2, :cond_3c

    .line 3037
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createLongPressTimeoutRunnable(Landroid/view/KeyEvent;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    .line 3039
    :cond_3c
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-$$Nest$sfgetLONG_PRESS_TIMEOUT()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_86

    .line 3041
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    goto :goto_86

    .line 3044
    :cond_53
    iget p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_6f

    .line 3045
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_67

    .line 3046
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p2, p2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    invoke-static {p2, p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 3048
    :cond_67
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto :goto_86

    .line 3049
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p3

    if-eqz p3, :cond_86

    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 3050
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p3, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    move-result p1

    if-eqz p1, :cond_86

    .line 3052
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-static {p0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mstartVoiceInput(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Z)V

    :cond_86
    :goto_86
    return-void
.end method

.method public handleMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 17

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 2827
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    return-void
.end method

.method public handleVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Ljava/lang/String;IZ)V
    .registers 19

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 2834
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    return-void
.end method

.method public final isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 3091
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_e

    .line 3092
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 3086
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    const/4 v0, 0x1

    if-eqz p0, :cond_10

    .line 3087
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    if-ne p0, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final needTracking(Landroid/view/KeyEvent;I)Z
    .registers 9

    .line 2992
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 2993
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_c

    return v1

    .line 2995
    :cond_c
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2996
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v0, v2, :cond_25

    :cond_24
    return v1

    :cond_25
    const/4 v0, 0x1

    if-nez p2, :cond_52

    .line 3001
    iget p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    if-ne p2, v0, :cond_45

    .line 3002
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object p1

    if-nez p1, :cond_52

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3004
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mneedVolumeKeyLongPressBroadCastLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result p0

    if-nez p0, :cond_52

    return v1

    .line 3008
    :cond_45
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    move-result p0

    if-nez p0, :cond_52

    return v1

    :cond_52
    return v0
.end method

.method public final onTripleTap(Landroid/view/KeyEvent;)V
    .registers 2

    .line 3153
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetMultiTapTrackingLocked()V

    .line 3154
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaKeyDispatcher;->onTripleTap(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final resetLongPressTracking()V
    .registers 3

    const/4 v0, 0x0

    .line 3074
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    const/4 v1, 0x0

    .line 3075
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 3076
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final resetMultiTapTrackingLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 3021
    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    const/4 v1, 0x0

    .line 3022
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3023
    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapKeyCode:I

    return-void
.end method

.method public final runExistingMultiTapRunnableLocked()V
    .registers 3

    .line 3016
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3017
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final shouldTrackForMultipleTapsLocked(I)Z
    .registers 2

    .line 2936
    invoke-static {p1}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result p0

    if-nez p0, :cond_15

    .line 2937
    invoke-static {p1}, Lcom/android/server/media/MediaKeyDispatcher;->isDoubleTapOverridden(I)Z

    move-result p0

    if-nez p0, :cond_15

    .line 2938
    invoke-static {p1}, Lcom/android/server/media/MediaKeyDispatcher;->isTripleTapOverridden(I)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method
