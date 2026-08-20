.class public final Lcom/android/server/wm/WindowManagerConstants;
.super Ljava/lang/Object;
.source "WindowManagerConstants.java"


# static fields
.field public static final KEY_SYSTEM_GESTURE_EXCLUSION_LOG_DEBOUNCE_MILLIS:Ljava/lang/String; = "system_gesture_exclusion_log_debounce_millis"

.field public static final MIN_GESTURE_EXCLUSION_LIMIT_DP:I = 0xc8


# instance fields
.field public final mDeviceConfig:Landroid/provider/DeviceConfigInterface;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public mSystemGestureExcludedByPreQStickyImmersive:Z

.field public mSystemGestureExclusionLimitDp:I

.field public mSystemGestureExclusionLogDebounceTimeoutMillis:J

.field public final mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$LVN1tP1QvlbyU32jxwGIE3Rh75s(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerConstants;->lambda$new$0(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R6jJTtpKTNTeb3Af8P_LcxxZpgI(Lcom/android/server/wm/WindowManagerConstants;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerConstants;->onAndroidPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rr6DBPptBMcotjU-zTbQM6pjCkw(Lcom/android/server/wm/WindowManagerConstants;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerConstants;->onWindowPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Landroid/provider/DeviceConfigInterface;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 77
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    .line 78
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 79
    new-instance p1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerConstants;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 80
    new-instance p1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerConstants;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/provider/DeviceConfigInterface;)V
    .registers 5

    .line 68
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance v1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/wm/WindowManagerConstants;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Landroid/provider/DeviceConfigInterface;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "WINDOW MANAGER CONSTANTS (dumpsys window constants):"

    .line 156
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    .line 158
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    .line 159
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "system_gesture_exclusion_limit_dp"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 162
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 164
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final onAndroidPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 10

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 97
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_23

    .line 99
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_23
    const/4 v4, -0x1

    .line 101
    :try_start_24
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x4bcc3a39

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3f

    const v6, 0x12e32da7

    if-eq v5, v6, :cond_34

    goto :goto_49

    :cond_34
    const-string/jumbo v5, "system_gesture_exclusion_limit_dp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    move v4, v1

    goto :goto_49

    :cond_3f
    const-string/jumbo v5, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    move v4, v7

    :cond_49
    :goto_49
    if-eqz v4, :cond_52

    if-eq v4, v7, :cond_4e

    goto :goto_10

    .line 107
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExcludedByPreQStickyImmersive()V

    goto :goto_55

    .line 103
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLimitDp()V

    :goto_55
    move v2, v7

    goto :goto_10

    :cond_57
    if-eqz v2, :cond_5e

    .line 115
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 117
    :cond_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_24 .. :try_end_5f} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_63
    move-exception p0

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onWindowPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 122
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_21

    .line 124
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_21
    const/4 v2, -0x1

    .line 126
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7801476

    if-eq v3, v4, :cond_2c

    goto :goto_36

    :cond_2c
    const-string/jumbo v3, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v2, 0x0

    :cond_36
    :goto_36
    if-eqz v2, :cond_39

    goto :goto_e

    .line 128
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLogDebounceMillis()V

    goto :goto_e

    .line 134
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_42
    move-exception p0

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public start(Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v2, "android"

    invoke-interface {v0, v2, p1, v1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v2, "window_manager"

    invoke-interface {v0, v2, p1, v1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLogDebounceMillis()V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLimitDp()V

    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExcludedByPreQStickyImmersive()V

    return-void
.end method

.method public final updateSystemGestureExcludedByPreQStickyImmersive()V
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v1, "android"

    const-string/jumbo v2, "system_gestures_excluded_by_pre_q_sticky_immersive"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    return-void
.end method

.method public final updateSystemGestureExclusionLimitDp()V
    .registers 5

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v1, "android"

    const-string/jumbo v2, "system_gesture_exclusion_limit_dp"

    const/4 v3, 0x0

    .line 145
    invoke-interface {v0, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc8

    .line 144
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    return-void
.end method

.method public final updateSystemGestureExclusionLogDebounceMillis()V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "window_manager"

    const-string/jumbo v2, "system_gesture_exclusion_log_debounce_millis"

    const-wide/16 v3, 0x0

    .line 139
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/provider/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    return-void
.end method
