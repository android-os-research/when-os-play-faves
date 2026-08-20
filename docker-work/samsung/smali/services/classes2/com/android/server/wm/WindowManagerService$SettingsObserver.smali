.class final Lcom/android/server/wm/WindowManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WindowManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final mAnimationDurationScaleUri:Landroid/net/Uri;

.field public final mDevEnableNonResizableMultiWindowUri:Landroid/net/Uri;

.field public final mDisplayInversionEnabledUri:Landroid/net/Uri;

.field public final mDisplaySettingsPathUri:Landroid/net/Uri;

.field public final mForceDesktopModeOnExternalDisplaysUri:Landroid/net/Uri;

.field public final mForceResizableUri:Landroid/net/Uri;

.field public final mFreeformWindowUri:Landroid/net/Uri;

.field public final mGestureImmersiveModeConfirmationsUri:Landroid/net/Uri;

.field public final mImmersiveModeConfirmationsUri:Landroid/net/Uri;

.field public final mMaximumObscuringOpacityForTouchUri:Landroid/net/Uri;

.field public final mPointerLocationUri:Landroid/net/Uri;

.field public final mPolicyControlUri:Landroid/net/Uri;

.field public final mRenderShadowsInCompositorUri:Landroid/net/Uri;

.field public final mTransitionAnimationScaleUri:Landroid/net/Uri;

.field public final mWindowAnimationScaleUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$A83rsVABC2FxiICXnyg1gIQ1oFw(Lcom/android/server/wm/WindowManagerService$SettingsObserver;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->lambda$updateDisplaySettingsLocation$0(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 890
    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 891
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v2, "accessibility_display_inversion_enabled"

    .line 858
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    const-string/jumbo v3, "window_animation_scale"

    .line 860
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    const-string/jumbo v4, "transition_animation_scale"

    .line 862
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    const-string v5, "animator_duration_scale"

    .line 864
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    const-string v6, "immersive_mode_confirmations"

    .line 866
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mImmersiveModeConfirmationsUri:Landroid/net/Uri;

    const-string v7, "gesture_immersive_mode_confirmations"

    .line 869
    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mGestureImmersiveModeConfirmationsUri:Landroid/net/Uri;

    const-string/jumbo v8, "policy_control"

    .line 872
    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPolicyControlUri:Landroid/net/Uri;

    const-string/jumbo v9, "pointer_location"

    .line 874
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPointerLocationUri:Landroid/net/Uri;

    const-string v10, "force_desktop_mode_on_external_displays"

    .line 875
    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceDesktopModeOnExternalDisplaysUri:Landroid/net/Uri;

    const-string v11, "enable_freeform_support"

    .line 877
    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mFreeformWindowUri:Landroid/net/Uri;

    const-string v12, "force_resizable_activities"

    .line 879
    invoke-static {v12}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceResizableUri:Landroid/net/Uri;

    const-string v13, "enable_non_resizable_multi_window"

    .line 881
    invoke-static {v13}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDevEnableNonResizableMultiWindowUri:Landroid/net/Uri;

    const-string/jumbo v14, "render_shadows_in_compositor"

    .line 883
    invoke-static {v14}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iput-object v14, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mRenderShadowsInCompositorUri:Landroid/net/Uri;

    const-string/jumbo v14, "wm_display_settings_path"

    .line 885
    invoke-static {v14}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iput-object v14, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplaySettingsPathUri:Landroid/net/Uri;

    const-string v15, "maximum_obscuring_opacity_for_touch"

    .line 887
    invoke-static {v15}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iput-object v15, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mMaximumObscuringOpacityForTouchUri:Landroid/net/Uri;

    .line 892
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v14

    const/4 v14, -0x1

    .line 893
    invoke-virtual {v1, v2, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 895
    invoke-virtual {v1, v3, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 897
    invoke-virtual {v1, v4, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 899
    invoke-virtual {v1, v5, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 901
    invoke-virtual {v1, v6, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 904
    invoke-virtual {v1, v7, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 907
    invoke-virtual {v1, v8, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 908
    invoke-virtual {v1, v9, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 909
    invoke-virtual {v1, v10, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 911
    invoke-virtual {v1, v11, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 912
    invoke-virtual {v1, v12, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 913
    invoke-virtual {v1, v13, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v2, v17

    .line 915
    invoke-virtual {v1, v2, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v2, v16

    .line 917
    invoke-virtual {v1, v2, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private synthetic lambda$updateDisplaySettingsLocation$0(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 1093
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1094
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    return-void
.end method


# virtual methods
.method public loadSettings()V
    .registers 2

    const/4 v0, 0x0

    .line 989
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateSystemUiSettings(Z)V

    .line 990
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updatePointerLocation()V

    .line 991
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateMaximumObscuringOpacityForTouch()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 927
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mImmersiveModeConfirmationsUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_a1

    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mGestureImmersiveModeConfirmationsUri:Landroid/net/Uri;

    .line 930
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a1

    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPolicyControlUri:Landroid/net/Uri;

    .line 932
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto/16 :goto_a1

    .line 937
    :cond_1e
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPointerLocationUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 938
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updatePointerLocation()V

    return-void

    .line 942
    :cond_2a
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceDesktopModeOnExternalDisplaysUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 943
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateForceDesktopModeOnExternalDisplays()V

    return-void

    .line 947
    :cond_36
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mFreeformWindowUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 948
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateFreeformWindowManagement()V

    return-void

    .line 952
    :cond_42
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceResizableUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 953
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateForceResizableTasks()V

    return-void

    .line 957
    :cond_4e
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDevEnableNonResizableMultiWindowUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 958
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateDevEnableNonResizableMultiWindow()V

    return-void

    .line 962
    :cond_5a
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplaySettingsPathUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 963
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateDisplaySettingsLocation()V

    return-void

    .line 967
    :cond_66
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mMaximumObscuringOpacityForTouchUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 968
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateMaximumObscuringOpacityForTouch()V

    return-void

    .line 974
    :cond_72
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_7d

    move v0, v1

    goto :goto_8f

    .line 976
    :cond_7d
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_86

    goto :goto_8f

    .line 978
    :cond_86
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a0

    const/4 v0, 0x2

    .line 984
    :goto_8f
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 p2, 0x33

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 985
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a0
    return-void

    .line 933
    :cond_a1
    :goto_a1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateSystemUiSettings(Z)V

    return-void
.end method

.method public updateDevEnableNonResizableMultiWindow()V
    .registers 4

    .line 1079
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_non_resizable_multi_window"

    const/4 v2, 0x0

    .line 1080
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    .line 1083
    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    return-void
.end method

.method public updateDisplaySettingsLocation()V
    .registers 4

    .line 1087
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wm_display_settings_path"

    .line 1088
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1091
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->setBaseSettingsFilePath(Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/WindowManagerService$SettingsObserver$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerService$SettingsObserver;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 1096
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateForceDesktopModeOnExternalDisplays()V
    .registers 4

    .line 1046
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_desktop_mode_on_external_displays"

    const/4 v2, 0x0

    .line 1047
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    .line 1049
    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-ne v0, v2, :cond_19

    return-void

    .line 1052
    :cond_19
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->setForceDesktopModeOnExternalDisplays(Z)V

    return-void
.end method

.method public updateForceResizableTasks()V
    .registers 4

    .line 1071
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_resizable_activities"

    const/4 v2, 0x0

    .line 1072
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    .line 1075
    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    return-void
.end method

.method public updateFreeformWindowManagement()V
    .registers 5

    .line 1056
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1057
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.freeform_window_management"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    const-string v1, "enable_freeform_support"

    .line 1058
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    const/4 v2, 0x1

    .line 1061
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eq v3, v2, :cond_44

    .line 1062
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1063
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1065
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->onSettingsRetrieved()V

    .line 1066
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_44

    :catchall_3e
    move-exception p0

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_44
    :goto_44
    return-void
.end method

.method public updateMaximumObscuringOpacityForTouch()V
    .registers 4

    .line 995
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 996
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "maximum_obscuring_opacity_for_touch"

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    return-void
.end method

.method public updatePointerLocation()V
    .registers 5

    .line 1028
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_location"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 1029
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v2, 0x1

    .line 1032
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-ne v1, v2, :cond_1b

    return-void

    .line 1035
    :cond_1b
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 1036
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1037
    new-instance v1, Lcom/android/server/wm/WindowManagerService$SettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/WindowManagerService$SettingsObserver$$ExternalSyntheticLambda0;-><init>()V

    .line 1038
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 1039
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1037
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 1040
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 1041
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1042
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_47
    move-exception p0

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateSystemUiSettings(Z)V
    .registers 5

    .line 1002
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1a

    .line 1005
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    .line 1006
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->onSystemUiSettingsChanged()Z

    move-result v1

    goto :goto_2c

    .line 1008
    :cond_1a
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, p1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->loadSetting(ILandroid/content/Context;)Z

    .line 1012
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, p1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->loadGestureSetting(ILandroid/content/Context;)Z

    .line 1018
    :goto_2c
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->reloadFromSetting(Landroid/content/Context;)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_3e

    .line 1022
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1024
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_43
    move-exception p0

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
