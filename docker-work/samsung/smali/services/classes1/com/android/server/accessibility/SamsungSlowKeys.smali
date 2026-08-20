.class public Lcom/android/server/accessibility/SamsungSlowKeys;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungSlowKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final MESSAGE_SLOW_KEY_PRESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SamsungSlowKeys"


# instance fields
.field public final DEFAULT_PERIOD:F

.field public final mContext:Landroid/content/Context;

.field public mCurrentKeyEvent:Landroid/view/KeyEvent;

.field public final mHandler:Landroid/os/Handler;

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mPolicyFlags:I

.field public mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

.field public mSlowKeysPeriod:F

.field public mSlowKeysPeriodMilli:J

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentKeyEvent(Lcom/android/server/accessibility/SamsungSlowKeys;)Landroid/view/KeyEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNext(Lcom/android/server/accessibility/SamsungSlowKeys;)Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyFlags(Lcom/android/server/accessibility/SamsungSlowKeys;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mPolicyFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSlowKeysPeriod(Lcom/android/server/accessibility/SamsungSlowKeys;)F
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriod:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentKeyEvent(Lcom/android/server/accessibility/SamsungSlowKeys;Landroid/view/KeyEvent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSlowKeysPeriod(Lcom/android/server/accessibility/SamsungSlowKeys;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriod:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSlowKeysPeriodMilli(Lcom/android/server/accessibility/SamsungSlowKeys;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriodMilli:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdebugLog(Lcom/android/server/accessibility/SamsungSlowKeys;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/SamsungSlowKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 50
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    .line 22
    iput v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->DEFAULT_PERIOD:F

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 34
    new-instance v1, Lcom/android/server/accessibility/SamsungSlowKeys$1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungSlowKeys$1;-><init>(Lcom/android/server/accessibility/SamsungSlowKeys;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mContext:Landroid/content/Context;

    .line 52
    iput p2, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mUserId:I

    .line 53
    new-instance v1, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;-><init>(Lcom/android/server/accessibility/SamsungSlowKeys;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->start(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_7

    .line 106
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_7
    return-void
.end method

.method public final debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 121
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_7

    .line 93
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    if-eqz v0, :cond_10

    .line 114
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->stop()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    :cond_10
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 7

    .line 60
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-eq v1, v3, :cond_31

    const/16 v3, 0x19

    if-ne v1, v3, :cond_12

    goto :goto_31

    :cond_12
    if-nez v0, :cond_20

    .line 71
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 72
    iput p2, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mPolicyFlags:I

    .line 73
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriodMilli:J

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 77
    :cond_20
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    if-nez p0, :cond_30

    .line 79
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_30
    return-void

    .line 63
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_3d

    .line 65
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_3d
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 85
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_7

    .line 86
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_7
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    .line 99
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 100
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
