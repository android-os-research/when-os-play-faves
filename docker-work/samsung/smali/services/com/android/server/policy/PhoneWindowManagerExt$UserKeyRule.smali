.class public final Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserKeyRule"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 3

    .line 2415
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 p1, 0x3f7

    .line 2416
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onKeyDown(Landroid/view/KeyEvent;)V
    .registers 5

    const/4 v0, 0x0

    .line 2449
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 2450
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 2453
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    iget-boolean v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V

    .line 2457
    :cond_1c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2458
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(ILandroid/view/KeyEvent;)V

    :cond_37
    return-void
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)V
    .registers 5

    .line 2464
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 2467
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    iget-boolean v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V

    .line 2471
    :cond_19
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2472
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(ILandroid/view/KeyEvent;)V

    :cond_34
    return-void
.end method

.method public onLongPress(JLandroid/view/KeyEvent;I)V
    .registers 6

    const/4 p1, 0x1

    .line 2434
    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 2435
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 p4, 0x4

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {p2, p4, v0}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 2437
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-nez p2, :cond_21

    return-void

    .line 2441
    :cond_21
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {p2, p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverLongActionIfNeeded(IZ)Z

    goto :goto_32

    .line 2443
    :cond_2b
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(Landroid/view/KeyEvent;)Z

    :goto_32
    return-void
.end method

.method public onPress(JLandroid/view/KeyEvent;)V
    .registers 5

    .line 2421
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 p2, 0x3

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {p1, p2, v0}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 2423
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_1e

    return-void

    .line 2426
    :cond_1e
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverPressActionIfNeeded(IZ)Z

    goto :goto_30

    .line 2428
    :cond_29
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressAction(Landroid/view/KeyEvent;)Z

    :goto_30
    return-void
.end method
