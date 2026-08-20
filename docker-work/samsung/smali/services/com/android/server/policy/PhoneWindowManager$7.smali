.class public Lcom/android/server/policy/PhoneWindowManager$7;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;II)V
    .registers 4

    .line 2471
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 2506
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_GLOBAL_ACTION_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v0, :cond_b

    .line 2507
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->cancelPendingGlobalActionChord()V

    .line 2511
    :cond_b
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkKeyCombinationScreenshotChord()V

    return-void
.end method

.method public cancel(Landroid/view/KeyEvent;Z)V
    .registers 4

    .line 2520
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v0, :cond_b

    .line 2521
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkKeyCombinationScreenshotChord(Landroid/view/KeyEvent;Z)V

    :cond_b
    return-void
.end method

.method public execute()V
    .registers 3

    .line 2486
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 2488
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_GLOBAL_ACTION_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v0, :cond_10

    .line 2489
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptGlobalActionChord()V

    .line 2492
    :cond_10
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    .line 2494
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotEnabled:Z

    if-eqz v0, :cond_1d

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptKeyCombinationScreenshotChord()V

    :cond_1d
    return-void
.end method

.method public preCondition()Z
    .registers 2

    .line 2476
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    .line 2478
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->setScreenshotEnabled()V

    .line 2481
    invoke-super {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->preCondition()Z

    move-result p0

    return p0
.end method
