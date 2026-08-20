.class public final Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerKeyRule"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 3

    .line 2653
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 p1, 0x1a

    .line 2654
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getLongPressTimeoutMs()J
    .registers 3

    .line 2680
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mgetResolvedLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 2681
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    return-wide v0

    .line 2683
    :cond_e
    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxMultiPressCount()I
    .registers 1

    .line 2659
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result p0

    return p0
.end method

.method public onLongPress(JLandroid/view/KeyEvent;I)V
    .registers 6

    const/4 v0, 0x1

    .line 2694
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 2697
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmSupportLongPressPowerWhenNonInteractive(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string p0, "WindowManager"

    const-string p1, "Not support long press power when device is not interactive."

    .line 2699
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2703
    :cond_1d
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpowerLongPress(Lcom/android/server/policy/PhoneWindowManager;JLandroid/view/KeyEvent;I)V

    return-void
.end method

.method public onMultiPress(JILandroid/view/KeyEvent;)V
    .registers 11

    .line 2722
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v4

    move-wide v1, p1

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpowerPress(Lcom/android/server/policy/PhoneWindowManager;JIZLandroid/view/KeyEvent;)V

    return-void
.end method

.method public onPress(JLandroid/view/KeyEvent;)V
    .registers 10

    .line 2669
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 2670
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v4

    const/4 v3, 0x1

    move-wide v1, p1

    move-object v5, p3

    .line 2669
    invoke-static/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpowerPress(Lcom/android/server/policy/PhoneWindowManager;JIZLandroid/view/KeyEvent;)V

    return-void
.end method

.method public onVeryLongPress(J)V
    .registers 3

    .line 2711
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->prepareForPossibleShutdown()V

    .line 2712
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpowerVeryLongPress(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method
