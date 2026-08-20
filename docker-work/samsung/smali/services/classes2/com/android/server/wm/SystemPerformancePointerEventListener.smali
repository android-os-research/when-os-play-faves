.class public Lcom/android/server/wm/SystemPerformancePointerEventListener;
.super Ljava/lang/Object;
.source "SystemPerformancePointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;
    }
.end annotation


# static fields
.field public static final REQUEST_SCROLL_BOOSTER_CHECKING_DURATION:I = 0x1f4

.field public static final REQUEST_SCROLL_BOOSTER_TIMEOUT:I = 0x3e8


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mHandler:Landroid/os/Handler;

.field public mLastAcquireTime:J

.field public mScrollAcquireRunnable:Ljava/lang/Runnable;

.field public mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public mScrollReleaseRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$5D6oLH6RXVHVQbGjmaNrpwTWdBI(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$DjUUHO1SMB72Y1hFY2GBUCquxFg(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$SlcAoEFt1rFS57CTGN_zC_HLMCA(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->lambda$new$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastAcquireTime(Lcom/android/server/wm/SystemPerformancePointerEventListener;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmScrollAcquireRunnable(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScrollDvfsManager(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Lcom/samsung/android/os/SemDvfsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScrollReleaseRunnable(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastAcquireTime(Lcom/android/server/wm/SystemPerformancePointerEventListener;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->TAG:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    const-string v2, "WM_SCROLL_DETECTED"

    const/16 v3, 0xe

    .line 56
    invoke-static {p1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_50

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object p1

    if-eqz p1, :cond_48

    .line 60
    array-length v2, p1

    if-lez v2, :cond_48

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v2, 0x0

    aget p1, p1, v2

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    const-wide/16 v2, 0x0

    .line 62
    iput-wide v2, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    .line 63
    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;

    .line 69
    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Ljava/lang/Runnable;

    goto :goto_50

    :cond_48
    const-string p1, "SemDvfsManager Not Initialized..."

    .line 75
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 80
    :cond_50
    :goto_50
    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_b

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    :cond_b
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_7

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$new$2()V
    .registers 5

    .line 81
    new-instance v0, Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    iget-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector-IA;)V

    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener$1;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 91
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    goto :goto_30

    .line 95
    :cond_1a
    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_30

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const-wide/16 v0, 0x0

    .line 98
    iput-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    :cond_30
    :goto_30
    return-void
.end method
