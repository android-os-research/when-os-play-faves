.class public Lcom/android/server/ssrm/PalmInputEventChecker;
.super Ljava/lang/Object;
.source "PalmInputEventChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static TAG:Ljava/lang/String; = null

.field private static final VIEW_COVER_CLOSED:I = -0x2


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mIsEnabledRunnable:Z

.field mIsMotionUp:Z

.field mIsPalmTouch:Z

.field mPalmTouchCheckRunnable:Ljava/lang/Runnable;

.field mTouchDownCount:I

.field private mWMS:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$monRecognition(Lcom/android/server/ssrm/PalmInputEventChecker;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/PalmInputEventChecker;->onRecognition(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/ssrm/PalmInputEventChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/PalmInputEventChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsPalmTouch:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsMotionUp:Z

    .line 57
    iput v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mTouchDownCount:I

    .line 59
    iput-boolean v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsEnabledRunnable:Z

    .line 92
    new-instance v0, Lcom/android/server/ssrm/PalmInputEventChecker$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/PalmInputEventChecker$1;-><init>(Lcom/android/server/ssrm/PalmInputEventChecker;)V

    iput-object v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mPalmTouchCheckRunnable:Ljava/lang/Runnable;

    .line 30
    iput-object p1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mHandler:Landroid/os/Handler;

    .line 33
    nop

    .line 34
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 35
    new-instance v1, Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;-><init>(Lcom/android/server/ssrm/PalmInputEventChecker;Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver-IA;)V

    iget-object v2, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 36
    return-void
.end method

.method private onRecognition(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    .line 63
    return-void

    .line 66
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 72
    .local v0, "action":I
    iget-boolean v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsPalmTouch:Z

    const/4 v2, 0x1

    if-nez v1, :cond_22

    if-eqz v0, :cond_19

    const/4 v1, 0x2

    if-lt v0, v1, :cond_22

    .line 74
    :cond_19
    iget v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mTouchDownCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mTouchDownCount:I

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsMotionUp:Z

    goto :goto_36

    .line 76
    :cond_22
    if-ne v0, v2, :cond_36

    .line 77
    iput-boolean v2, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsMotionUp:Z

    .line 78
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mPalmTouchCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mPalmTouchCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    :cond_36
    :goto_36
    iget v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mTouchDownCount:I

    if-le v1, v2, :cond_50

    .line 83
    iget-boolean v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsEnabledRunnable:Z

    if-nez v1, :cond_50

    .line 84
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mPalmTouchCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mPalmTouchCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    iput-boolean v2, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsEnabledRunnable:Z

    .line 90
    :cond_50
    return-void
.end method
