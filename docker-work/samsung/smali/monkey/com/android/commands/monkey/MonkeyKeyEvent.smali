.class public Lcom/android/commands/monkey/MonkeyKeyEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyKeyEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mKeyCode:I

.field private mKeyEvent:Landroid/view/KeyEvent;

.field private mMetaState:I

.field private mRepeatCount:I

.field private mScanCode:I


# direct methods
.method public constructor <init>(II)V
    .registers 14
    .param p1, "action"    # I
    .param p2, "keyCode"    # I

    .line 42
    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    .line 43
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .registers 12
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "keyCode"    # I
    .param p7, "repeatCount"    # I
    .param p8, "metaState"    # I
    .param p9, "device"    # I
    .param p10, "scanCode"    # I

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 49
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 50
    iput-wide p3, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 51
    iput p5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    .line 52
    iput p6, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    .line 53
    iput p7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    .line 54
    iput p8, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    .line 55
    iput p9, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    .line 56
    iput p10, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScanCode:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "e"    # Landroid/view/KeyEvent;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 61
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    .line 62
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    :goto_b
    return v0
.end method

.method public getDownTime()J
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    :goto_b
    return-wide v0
.end method

.method public getEventTime()J
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    :goto_b
    return-wide v0
.end method

.method public getKeyCode()I
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    :goto_b
    return v0
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 26
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 101
    move-object/from16 v1, p0

    const-string v2, "): "

    const-string v3, ":Sending Key ("

    const/4 v4, 0x1

    move/from16 v5, p3

    if-le v5, v4, :cond_6e

    .line 103
    iget v0, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    if-ne v0, v4, :cond_13

    .line 104
    const-string v0, "ACTION_UP"

    move-object v6, v0

    .local v0, "note":Ljava/lang/String;
    goto :goto_16

    .line 106
    .end local v0    # "note":Ljava/lang/String;
    :cond_13
    const-string v0, "ACTION_DOWN"

    move-object v6, v0

    .line 110
    .local v6, "note":Ljava/lang/String;
    :goto_16
    :try_start_16
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    // "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    .line 112
    invoke-static {v8}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-virtual {v0, v7}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_16 .. :try_end_46} :catch_47

    .line 116
    goto :goto_6e

    .line 113
    :catch_47
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v7, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    // Unknown key event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 119
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v6    # "note":Ljava/lang/String;
    :cond_6e
    :goto_6e
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    .line 120
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    if-nez v0, :cond_a9

    .line 121
    iget-wide v2, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 122
    .local v2, "eventTime":J
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gtz v8, :cond_7e

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 125
    :cond_7e
    iget-wide v8, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 126
    .local v8, "downTime":J
    cmp-long v6, v8, v6

    if-gtz v6, :cond_87

    .line 127
    move-wide v8, v2

    move-wide v6, v8

    goto :goto_88

    .line 126
    :cond_87
    move-wide v6, v8

    .line 129
    .end local v8    # "downTime":J
    .local v6, "downTime":J
    :goto_88
    new-instance v21, Landroid/view/KeyEvent;

    iget v13, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    iget v14, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    iget v15, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    iget v11, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    iget v12, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    iget v9, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScanCode:I

    const/16 v19, 0x8

    const/16 v20, 0x101

    move-object/from16 v8, v21

    move/from16 v18, v9

    move-wide v9, v6

    move/from16 v16, v11

    move/from16 v17, v12

    move-wide v11, v2

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v21

    .line 133
    .end local v2    # "eventTime":J
    .end local v6    # "downTime":J
    :cond_a9
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 135
    const/4 v2, 0x0

    return v2

    .line 137
    :cond_b5
    return v4
.end method

.method public isThrottlable()Z
    .registers 3

    .line 96
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public setDownTime(J)V
    .registers 5
    .param p1, "downTime"    # J

    .line 81
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_7

    .line 84
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 85
    return-void

    .line 82
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify down time of this key event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEventTime(J)V
    .registers 5
    .param p1, "eventTime"    # J

    .line 88
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_7

    .line 91
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 92
    return-void

    .line 89
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify event time of this key event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
