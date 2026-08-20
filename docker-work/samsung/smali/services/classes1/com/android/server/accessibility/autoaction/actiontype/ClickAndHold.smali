.class public Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "ClickAndHold.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ClickAndHold"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mLastMotionEvent:Landroid/view/MotionEvent;


# direct methods
.method public static bridge synthetic -$$Nest$mclickAndHold(Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->clickAndHold(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 36
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public static createAction(Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;
    .registers 3

    .line 41
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;-><init>(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-object v0
.end method

.method public static getStringResId()I
    .registers 1

    const v0, 0x1040110

    return v0
.end method


# virtual methods
.method public final clickAndHold(I)V
    .registers 11

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 63
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/MotionEvent$PointerCoords;

    .line 66
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 67
    iget-object v8, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8, v4, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 69
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "input"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    if-nez p0, :cond_2c

    return-void

    :cond_2c
    const/4 v4, 0x0

    aget-object v5, v5, v7

    .line 73
    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v7, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v8, 0x1

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v1, 0x800000

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 77
    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 p1, 0x2

    .line 79
    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 80
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public performCornerAction(I)V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_11

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_11
    return-void
.end method
