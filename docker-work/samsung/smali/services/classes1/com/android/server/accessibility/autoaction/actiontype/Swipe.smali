.class public Lcom/android/server/accessibility/autoaction/actiontype/Swipe;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "Swipe.java"


# static fields
.field public static final DIRECTION_DOWN:Ljava/lang/String; = "swipe_down"

.field public static final DIRECTION_LEFT:Ljava/lang/String; = "swipe_left"

.field public static final DIRECTION_RIGHT:Ljava/lang/String; = "swipe_right"

.field public static final DIRECTION_UP:Ljava/lang/String; = "swipe_up"

.field public static final DISTANCE_SWIPE_ACTION:I = 0x64

.field public static final STEP_SWIPE_ACTION_MOVE:F = 6.0f


# instance fields
.field public mContext:Landroid/content/Context;

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mType:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mswipe(Lcom/android/server/accessibility/autoaction/actiontype/Swipe;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->swipe(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)V
    .registers 5

    .line 45
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 46
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mType:Ljava/lang/String;

    .line 48
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public static createAction(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/Swipe;
    .registers 4

    .line 52
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;-><init>(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .registers 3

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_56

    goto :goto_3b

    :sswitch_c
    const-string/jumbo v0, "swipe_right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_3b

    :cond_16
    const/4 v1, 0x3

    goto :goto_3b

    :sswitch_18
    const-string/jumbo v0, "swipe_left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_3b

    :cond_22
    const/4 v1, 0x2

    goto :goto_3b

    :sswitch_24
    const-string/jumbo v0, "swipe_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_3b

    :cond_2e
    const/4 v1, 0x1

    goto :goto_3b

    :sswitch_30
    const-string/jumbo v0, "swipe_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    packed-switch v1, :pswitch_data_68

    .line 66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Swipe Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_46
    const p0, 0x1040129

    return p0

    :pswitch_4a
    const p0, 0x1040128

    return p0

    :pswitch_4e
    const p0, 0x1040127

    return p0

    :pswitch_52
    const p0, 0x104012a

    return p0

    :sswitch_data_56
    .sparse-switch
        -0x54cce40 -> :sswitch_30
        0x1aa61287 -> :sswitch_24
        0x1aa98dec -> :sswitch_18
        0x3ade90d7 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
    .end packed-switch
.end method


# virtual methods
.method public performCornerAction(I)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_11

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/Swipe;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_11
    return-void
.end method

.method public final swipe(I)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 85
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v12, 0x1

    new-array v13, v12, [Landroid/view/MotionEvent$PointerCoords;

    .line 88
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v14, 0x0

    aput-object v3, v13, v14

    .line 89
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 91
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "input"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/hardware/input/InputManager;

    if-nez v15, :cond_31

    return-void

    :cond_31
    const/4 v6, 0x0

    aget-object v2, v13, v14

    .line 94
    iget v7, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v9, 0x1

    move-wide v2, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    const/16 v9, 0x1002

    .line 96
    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v8, 0x800000

    .line 97
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 98
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v7, 0x2

    .line 100
    invoke-virtual {v15, v2, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 101
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 107
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 108
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 109
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 110
    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 111
    iget v2, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 115
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_156

    :goto_77
    move v12, v3

    goto :goto_a6

    :sswitch_79
    const-string/jumbo v4, "swipe_right"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto :goto_77

    :cond_83
    const/4 v12, 0x3

    goto :goto_a6

    :sswitch_85
    const-string/jumbo v4, "swipe_left"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto :goto_77

    :cond_8f
    move v12, v7

    goto :goto_a6

    :sswitch_91
    const-string/jumbo v4, "swipe_down"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    goto :goto_77

    :sswitch_9b
    const-string/jumbo v4, "swipe_up"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto :goto_77

    :cond_a5
    move v12, v14

    :cond_a6
    :goto_a6
    const/high16 v0, 0x41100000    # 9.0f

    const/4 v3, 0x0

    const/high16 v16, 0x40c00000    # 6.0f

    packed-switch v12, :pswitch_data_168

    move v0, v3

    move v12, v0

    goto :goto_e0

    :pswitch_b1
    int-to-float v2, v2

    div-float v0, v2, v0

    aget-object v4, v13, v14

    .line 124
    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v5, v0, v16

    add-float/2addr v5, v4

    cmpl-float v5, v5, v2

    if-lez v5, :cond_c3

    sub-float/2addr v2, v4

    div-float v2, v2, v16

    goto :goto_d8

    :cond_c3
    :goto_c3
    move v12, v0

    :goto_c4
    move v0, v3

    goto :goto_e0

    :pswitch_c6
    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    aget-object v0, v13, v14

    .line 130
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v2, v16

    add-float/2addr v4, v0

    cmpg-float v4, v4, v3

    if-gez v4, :cond_d8

    neg-float v0, v0

    div-float v0, v0, v16

    goto :goto_c3

    :cond_d8
    :goto_d8
    move v12, v2

    goto :goto_c4

    :pswitch_da
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_df

    :pswitch_dd
    const/high16 v0, -0x3d380000    # -100.0f

    :goto_df
    move v12, v3

    :goto_e0
    move v6, v14

    :goto_e1
    int-to-float v2, v6

    cmpg-float v2, v2, v16

    if-gez v2, :cond_130

    aget-object v2, v13, v14

    .line 139
    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v3, v12

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 140
    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v17, 0x2

    aget-object v2, v13, v14

    .line 142
    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/16 v18, 0x1

    move/from16 v20, v2

    move/from16 v19, v3

    move-wide v2, v10

    move/from16 v21, v6

    move/from16 v6, v17

    move v14, v7

    move/from16 v7, v19

    move v14, v8

    move/from16 v8, v20

    move v14, v9

    move/from16 v9, v18

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v14}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v3, 0x800000

    .line 145
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 146
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v3, 0x2

    .line 148
    invoke-virtual {v15, v2, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 149
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v6, v21, 0x1

    move v9, v14

    const/4 v7, 0x2

    const/high16 v8, 0x800000

    const/4 v14, 0x0

    goto :goto_e1

    :cond_130
    move v14, v9

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v0, 0x0

    aget-object v0, v13, v0

    .line 154
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v9, 0x1

    move-wide v2, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v2, 0x800000

    .line 157
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v1, 0x2

    .line 160
    invoke-virtual {v15, v0, v1}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 161
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :sswitch_data_156
    .sparse-switch
        -0x54cce40 -> :sswitch_9b
        0x1aa61287 -> :sswitch_91
        0x1aa98dec -> :sswitch_85
        0x3ade90d7 -> :sswitch_79
    .end sparse-switch

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_da
        :pswitch_c6
        :pswitch_b1
    .end packed-switch
.end method
