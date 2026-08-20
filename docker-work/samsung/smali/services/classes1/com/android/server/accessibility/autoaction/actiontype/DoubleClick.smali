.class public Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "DoubleClick.java"


# static fields
.field public static final DELAY_DOUBLE_CLICK:J = 0x32L


# instance fields
.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mLastMotionEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    const-string/jumbo v0, "input"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    .line 39
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public static createAction(Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;
    .registers 3

    .line 43
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;-><init>(Landroid/content/Context;Landroid/view/MotionEvent;)V

    return-object v0
.end method

.method public static getStringResId()I
    .registers 1

    const v0, 0x1040111

    return v0
.end method


# virtual methods
.method public final click(JJI)V
    .registers 16

    .line 60
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 63
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 64
    iget-object v5, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v0, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v0, v2, v4

    .line 66
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 p2, 0x1002

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 p2, 0x800000

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 70
    invoke-virtual {p1, p5}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 72
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 75
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 78
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p0, p1, p3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public performCornerAction(I)V
    .registers 10

    .line 52
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_18

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-wide v1, v6

    move-wide v3, v6

    move v5, p1

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->click(JJI)V

    const-wide/16 v0, 0x32

    add-long v3, v6, v0

    move-object v0, p0

    move-wide v1, v3

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->click(JJI)V

    :cond_18
    return-void
.end method
