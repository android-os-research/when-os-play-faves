.class public final Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HomeKeyRule"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public static synthetic $r8$lambda$3FzJU70loiAV42J8LEixP7w057M(Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;Landroid/view/KeyEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->lambda$onPress$0(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zrhb4SMX00uzbAe_nqTUyZ39K9E(Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;Landroid/view/KeyEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->lambda$onLongPress$1(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 3

    .line 2261
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 p1, 0x3

    .line 2262
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(II)V

    return-void
.end method

.method private synthetic lambda$onLongPress$1(Landroid/view/KeyEvent;)V
    .registers 5

    .line 2284
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    .line 2284
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnHomeWithPolicy(IJ)Z

    return-void
.end method

.method private synthetic lambda$onPress$0(Landroid/view/KeyEvent;)V
    .registers 2

    .line 2272
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method


# virtual methods
.method public final canLaunchDoubleHomeCamera()Z
    .registers 3

    .line 2318
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fgetmQuickLaunchCameraBehavior(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fgetmQuickLaunchCameraBehavior(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result p0

    if-nez p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    return v1
.end method

.method public onLongPress(JLandroid/view/KeyEvent;I)V
    .registers 5

    const/4 p1, 0x1

    .line 2278
    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 2279
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p1, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 2283
    :cond_e
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result p1

    if-nez p1, :cond_24

    .line 2284
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;Landroid/view/KeyEvent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method

.method public onMultiPress(JILandroid/view/KeyEvent;)V
    .registers 7

    const/4 p1, 0x2

    if-ne p3, p1, :cond_49

    .line 2292
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {p2, v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_13

    return-void

    .line 2298
    :cond_13
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_HOME_LAUNCH_CAMERA:Z

    if-eqz p2, :cond_31

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->canLaunchDoubleHomeCamera()Z

    move-result p2

    if-eqz p2, :cond_31

    .line 2299
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->hasDoubleCameraId(I)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 2300
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleDoublePressLaunchCamera(I)V

    return-void

    .line 2304
    :cond_31
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2305
    invoke-virtual {p2}, Lcom/android/server/policy/KeyCustomizationManager;->hasOneHandModeId()Z

    move-result p2

    if-eqz p2, :cond_49

    .line 2306
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    return-void

    .line 2313
    :cond_49
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p4, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchMultiPressAction(Landroid/view/KeyEvent;I)Z

    return-void
.end method

.method public onPress(JLandroid/view/KeyEvent;)V
    .registers 4

    .line 2268
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p0, "PhoneWindowManagerExt"

    const-string p1, "Ignoring HOME; event canceled."

    .line 2269
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2272
    :cond_e
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;Landroid/view/KeyEvent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
