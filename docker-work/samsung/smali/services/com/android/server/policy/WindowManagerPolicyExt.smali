.class public interface abstract Lcom/android/server/policy/WindowManagerPolicyExt;
.super Ljava/lang/Object;
.source "WindowManagerPolicyExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowManagerPolicyExt$WindowStateExt;,
        Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;
    }
.end annotation


# static fields
.field public static final PEN_ABSENT:I = -0x1

.field public static final PEN_ATTACHED:I = 0x1

.field public static final PEN_DETACHED:I


# direct methods
.method public static getMultiWindowLayerFromTypeLw(I)I
    .registers 1

    packed-switch p0, :pswitch_data_a

    const/4 p0, -0x1

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_a
    .packed-switch 0xa2b
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static getSubWindowLayerFromTypeLw(I)I
    .registers 2

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public static getWindowLayerFromTypeLw(IZZ)I
    .registers 3

    const/4 p1, -0x1

    sparse-switch p0, :sswitch_data_5a

    .line 348
    invoke-static {p0}, Lcom/android/server/policy/WindowManagerPolicyExt;->getMultiWindowLayerFromTypeLw(I)I

    move-result p0

    if-lez p0, :cond_59

    return p0

    :sswitch_b
    const/16 p0, 0x1b

    return p0

    :sswitch_e
    const/16 p0, 0x1c

    return p0

    :sswitch_11
    const/16 p0, 0x11

    return p0

    :sswitch_14
    const/4 p0, 0x1

    return p0

    :sswitch_16
    const/16 p0, 0x23

    return p0

    :sswitch_19
    const/16 p0, 0x18

    return p0

    :sswitch_1c
    const/16 p0, 0xc

    return p0

    :sswitch_1f
    const/16 p0, 0x16

    return p0

    :sswitch_22
    const/16 p0, 0x1e

    return p0

    :sswitch_25
    const/16 p0, 0x22

    return p0

    :sswitch_28
    const/4 p0, 0x3

    return p0

    :sswitch_2a
    const/4 p0, 0x5

    return p0

    :sswitch_2c
    const/4 p0, 0x7

    return p0

    :sswitch_2e
    const/16 p0, 0x19

    return p0

    :sswitch_31
    const/16 p0, 0x17

    return p0

    :sswitch_34
    const/16 p0, 0xf

    return p0

    :sswitch_37
    const/16 p0, 0x1a

    return p0

    :sswitch_3a
    const/16 p0, 0x1f

    return p0

    :sswitch_3d
    const/16 p0, 0x12

    return p0

    :sswitch_40
    const/16 p0, 0xa

    return p0

    .line 295
    :sswitch_43
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_54

    .line 296
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/server/wm/WmCoverState;->getWindowLayerFromTypeLw(I)I

    move-result p0

    if-eq p0, p1, :cond_54

    return p0

    :cond_54
    const/16 p0, 0x15

    return p0

    :sswitch_57
    const/4 p0, 0x6

    return p0

    :cond_59
    return p1

    :sswitch_data_5a
    .sparse-switch
        0x82f -> :sswitch_57
        0x833 -> :sswitch_43
        0x8b1 -> :sswitch_40
        0x8b2 -> :sswitch_3d
        0x8b3 -> :sswitch_3a
        0x8b4 -> :sswitch_37
        0x8de -> :sswitch_34
        0x8df -> :sswitch_34
        0x8e2 -> :sswitch_31
        0x8e8 -> :sswitch_2e
        0x8e9 -> :sswitch_31
        0x961 -> :sswitch_2e
        0x962 -> :sswitch_2c
        0x963 -> :sswitch_2a
        0x965 -> :sswitch_2e
        0x966 -> :sswitch_28
        0x967 -> :sswitch_25
        0x968 -> :sswitch_22
        0x96b -> :sswitch_43
        0x96c -> :sswitch_2c
        0x96e -> :sswitch_1f
        0x96f -> :sswitch_3d
        0x97e -> :sswitch_28
        0x97f -> :sswitch_1c
        0x988 -> :sswitch_31
        0x989 -> :sswitch_31
        0x98a -> :sswitch_19
        0xa28 -> :sswitch_16
        0xa29 -> :sswitch_37
        0xa3a -> :sswitch_1c
        0xa3b -> :sswitch_25
        0xa3c -> :sswitch_14
        0xa3d -> :sswitch_34
        0xa3e -> :sswitch_11
        0xa3f -> :sswitch_19
        0xa40 -> :sswitch_1c
        0xa46 -> :sswitch_e
        0xa47 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public abstract checkKeyguardOccluded(IZ)Z
.end method

.method public abstract clearKeyCustomizationInfoByAction(III)V
.end method

.method public abstract clearKeyCustomizationInfoByKeyCode(II)V
.end method

.method public abstract getBackupKeyCustomizationInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getDexMode()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
.end method

.method public abstract getKeyCustomizationInfoByPackage(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
.end method

.method public abstract getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
.end method

.method public abstract getWakingUpReason()I
.end method

.method public abstract handleNotifyPogoKeyboardStatus(Z)V
.end method

.method public abstract init()V
.end method

.method public abstract interceptKeyBeforeQuickAccess(IFF)Z
.end method

.method public abstract isInteractionControlEnabled()Z
.end method

.method public isKeyguardOccluded(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardShowingAndNotOccluded(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isLockTaskModeEnabled()Z
.end method

.method public abstract isLockTaskModePinned()Z
.end method

.method public abstract isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
.end method

.method public abstract isNavBarImeBtnEnabled()Z
.end method

.method public abstract isScreenTurnedOn()Z
.end method

.method public abstract isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
.end method

.method public abstract keyguardGoingAwayWithFingerprintUnlock(Z)V
.end method

.method public abstract launchHomeForDesktopMode(I)V
.end method

.method public abstract launchPremiumWatch(Z)V
.end method

.method public abstract notifyPenSwitchChanged(JZ)V
.end method

.method public abstract notifyRequestedGameToolsWin(Z)V
.end method

.method public abstract onDeviceFoldedStateChanged(Z)Ljava/lang/Runnable;
.end method

.method public onDexModeChangedLw(I)V
    .registers 2

    return-void
.end method

.method public abstract onFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)V
.end method

.method public onKeyguardOccludedChangedLw(ZI)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V
.end method

.method public abstract onLockTaskStateChanged(I)V
.end method

.method public abstract putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
.end method

.method public abstract removeKeyCustomizationInfo(III)V
.end method

.method public abstract removeKeyCustomizationInfoByPackage(Ljava/lang/String;II)V
.end method

.method public abstract requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
.end method

.method public abstract requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
.end method

.method public abstract restoreKeyCustomizationInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendFoldSaLoggingCanceledIfNeeded(Ljava/lang/String;Z)V
.end method

.method public abstract sendFoldSaLoggingWhenFolded()V
.end method

.method public setCarLifeDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .registers 2

    return-void
.end method

.method public abstract setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
.end method

.method public abstract setRotation(I)V
.end method

.method public abstract setTspStateController(Lcom/android/server/wm/TspStateController;)V
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;ZII)V
.end method

.method public startLockscreenFingerprintAuth()V
    .registers 1

    return-void
.end method

.method public abstract updateTopActivity(Landroid/content/ComponentName;)V
.end method
