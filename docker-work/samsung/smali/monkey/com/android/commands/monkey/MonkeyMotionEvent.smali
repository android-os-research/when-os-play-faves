.class public abstract Lcom/android/commands/monkey/MonkeyMotionEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyMotionEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEdgeFlags:I

.field private mEventTime:J

.field private mFlags:I

.field private mIntermediateNote:Z

.field private mMetaState:I

.field private mPointers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:I

.field private mXPrecision:F

.field private mYPrecision:F


# direct methods
.method protected constructor <init>(III)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "source"    # I
    .param p3, "action"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 48
    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 50
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 51
    iput p3, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    .line 54
    iput v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    .line 55
    return-void
.end method

.method private getEvent()Landroid/view/MotionEvent;
    .registers 21

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 130
    .local v1, "pointerCount":I
    new-array v15, v1, [I

    .line 131
    .local v15, "pointerIds":[I
    new-array v14, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 132
    .local v14, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_24

    .line 133
    iget-object v3, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v15, v2

    .line 134
    iget-object v3, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent$PointerCoords;

    aput-object v3, v14, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 137
    .end local v2    # "i":I
    :cond_24
    iget-wide v2, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 138
    iget-wide v4, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_32

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    :cond_32
    iget v6, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    iget v10, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    iget v11, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    iget v12, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    iget v13, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    iget v9, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    iget v8, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    iget v7, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mFlags:I

    .line 137
    move/from16 v16, v7

    move v7, v1

    move/from16 v17, v8

    move-object v8, v15

    move/from16 v18, v9

    move-object v9, v14

    move-object/from16 v19, v14

    .end local v14    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .local v19, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    move/from16 v14, v18

    move-object/from16 v18, v15

    .end local v15    # "pointerIds":[I
    .local v18, "pointerIds":[I
    move/from16 v15, v17

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 141
    .local v2, "ev":Landroid/view/MotionEvent;
    return-object v2
.end method


# virtual methods
.method public addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 10
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 58
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 8
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pressure"    # F
    .param p5, "size"    # F

    .line 63
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 64
    .local v0, "c":Landroid/view/MotionEvent$PointerCoords;
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 65
    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 66
    iput p4, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 67
    iput p5, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 68
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 69
    return-object p0
.end method

.method public getAction()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    return v0
.end method

.method public getDownTime()J
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    return-wide v0
.end method

.method public getIntermediateNote()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    return v0
.end method

.method protected abstract getTypeLabel()Ljava/lang/String;
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 11
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 151
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 152
    .local v0, "me":Landroid/view/MotionEvent;
    const/4 v1, 0x1

    if-lez p3, :cond_b

    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    if-eqz v2, :cond_d

    :cond_b
    if-le p3, v1, :cond_b2

    .line 153
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":Sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getTypeLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_cc

    .line 175
    :pswitch_28
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 172
    :pswitch_30
    const-string v3, "ACTION_POINTER_UP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    goto :goto_6c

    .line 169
    :pswitch_42
    const-string v3, "ACTION_POINTER_DOWN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    goto :goto_6c

    .line 166
    :pswitch_54
    const-string v3, "ACTION_CANCEL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    goto :goto_6c

    .line 160
    :pswitch_5a
    const-string v3, "ACTION_MOVE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    goto :goto_6c

    .line 163
    :pswitch_60
    const-string v3, "ACTION_UP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    goto :goto_6c

    .line 157
    :pswitch_66
    const-string v3, "ACTION_DOWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    nop

    .line 178
    :goto_6c
    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 181
    .local v3, "pointerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_76
    if-ge v4, v3, :cond_a9

    .line 182
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v5, ":("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    .line 185
    .end local v4    # "i":I
    :cond_a9
    sget-object v4, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 188
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    .end local v3    # "pointerCount":I
    :cond_b2
    :try_start_b2
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_c6

    if-nez v2, :cond_c1

    .line 190
    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 190
    return v1

    .line 193
    :cond_c1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 194
    nop

    .line 195
    return v1

    .line 193
    :catchall_c6
    move-exception v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 194
    throw v1

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_66
        :pswitch_60
        :pswitch_5a
        :pswitch_54
        :pswitch_28
        :pswitch_42
        :pswitch_30
    .end packed-switch
.end method

.method public isThrottlable()Z
    .registers 3

    .line 146
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 2
    .param p1, "deviceId"    # I

    .line 115
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    .line 116
    return-object p0
.end method

.method public setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 3
    .param p1, "downTime"    # J

    .line 94
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 95
    return-object p0
.end method

.method public setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 2
    .param p1, "edgeFlags"    # I

    .line 120
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    .line 121
    return-object p0
.end method

.method public setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 3
    .param p1, "eventTime"    # J

    .line 99
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 100
    return-object p0
.end method

.method public setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 2
    .param p1, "b"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    .line 74
    return-object p0
.end method

.method public setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 2
    .param p1, "metaState"    # I

    .line 104
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    .line 105
    return-object p0
.end method

.method public setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 3
    .param p1, "xPrecision"    # F
    .param p2, "yPrecision"    # F

    .line 109
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    .line 110
    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    .line 111
    return-object p0
.end method
