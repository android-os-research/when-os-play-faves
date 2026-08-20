.class public Lcom/android/server/accessibility/SamsungBounceKeys;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungBounceKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "SamsungBounceKeys"


# instance fields
.field public final DEFAULT_PERIOD:F

.field public mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

.field public mBounceKeysPeriod:F

.field public mBounceKeysPeriodMilli:J

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBlocking:Z

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mOldKeyCode:I

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBounceKeysPeriod(Lcom/android/server/accessibility/SamsungBounceKeys;)F
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriod:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmBounceKeysPeriod(Lcom/android/server/accessibility/SamsungBounceKeys;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriod:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBounceKeysPeriodMilli(Lcom/android/server/accessibility/SamsungBounceKeys;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsBlocking(Lcom/android/server/accessibility/SamsungBounceKeys;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/SamsungBounceKeys;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 41
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 23
    iput v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->DEFAULT_PERIOD:F

    .line 27
    new-instance v0, Lcom/android/server/accessibility/SamsungBounceKeys$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungBounceKeys$1;-><init>(Lcom/android/server/accessibility/SamsungBounceKeys;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    .line 42
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mUserId:I

    .line 44
    new-instance p1, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;-><init>(Lcom/android/server/accessibility/SamsungBounceKeys;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    .line 45
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->start(Landroid/content/ContentResolver;)V

    .line 47
    iget-wide p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 2

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    if-eqz v0, :cond_10

    .line 108
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->stop()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    :cond_10
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 9

    .line 60
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 62
    sget-object v2, Lcom/android/server/accessibility/SamsungBounceKeys;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyEvent action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mIsBlocking : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mOldKeyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-eq v1, v3, :cond_77

    const/16 v3, 0x19

    if-ne v1, v3, :cond_45

    goto :goto_77

    .line 72
    :cond_45
    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    if-eqz v3, :cond_5a

    .line 73
    iget v3, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    if-ne v3, v1, :cond_5a

    .line 74
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_5a
    const/4 v3, 0x1

    if-ne v0, v3, :cond_6f

    .line 80
    sget-object v0, Lcom/android/server/accessibility/SamsungBounceKeys;->TAG:Ljava/lang/String;

    const-string v4, "BounceKeys is activated"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 82
    iput v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    .line 83
    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    .line 85
    :cond_6f
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_76

    .line 86
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_76
    return-void

    .line 65
    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_83

    .line 67
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_83
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 53
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_7

    .line 54
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_7
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    .line 96
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 97
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
