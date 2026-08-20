.class public Lcom/android/server/accessibility/SamsungTapDuration;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungTapDuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_THRESHOLD:F = 0.1f

.field public static final MAX_ARRAY_SIZE:I = 0x4

.field public static final MESSAGE_ON_ACTION_TAP:I = 0x1

.field public static final MULTI_FINGER_MAX:I = 0x3

.field public static final TAG:Ljava/lang/String; = "SamsungTapDuration"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDownEvent:[Landroid/view/MotionEvent;

.field public mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

.field public final mHandler:Landroid/os/Handler;

.field public mHoldingState:Z

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mPolicyFlags:[I

.field public mRawEvent:[Landroid/view/MotionEvent;

.field public mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

.field public mTapDurationThreshold:F

.field public mTapDurationThresholdMilli:J

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDownEvent(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDurationProgress(Lcom/android/server/accessibility/SamsungTapDuration;)[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyFlags(Lcom/android/server/accessibility/SamsungTapDuration;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRawEvent(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHoldingState(Lcom/android/server/accessibility/SamsungTapDuration;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearMotionEvents(Lcom/android/server/accessibility/SamsungTapDuration;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monActionTap(Lcom/android/server/accessibility/SamsungTapDuration;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 44
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/MotionEvent;

    .line 32
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    new-array v1, v0, [Landroid/view/MotionEvent;

    .line 33
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    new-array v1, v0, [I

    .line 34
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    new-array v0, v0, [Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 40
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 51
    new-instance v0, Lcom/android/server/accessibility/SamsungTapDuration$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTapDuration$1;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mUserId:I

    .line 47
    new-instance v1, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->start(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 2

    .line 204
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_7

    .line 205
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_7
    return-void
.end method

.method public final clearMotionEvents(I)V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 236
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 237
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aput-object v1, v0, p1

    .line 239
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1b

    .line 240
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 241
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aput-object v1, v0, p1

    .line 243
    :cond_1b
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    const/4 v0, 0x0

    aput v0, p0, p1

    return-void
.end method

.method public final createDurationProgress(I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_18

    .line 248
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object v2, v1, v0

    if-nez v2, :cond_15

    .line 249
    new-instance v2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDuration;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method public getDisplayContext(I)Landroid/content/Context;
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_24

    .line 269
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 271
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 275
    :cond_24
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 191
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_7

    .line 192
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_7
    return-void
.end method

.method public final onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 226
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_26

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inject this event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungTapDuration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_21
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_26
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1b

    .line 214
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object v1, v1, v0

    if-eqz v1, :cond_18

    .line 215
    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->destroy()V

    .line 216
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aput-object v2, v1, v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 219
    :cond_1b
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    if-eqz v0, :cond_24

    .line 220
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->stop()V

    .line 221
    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    :cond_24
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 3

    .line 184
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_7

    .line 185
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_7
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 12

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_106

    if-lt v1, v3, :cond_13

    goto/16 :goto_106

    .line 94
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/SamsungTapDuration;->createDurationProgress(I)V

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x4

    const-string v5, "SamsungTapDuration"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_b8

    if-eq v3, v6, :cond_94

    const/4 v4, 0x2

    if-eq v3, v4, :cond_79

    const/4 v2, 0x5

    if-eq v3, v2, :cond_48

    const/4 v0, 0x6

    if-eq v3, v0, :cond_32

    goto/16 :goto_106

    .line 150
    :cond_32
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v0, :cond_3a

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 154
    :cond_3a
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    .line 155
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p0, p0, v1

    if-eqz p0, :cond_106

    .line 156
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->cancel()V

    goto/16 :goto_106

    .line 125
    :cond_48
    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v2, :cond_4f

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 130
    :cond_4f
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    aput-object v3, v2, v1

    .line 131
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    aput-object p2, v2, v1

    .line 132
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    aput p3, p2, v1

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    .line 136
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p0, p0, v1

    if-eqz p0, :cond_106

    .line 137
    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setViewOnOff(Z)V

    goto/16 :goto_106

    .line 141
    :cond_79
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v0, :cond_80

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_80
    :goto_80
    if-ge v7, v2, :cond_106

    .line 145
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_80

    .line 160
    :cond_94
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v0, :cond_9b

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 165
    :cond_9b
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iput-boolean v7, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    const-string p1, "Finish checking if this tap is valid "

    .line 167
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    :goto_aa
    if-ge v7, v4, :cond_106

    .line 172
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p1, p1, v7

    if-eqz p1, :cond_b5

    .line 173
    invoke-virtual {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->cancel()V

    :cond_b5
    add-int/lit8 v7, v7, 0x1

    goto :goto_aa

    .line 99
    :cond_b8
    iput-boolean v6, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    const-string v0, "Start checking if this tap is valid "

    .line 100
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    aput-object v1, v0, v7

    .line 104
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    aput-object p2, v0, v7

    .line 105
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    aput p3, p2, v7

    .line 108
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    invoke-virtual {p2, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 110
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, p2, p1, v7}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    move p1, v7

    :goto_e6
    if-ge p1, v4, :cond_fd

    .line 114
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p2, p2, p1

    if-eqz p2, :cond_fa

    .line 115
    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    invoke-virtual {p2, v0, v1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setDurationTime(J)V

    .line 116
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->start()V

    :cond_fa
    add-int/lit8 p1, p1, 0x1

    goto :goto_e6

    .line 120
    :cond_fd
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p0, p0, v7

    if-eqz p0, :cond_106

    .line 121
    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setViewOnOff(Z)V

    :cond_106
    :goto_106
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    .line 198
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 199
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public final setXY(FFI)V
    .registers 5

    const/4 v0, 0x3

    if-le p3, v0, :cond_c

    const-string p0, "SamsungTapDuration"

    const-string/jumbo p1, "setXY()_pointerId is invalid!!"

    .line 256
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 260
    :cond_c
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p0, p0, p3

    if-eqz p0, :cond_15

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->updateView(FF)V

    :cond_15
    return-void
.end method
