.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;,
        Lcom/android/server/policy/WindowManagerPolicy$UserRotationMode;,
        Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowState;,
        Lcom/android/server/policy/WindowManagerPolicy$AltBarPosition;,
        Lcom/android/server/policy/WindowManagerPolicy$NavigationBarPosition;
    }
.end annotation


# static fields
.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final COLOR_FADE_LAYER:I = 0x40000001

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1


# direct methods
.method public static userRotationModeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 1215
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "USER_ROTATION_LOCKED"

    return-object p0

    :cond_d
    const-string p0, "USER_ROTATION_FREE"

    return-object p0
.end method


# virtual methods
.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract applyKeyguardOcclusionChange(Z)I
.end method

.method public abstract canDismissBootAnimation()Z
.end method

.method public abstract checkAddPermission(IZLjava/lang/String;[I)I
.end method

.method public abstract createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
.end method

.method public abstract createPolicyExtension(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;)Lcom/android/server/policy/WindowManagerPolicyExt;
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end method

.method public abstract dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishedGoingToSleep(I)V
.end method

.method public abstract finishedWakingUp(I)V
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .registers 1

    .line 1240
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getMaxWindowLayer()I
    .registers 1

    const/16 p0, 0x24

    return p0
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .registers 3

    packed-switch p1, :pswitch_data_2c

    .line 695
    invoke-static {p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->getSubWindowLayerFromTypeLw(I)I

    move-result p0

    if-lez p0, :cond_14

    return p0

    :pswitch_a
    const/4 p0, 0x3

    return p0

    :pswitch_c
    const/4 p0, -0x1

    return p0

    :pswitch_e
    const/4 p0, 0x2

    return p0

    :pswitch_10
    const/4 p0, -0x2

    return p0

    :pswitch_12
    const/4 p0, 0x1

    return p0

    .line 701
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sub-window type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :pswitch_data_2c
    .packed-switch 0x3e8
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_12
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method public abstract getUiMode()I
.end method

.method public getWindowLayerFromTypeLw(I)I
    .registers 3

    .line 480
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 484
    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p0

    return p0

    .line 481
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .registers 4

    const/4 v0, 0x0

    .line 502
    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result p0

    return p0
.end method

.method public getWindowLayerFromTypeLw(IZZ)I
    .registers 8

    if-eqz p3, :cond_9

    if-eqz p2, :cond_9

    .line 526
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result p0

    return p0

    :cond_9
    const/4 v0, 0x1

    if-lt p1, v0, :cond_12

    const/16 v1, 0x63

    if-gt p1, v1, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    const/16 v1, 0x9

    const/16 v2, 0x15

    const/4 v3, 0x3

    packed-switch p1, :pswitch_data_aa

    .line 645
    :pswitch_1a
    invoke-static {p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicyExt;->getWindowLayerFromTypeLw(IZZ)I

    move-result p0

    if-lez p0, :cond_93

    return p0

    :pswitch_21
    const/16 p0, 0x10

    return p0

    :pswitch_24
    const/16 p0, 0x11

    return p0

    :pswitch_27
    const/16 p0, 0x20

    return p0

    :pswitch_2a
    const/16 p0, 0xb

    return p0

    :pswitch_2d
    const/16 p0, 0x1a

    return p0

    :pswitch_30
    const/16 p0, 0x14

    return p0

    :pswitch_33
    const/16 p0, 0x1f

    return p0

    :pswitch_36
    return v2

    :pswitch_37
    const/16 p0, 0x1c

    return p0

    :pswitch_3a
    const/16 p0, 0x1d

    return p0

    :pswitch_3d
    const/16 p0, 0x19

    return p0

    :pswitch_40
    const/4 p0, 0x5

    return p0

    :pswitch_42
    const/16 p0, 0x22

    return p0

    :pswitch_45
    const/16 p0, 0x16

    return p0

    :pswitch_48
    const/16 p0, 0x18

    return p0

    .line 637
    :pswitch_4b
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result p0

    return p0

    :pswitch_50
    const/16 p0, 0x12

    return p0

    :pswitch_53
    const/16 p0, 0x1e

    return p0

    :pswitch_56
    const/16 p0, 0x21

    return p0

    :pswitch_59
    return v0

    :pswitch_5a
    const/16 p0, 0xe

    return p0

    :pswitch_5d
    const/16 p0, 0xd

    return p0

    :pswitch_60
    if-eqz p2, :cond_64

    const/16 v1, 0x1b

    :cond_64
    return v1

    :pswitch_65
    const/16 p0, 0x13

    return p0

    :pswitch_68
    const/4 p0, 0x6

    return p0

    :pswitch_6a
    const/16 p0, 0x8

    return p0

    :pswitch_6d
    if-eqz p2, :cond_72

    const/16 p0, 0x17

    goto :goto_74

    :cond_72
    const/16 p0, 0xa

    :goto_74
    return p0

    .line 551
    :pswitch_75
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_87

    .line 552
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WmCoverState;->getWindowLayerFromTypeLw(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_87

    return p0

    :cond_87
    return v2

    :pswitch_88
    if-eqz p2, :cond_8c

    const/16 v1, 0xc

    :cond_8c
    return v1

    :pswitch_8d
    return v3

    :pswitch_8e
    const/4 p0, 0x4

    return p0

    :pswitch_90
    const/16 p0, 0xf

    return p0

    .line 652
    :cond_93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown window type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_data_aa
    .packed-switch 0x7d0
        :pswitch_90
        :pswitch_8e
        :pswitch_8d
        :pswitch_88
        :pswitch_1a
        :pswitch_75
        :pswitch_6d
        :pswitch_6a
        :pswitch_68
        :pswitch_65
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_59
        :pswitch_1a
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_40
        :pswitch_1a
        :pswitch_3d
        :pswitch_1a
        :pswitch_3a
        :pswitch_37
        :pswitch_1a
        :pswitch_1a
        :pswitch_8d
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_8d
        :pswitch_8d
        :pswitch_2d
        :pswitch_8d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method public getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 3

    .line 469
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p0

    return p0
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(IJI)I
.end method

.method public abstract isKeyguardDrawnLw()Z
.end method

.method public abstract isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardOccluded()Z
.end method

.method public abstract isKeyguardSecure(I)Z
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isKeyguardTrustedLw()Z
.end method

.method public isKeyguardUnoccluding()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isScreenOn()Z
.end method

.method public isScreenOn(I)Z
    .registers 2

    .line 901
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method public abstract isUserSetupComplete()Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract okToAnimate(Z)Z
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2

    return-void
.end method

.method public abstract onKeyguardOccludedChangedLw(Z)Z
.end method

.method public abstract onPowerGroupWakefulnessChanged(IIII)V
.end method

.method public abstract onSystemUiStarted()V
.end method

.method public abstract performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2

    return-void
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract screenTurnedOff(I)V
.end method

.method public abstract screenTurnedOn(I)V
.end method

.method public abstract screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract setAllowLockscreenWhenOn(IZ)V
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public abstract setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
.end method

.method public setDexDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .registers 2

    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2

    return-void
.end method

.method public abstract setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public abstract setPipVisibilityLw(Z)V
.end method

.method public abstract setRecentsVisibilityLw(Z)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public abstract setTopFocusedDisplay(I)V
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public startedEarlyWakingUp(I)V
    .registers 2

    return-void
.end method

.method public abstract startedGoingToSleep(I)V
.end method

.method public abstract startedWakingUp(I)V
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2

    return-void
.end method

.method public abstract userActivity()V
.end method
