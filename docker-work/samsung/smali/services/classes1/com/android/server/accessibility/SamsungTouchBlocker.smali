.class public Lcom/android/server/accessibility/SamsungTouchBlocker;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungTouchBlocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "SamsungTouchBlocker"


# instance fields
.field public final DEFAULT_PERIOD:F

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBlocking:Z

.field public mIsLastEventDown:Z

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mTapDurationEnabled:Z

.field public mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

.field public mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

.field public mTouchBlockingPeriod:F

.field public mTouchBlockingPeriodMilli:J

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fputmIsBlocking(Lcom/android/server/accessibility/SamsungTouchBlocker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTapDurationEnabled(Lcom/android/server/accessibility/SamsungTouchBlocker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapDurationEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .line 91
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    .line 73
    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->DEFAULT_PERIOD:F

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 102
    new-instance v0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchBlocker$1;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    .line 94
    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mUserId:I

    .line 95
    new-instance v1, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    .line 96
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->start(Landroid/content/ContentResolver;)V

    .line 98
    iget-wide v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 2

    return-void
.end method

.method public getDisplayContext(I)Landroid/content/Context;
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_24

    .line 232
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 234
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 238
    :cond_24
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final offTapIgnore()V
    .registers 2

    .line 184
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    :cond_8
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 220
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->destroy()V

    .line 221
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 223
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    if-eqz v0, :cond_13

    .line 224
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->stop()V

    .line 225
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    :cond_13
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 3

    .line 198
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_7

    .line 199
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_7
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 120
    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_43

    if-eqz v0, :cond_21

    if-eq v0, v3, :cond_1d

    if-eq v0, v2, :cond_11

    goto :goto_42

    .line 126
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    goto :goto_42

    .line 123
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->offTapIgnore()V

    goto :goto_42

    .line 129
    :cond_21
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-nez p2, :cond_34

    .line 130
    new-instance p2, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->getDisplayContext(I)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v3}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 133
    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 134
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    :goto_42
    return-void

    :cond_43
    if-eqz v0, :cond_71

    if-eq v0, v3, :cond_56

    if-eq v0, v2, :cond_4a

    goto :goto_94

    .line 153
    :cond_4a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    goto :goto_94

    .line 144
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->offTapIgnore()V

    .line 145
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    if-eqz v0, :cond_94

    .line 146
    sget-object v0, Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;

    const-string v1, "Touch Blocker is activated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    goto :goto_94

    .line 156
    :cond_71
    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-nez v0, :cond_86

    .line 158
    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 161
    :cond_86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    .line 167
    :cond_94
    :goto_94
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_b9

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_b4

    .line 169
    sget-object v0, Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inject this event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_b4
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_b9
    return-void
.end method

.method public final onTapIgnore()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz v0, :cond_1a

    .line 178
    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->setIgnoreView(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    if-nez v1, :cond_16

    iget-boolean p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapDurationEnabled:Z

    if-nez p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    :cond_1a
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    .line 209
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 210
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public final setXY(FF)V
    .registers 3

    .line 190
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz p0, :cond_7

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->updateView(FF)V

    :cond_7
    return-void
.end method
