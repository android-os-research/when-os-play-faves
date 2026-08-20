.class public final Lcom/android/server/wm/MultiTaskingController$H;
.super Landroid/os/Handler;
.source "MultiTaskingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final NOTIFY_FINISH_RECENTS_ANIMATION:I = 0x4

.field public static final NOTIFY_NATURAL_SWITCHING_FINISH:I = 0x8

.field public static final NOTIFY_NATURAL_SWITCHING_START:I = 0x7

.field public static final NOTIFY_SECURE_BASE_WINDOW_ADDED_IN_DEX_ON_PC:I = 0x2

.field public static final NOTIFY_SECURE_BASE_WINDOW_CHANGED_ON_REMOTE_APP:I = 0x1

.field public static final NOTIFY_START_HOME_ANIMATION:I = 0x5

.field public static final NOTIFY_START_RECENTS_ANIMATION:I = 0x3

.field public static final NOTIFY_WALLPAPER_VISIBILITY_CHANGED:I = 0x6

.field public static final SET_FREEFORM_WINDOWING_MODE_BY_CORNER_GESTURE:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Looper;)V
    .registers 3

    .line 1790
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 1791
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1796
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_44

    packed-switch v0, :pswitch_data_7a

    goto :goto_72

    .line 1868
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmNotifyNaturalSwitchingFinish(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteNaturalSwitchingListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;Landroid/os/Message;)V

    goto :goto_72

    .line 1865
    :pswitch_12
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmNotifyNaturalSwitchingStart(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteNaturalSwitchingListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;Landroid/os/Message;)V

    goto :goto_72

    .line 1860
    :pswitch_1c
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmNotifyWallpaperVisibilityChanged(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;Landroid/os/Message;)V

    goto :goto_72

    .line 1857
    :pswitch_26
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmNotifyStartHomeAnimation(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;Landroid/os/Message;)V

    goto :goto_72

    .line 1854
    :pswitch_30
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmNotifyFinishRecentsAnimation(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;Landroid/os/Message;)V

    goto :goto_72

    .line 1851
    :pswitch_3a
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmNotifyStartRecentsAnimation(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;Landroid/os/Message;)V

    goto :goto_72

    .line 1800
    :cond_44
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1801
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1802
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 1803
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_55
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1804
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/FreeformController;->setFreeformWindowingModeByCornerGestureLocked(IILandroid/graphics/Rect;)V

    .line 1806
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1808
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_CORNER_GESTURE_SA_LOGGING:Z

    if-eqz p0, :cond_72

    const-string p0, "2004"

    const-string p1, "From Gesture"

    .line 1809
    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void

    :catchall_73
    move-exception p0

    .line 1806
    :try_start_74
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    nop

    :pswitch_data_7a
    .packed-switch 0x3
        :pswitch_3a
        :pswitch_30
        :pswitch_26
        :pswitch_1c
        :pswitch_12
        :pswitch_8
    .end packed-switch
.end method
