.class public Lcom/android/server/accessibility/autoaction/actiontype/DragAction;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "DragAction.java"


# static fields
.field public static final GESTURE_TIME:I = 0x12c

.field public static final STEP_SWIPE_ACTION_MOVE:I = 0x14

.field public static final TAG:Ljava/lang/String; = "DragAction"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mFirstEvent:Landroid/view/MotionEvent;

.field public mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mSecondEvent:Landroid/view/MotionEvent;

.field public mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mType:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFirstEvent(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Landroid/view/MotionEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFirstPoint(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFirstPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecondEvent(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Landroid/view/MotionEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecondPoint(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecondPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFirstPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;[Landroid/view/MotionEvent$PointerCoords;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSecondPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;[Landroid/view/MotionEvent$PointerCoords;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdragAndDrop(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->dragAndDrop(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 47
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    .line 52
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mType:Ljava/lang/String;

    .line 54
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 55
    new-instance p1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 56
    new-instance p1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    return-void
.end method

.method public static createAction(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/DragAction;
    .registers 4

    .line 60
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;-><init>(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .registers 2

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "drag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "drag_and_drop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const p0, 0x1040113

    return p0

    .line 70
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Swipe Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    const p0, 0x1040112

    return p0
.end method


# virtual methods
.method public final dragAndDrop(I)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v14, 0x1

    new-array v2, v14, [Landroid/view/MotionEvent$PointerProperties;

    .line 118
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v15, 0x0

    aput-object v3, v2, v15

    .line 119
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    aget-object v2, v2, v15

    invoke-virtual {v3, v4, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 121
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "input"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/hardware/input/InputManager;

    if-nez v9, :cond_31

    return-void

    :cond_31
    const/4 v6, 0x0

    .line 125
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v15

    iget v7, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/16 v16, 0x1

    move-wide v2, v10

    move-wide v4, v12

    move-object v15, v9

    move/from16 v9, v16

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    const/16 v9, 0x1002

    .line 127
    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v8, 0x800000

    .line 128
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 129
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v7, 0x2

    .line 131
    invoke-virtual {v15, v2, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 132
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 134
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "long_press_timeout"

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 136
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mType:Ljava/lang/String;

    const-string v5, "drag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    const/4 v2, 0x0

    goto :goto_75

    :cond_74
    add-int/2addr v2, v4

    :goto_75
    int-to-long v2, v2

    .line 139
    :try_start_76
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_79} :catch_131

    new-array v14, v14, [Landroid/view/MotionEvent$PointerCoords;

    .line 148
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/16 v17, 0x0

    aput-object v2, v14, v17

    .line 151
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 152
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 153
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 154
    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 157
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v17

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v17

    iget v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v3, v5

    const/high16 v6, 0x41a00000    # 20.0f

    div-float v16, v3, v6

    .line 158
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v3, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v2, v3

    div-float v18, v2, v6

    aget-object v2, v14, v17

    .line 160
    iput v5, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 161
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v6, v17

    :goto_ba
    const/16 v2, 0x14

    const/16 v3, 0xf

    if-ge v6, v2, :cond_107

    aget-object v2, v14, v17

    .line 164
    iget v4, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v4, v4, v16

    iput v4, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 165
    iget v5, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v5, v5, v18

    iput v5, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-long v2, v3

    add-long/2addr v12, v2

    const/16 v19, 0x2

    const/16 v20, 0x1

    move-wide v2, v10

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide v4, v12

    move/from16 v23, v6

    move/from16 v6, v19

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v19, v14

    move v14, v9

    move/from16 v9, v20

    .line 167
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v14}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v9, 0x800000

    .line 170
    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 171
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v8, 0x2

    .line 173
    invoke-virtual {v15, v2, v8}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 174
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v6, v23, 0x1

    move v7, v8

    move v8, v9

    move v9, v14

    move-object/from16 v14, v19

    const/16 v17, 0x0

    goto :goto_ba

    :cond_107
    move v14, v9

    move v9, v8

    move v8, v7

    int-to-long v2, v3

    add-long v4, v12, v2

    const/4 v6, 0x1

    .line 179
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v12, 0x1

    move-wide v2, v10

    move v10, v8

    move v8, v0

    move v0, v9

    move v9, v12

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 181
    invoke-virtual {v2, v14}, Landroid/view/MotionEvent;->setSource(I)V

    .line 182
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 183
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 185
    invoke-virtual {v15, v2, v10}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 186
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :catch_131
    move-exception v0

    move-object v1, v0

    .line 141
    sget-object v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public performCornerAction(I)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_11

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_11
    return-void
.end method

.method public setMotionEventForDragAction(Landroid/view/MotionEvent;)V
    .registers 2

    .line 76
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    return-void
.end method
