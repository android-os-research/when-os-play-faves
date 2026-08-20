.class public Lcom/android/server/wm/MultiTaskingHelpController;
.super Ljava/lang/Object;
.source "MultiTaskingHelpController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiTaskingHelpController$H;
    }
.end annotation


# static fields
.field public static LIVE_DEBUG:Z = false

.field public static final SET_MAX:Z = true

.field public static final TAG:Ljava/lang/String; = "MultiTaskingHelpController"

.field public static final UNLOADED_COUNT:I = -0x1


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mH:Lcom/android/server/wm/MultiTaskingHelpController$H;

.field public mLastFreeformCount:I

.field public mLastSplitCount:I

.field public final mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSplitAdjacentCallbacks(Lcom/android/server/wm/MultiTaskingHelpController;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/MultiTaskingHelpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastSplitCount:I

    .line 33
    iput v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastFreeformCount:I

    .line 36
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    .line 41
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public final getCount(I)I
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_12

    .line 85
    sget-boolean p1, Lcom/android/server/wm/MultiTaskingHelpController;->LIVE_DEBUG:Z

    if-eqz p1, :cond_b

    sget p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_COUNT:I

    return p0

    .line 86
    :cond_b
    iget p0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastSplitCount:I

    if-ne p0, v0, :cond_11

    .line 88
    sget p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_COUNT:I

    :cond_11
    return p0

    :cond_12
    const/4 v1, 0x5

    if-ne p1, v1, :cond_23

    .line 92
    sget-boolean p1, Lcom/android/server/wm/MultiTaskingHelpController;->LIVE_DEBUG:Z

    if-eqz p1, :cond_1c

    sget p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_COUNT:I

    return p0

    .line 93
    :cond_1c
    iget p0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastFreeformCount:I

    if-ne p0, v0, :cond_22

    .line 94
    sget p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_COUNT:I

    :cond_22
    return p0

    :cond_23
    const p0, 0x7fffffff

    return p0
.end method

.method public increaseCount(IZ)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1c

    if-eqz p2, :cond_7

    goto :goto_c

    .line 56
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->getCount(I)I

    move-result p2

    add-int/2addr v0, p2

    .line 58
    :goto_c
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "freeform_handler_help_popup_count"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 60
    iput v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastFreeformCount:I

    goto :goto_38

    :cond_1c
    const/4 v1, 0x6

    if-ne p1, v1, :cond_37

    if-eqz p2, :cond_22

    goto :goto_27

    .line 62
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->getCount(I)I

    move-result p2

    add-int/2addr v0, p2

    .line 64
    :goto_27
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "multi_split_quick_options_help_count"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    iput v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastSplitCount:I

    goto :goto_38

    :cond_37
    const/4 v0, -0x1

    .line 68
    :goto_38
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_5a

    .line 69
    sget-object p0, Lcom/android/server/wm/MultiTaskingHelpController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increaseCount: windowingMode="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " count="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return-void
.end method

.method public initialize()V
    .registers 3

    .line 46
    new-instance v0, Lcom/android/server/wm/MultiTaskingHelpController$H;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingHelpController$H;-><init>(Lcom/android/server/wm/MultiTaskingHelpController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mH:Lcom/android/server/wm/MultiTaskingHelpController$H;

    return-void
.end method

.method public registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception p0

    goto :goto_d

    .line 113
    :catch_b
    :goto_b
    :try_start_b
    monitor-exit v0

    return-void

    :goto_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    throw p0
.end method

.method public resetCount()V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "freeform_handler_help_popup_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_split_quick_options_help_count"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_27

    .line 79
    sget-object p0, Lcom/android/server/wm/MultiTaskingHelpController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "resetCount"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method public scheduleNotifySplitAdjacentCallback()V
    .registers 2

    .line 103
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mH:Lcom/android/server/wm/MultiTaskingHelpController$H;

    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopHelpingIn(I)V
    .registers 3

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiTaskingHelpController;->increaseCount(IZ)V

    return-void
.end method

.method public unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception p0

    goto :goto_d

    .line 123
    :catch_b
    :goto_b
    :try_start_b
    monitor-exit v0

    return-void

    :goto_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    throw p0
.end method
