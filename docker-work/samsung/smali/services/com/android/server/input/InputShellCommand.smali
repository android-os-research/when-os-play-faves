.class public Lcom/android/server/input/InputShellCommand;
.super Landroid/os/ShellCommand;
.source "InputShellCommand.java"


# static fields
.field public static final DEFAULT_BUTTON_STATE:I = 0x0

.field public static final DEFAULT_DEVICE_ID:I = 0x0

.field public static final DEFAULT_EDGE_FLAGS:I = 0x0

.field public static final DEFAULT_FLAGS:I = 0x0

.field public static final DEFAULT_META_STATE:I = 0x0

.field public static final DEFAULT_PRECISION_X:F = 1.0f

.field public static final DEFAULT_PRECISION_Y:F = 1.0f

.field public static final DEFAULT_PRESSURE:F = 1.0f

.field public static final DEFAULT_SIZE:F = 1.0f

.field public static final INVALID_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for command: "

.field public static final INVALID_DISPLAY_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for display ID."

.field public static final MODIFIER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_PRESSURE:F

.field public static final SOURCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/16 v1, 0x71

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x72

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x39

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3a

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3b

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3c

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x75

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x30000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x76

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x50000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/16 v1, 0x101

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "keyboard"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x201

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dpad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x401

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gamepad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1002

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchscreen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2002

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mouse"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4002

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "stylus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10004

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "trackball"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x100008

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchpad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x200000

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchnavigation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1000010

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "joystick"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAction()I
    .registers 8

    .line 454
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 455
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_62

    goto :goto_43

    :sswitch_18
    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_43

    :cond_21
    move v6, v2

    goto :goto_43

    :sswitch_23
    const-string v1, "MOVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_43

    :cond_2c
    move v6, v3

    goto :goto_43

    :sswitch_2e
    const-string v1, "DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_43

    :cond_37
    move v6, v4

    goto :goto_43

    :sswitch_39
    const-string v1, "UP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_43

    :cond_42
    move v6, v5

    :goto_43
    packed-switch v6, :pswitch_data_74

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5d
    return v2

    :pswitch_5e
    return v3

    :pswitch_5f
    return v5

    :pswitch_60
    return v4

    nop

    :sswitch_data_62
    .sparse-switch
        0xa9b -> :sswitch_39
        0x201ca2 -> :sswitch_2e
        0x2433d1 -> :sswitch_23
        0x760d227a -> :sswitch_18
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
    .end packed-switch
.end method

.method public final getDisplayId()I
    .registers 4

    .line 128
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string v0, "INVALID_DISPLAY"

    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    return v1

    :cond_e
    const-string v0, "DEFAULT_DISPLAY"

    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    return v2

    .line 135
    :cond_18
    :try_start_18
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_1f

    return v1

    .line 139
    :cond_1f
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_23} :catch_24

    return p0

    .line 141
    :catch_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: Invalid arguments for display ID."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getInputDeviceId(I)I
    .registers 7

    .line 117
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object p0

    .line 118
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_19

    aget v3, p0, v2

    .line 119
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 120
    invoke-virtual {v4, p1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v4

    if-eqz v4, :cond_16

    return v3

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    return v1
.end method

.method public final getSource(II)I
    .registers 3

    if-nez p1, :cond_3

    move p1, p2

    :cond_3
    return p1
.end method

.method public final getToolType(I)I
    .registers 2

    sparse-switch p1, :sswitch_data_c

    const/4 p0, 0x0

    return p0

    :sswitch_5
    const/4 p0, 0x2

    return p0

    :sswitch_7
    const/4 p0, 0x3

    return p0

    :sswitch_9
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_c
    .sparse-switch
        0x1002 -> :sswitch_9
        0x2002 -> :sswitch_7
        0x4002 -> :sswitch_5
        0xc002 -> :sswitch_5
        0x10004 -> :sswitch_7
        0x20004 -> :sswitch_7
        0x100008 -> :sswitch_9
        0x200000 -> :sswitch_9
    .end sparse-switch
.end method

.method public final injectKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3

    .line 112
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public final injectKeyEventAsync(Landroid/view/KeyEvent;)V
    .registers 3

    .line 533
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public final injectMotionEvent(IIJJFFFI)V
    .registers 29

    const/4 v0, 0x1

    new-array v7, v0, [Landroid/view/MotionEvent$PointerProperties;

    new-array v8, v0, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_32

    .line 164
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v7, v2

    .line 165
    iput v2, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 166
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getToolType(I)I

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 167
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v8, v2

    move/from16 v4, p7

    .line 168
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v5, p8

    .line 169
    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v6, p9

    .line 170
    iput v6, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v9, 0x3f800000    # 1.0f

    .line 171
    iput v9, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_32
    const/4 v0, -0x1

    move/from16 v2, p10

    if-ne v2, v0, :cond_3e

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3e

    move/from16 v16, v1

    goto :goto_40

    :cond_3e
    move/from16 v16, v2

    :goto_40
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    .line 179
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getInputDeviceId(I)I

    move-result v13

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move/from16 v5, p2

    move/from16 v15, p1

    .line 177
    invoke-static/range {v1 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    .line 181
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public final lerp(FFF)F
    .registers 4

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p2, p1

    return p2
.end method

.method public final onCommand(Ljava/lang/String;)I
    .registers 7

    .line 217
    sget-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 218
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 219
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, p1

    move-object p1, v4

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    const/4 v1, -0x1

    const-string v3, "-d"

    .line 224
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 225
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getDisplayId()I

    move-result v1

    .line 226
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    :cond_2d
    :try_start_2d
    const-string/jumbo v3, "text"

    .line 230
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 231
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runText(II)V

    goto :goto_a4

    :cond_3a
    const-string/jumbo v3, "keyevent"

    .line 232
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runKeyEvent(II)V

    goto :goto_a4

    :cond_47
    const-string/jumbo v3, "tap"

    .line 234
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runTap(II)V

    goto :goto_a4

    :cond_54
    const-string/jumbo v3, "swipe"

    .line 236
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runSwipe(II)V

    goto :goto_a4

    :cond_61
    const-string v3, "draganddrop"

    .line 238
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 239
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runDragAndDrop(II)V

    goto :goto_a4

    :cond_6d
    const-string/jumbo v3, "press"

    .line 240
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 241
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runPress(II)V

    goto :goto_a4

    :cond_7a
    const-string/jumbo v3, "roll"

    .line 242
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 243
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runRoll(II)V

    goto :goto_a4

    :cond_87
    const-string/jumbo v3, "motionevent"

    .line 244
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 245
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runMotionEvent(II)V

    goto :goto_a4

    :cond_94
    const-string/jumbo v3, "keycombination"

    .line 246
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 247
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runKeyCombination(II)V

    goto :goto_a4

    .line 249
    :cond_a1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_a4} :catch_a5

    :goto_a4
    return v2

    .line 252
    :catch_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Invalid arguments for command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onHelp()V
    .registers 5

    .line 259
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_4
    const-string v0, "Usage: input [<source>] [-d DISPLAY_ID] <command> [<arg>...]"

    .line 260
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "The sources are: "

    .line 262
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b

    .line 266
    :cond_3c
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "-d: specify the display ID.\n      (Default: %d for key event, %d for motion event if not specified.)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x1

    .line 269
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 267
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 270
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "The commands and default sources are:"

    .line 271
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      text <string> (Default: touchscreen)"

    .line 272
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      keyevent [--longpress|--doubletap] <key code number or name> ... (Default: keyboard)"

    .line 273
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      tap <x> <y> (Default: touchscreen)"

    .line 275
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      swipe <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    .line 276
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      draganddrop <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    .line 278
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      press (Default: trackball)"

    .line 280
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      roll <dx> <dy> (Default: trackball)"

    .line 281
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      motionevent <DOWN|UP|MOVE|CANCEL> <x> <y> (Default: touchscreen)"

    .line 282
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      keycombination [-t duration(ms)] <key code 1> <key code 2> ... (Default: keyboard, the key order is important here.)"

    .line 283
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_4 .. :try_end_8b} :catchall_8f

    .line 285
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_8f
    move-exception v0

    if-eqz p0, :cond_9a

    .line 259
    :try_start_92
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    throw v0
.end method

.method public final runDragAndDrop(II)V
    .registers 4

    const/16 v0, 0x1002

    .line 430
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x1

    .line 431
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    return-void
.end method

.method public final runKeyCombination(II)V
    .registers 10

    .line 504
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-t"

    .line 508
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 509
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 511
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-wide v5, v0

    move-object v0, v2

    goto :goto_1f

    :cond_1c
    const-wide/16 v1, 0x0

    move-wide v5, v1

    .line 514
    :goto_1f
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    :goto_24
    if-eqz v0, :cond_4b

    .line 516
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_34

    .line 520
    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    .line 521
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 518
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown keycode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 525
    :cond_4b
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_59

    move-object v1, p0

    move v2, p1

    move v4, p2

    .line 529
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendKeyCombination(ILandroid/util/IntArray;IJ)V

    return-void

    .line 526
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "keycombination requires at least 2 keycodes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runKeyEvent(II)V
    .registers 6

    .line 329
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--longpress"

    .line 330
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 332
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_11
    const-string v2, "--doubletap"

    .line 334
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 336
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    .line 338
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendKeyDoubleTap(III)V

    return-void

    .line 344
    :cond_25
    :goto_25
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    .line 345
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    .line 346
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    return-void
.end method

.method public final runMotionEvent(II)V
    .registers 10

    const/16 v0, 0x1002

    .line 470
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result v2

    .line 471
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getAction()I

    move-result v3

    const/4 p1, 0x0

    if-eqz v3, :cond_2c

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2c

    const/4 v0, 0x1

    if-ne v3, v0, :cond_14

    goto :goto_2c

    .line 480
    :cond_14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    .line 483
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 484
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_3c

    :cond_29
    move v4, p1

    move v5, v4

    goto :goto_3e

    .line 476
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 477
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_3c
    move v4, p1

    move v5, v0

    :goto_3e
    move-object v1, p0

    move v6, p2

    .line 488
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendMotionEvent(IIFFI)V

    return-void
.end method

.method public final runPress(II)V
    .registers 4

    const v0, 0x10004

    .line 388
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    return-void
.end method

.method public final runRoll(II)V
    .registers 5

    const v0, 0x10004

    .line 435
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 436
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 437
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 436
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendMove(IFFI)V

    return-void
.end method

.method public final runSwipe(II)V
    .registers 4

    const/16 v0, 0x1002

    .line 393
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    return-void
.end method

.method public final runTap(II)V
    .registers 5

    const/16 v0, 0x1002

    .line 375
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 376
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 377
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 376
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    return-void
.end method

.method public final runText(II)V
    .registers 4

    const/16 v0, 0x101

    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 290
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendText(ILjava/lang/String;I)V

    return-void
.end method

.method public final sendKeyCombination(ILandroid/util/IntArray;IJ)V
    .registers 32

    move-object/from16 v0, p0

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/util/IntArray;->size()I

    move-result v13

    .line 541
    new-array v12, v13, [Landroid/view/KeyEvent;

    const/16 v16, 0x0

    .line 551
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move/from16 v10, v16

    move/from16 v17, v10

    :goto_16
    if-ge v10, v13, :cond_6e

    move-object/from16 v9, p2

    .line 544
    invoke-virtual {v9, v10}, Landroid/util/IntArray;->get(I)I

    move-result v18

    .line 545
    new-instance v8, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v1, v8

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, v18

    move-object/from16 v23, v8

    move/from16 v8, v19

    move/from16 v9, v17

    move/from16 v19, v10

    move/from16 v10, v20

    move-object/from16 v24, v11

    move/from16 v11, v21

    move-object/from16 v20, v12

    move/from16 v12, v22

    move-wide/from16 v21, v14

    move v14, v13

    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move/from16 v1, p3

    move-object/from16 v2, v23

    .line 548
    invoke-virtual {v2, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 549
    aput-object v2, v20, v19

    .line 551
    sget-object v2, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v15, v24

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int v17, v17, v2

    add-int/lit8 v10, v19, 0x1

    move v13, v14

    move-object v11, v15

    move-object/from16 v12, v20

    move-wide/from16 v14, v21

    goto :goto_16

    :cond_6e
    move-object/from16 v20, v12

    move-wide/from16 v21, v14

    move-object v15, v11

    move v14, v13

    move/from16 v1, v16

    :goto_76
    if-ge v1, v14, :cond_80

    .line 554
    aget-object v2, v20, v1

    .line 557
    invoke-virtual {v0, v2}, Lcom/android/server/input/InputShellCommand;->injectKeyEventAsync(Landroid/view/KeyEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    :cond_80
    move-wide/from16 v1, p4

    .line 560
    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    move/from16 v13, v16

    :goto_87
    if-ge v13, v14, :cond_c6

    .line 562
    aget-object v1, v20, v13

    .line 563
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v16

    .line 564
    new-instance v12, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object v1, v12

    move-wide/from16 v2, v21

    move-wide/from16 v4, v21

    move/from16 v7, v16

    move/from16 v9, v17

    move-object/from16 v25, v12

    move/from16 v12, v18

    move/from16 v18, v13

    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v1, v25

    .line 567
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputShellCommand;->injectKeyEventAsync(Landroid/view/KeyEvent;)V

    .line 568
    sget-object v1, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    not-int v1, v1

    and-int v17, v17, v1

    add-int/lit8 v13, v18, 0x1

    goto :goto_87

    :cond_c6
    return-void
.end method

.method public final sendKeyDoubleTap(III)V
    .registers 7

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    .line 370
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 371
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    return-void
.end method

.method public final sendKeyEvent(IIZI)V
    .registers 23

    move-object/from16 v0, p0

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 352
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v13

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p2

    move-wide/from16 v16, v14

    move-object v14, v13

    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move/from16 v1, p4

    .line 355
    invoke-virtual {v14, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 357
    invoke-virtual {v0, v14}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    const/4 v1, 0x1

    if-eqz p3, :cond_3e

    .line 359
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 361
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    add-long v2, v16, v2

    const/16 v4, 0x80

    .line 362
    invoke-static {v14, v2, v3, v1, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 365
    :cond_3e
    invoke-static {v14, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final sendMotionEvent(IIFFI)V
    .registers 17

    move v2, p2

    if-eqz v2, :cond_9

    const/4 v0, 0x2

    if-ne v2, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    :goto_9
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_b
    move v9, v0

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, v5

    move v7, p3

    move v8, p4

    move/from16 v10, p5

    .line 500
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendMove(IFFI)V
    .registers 16

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v2, 0x2

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v3, v5

    move v7, p2

    move v8, p3

    move v10, p4

    .line 449
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendSwipe(IIZ)V
    .registers 25

    move-object/from16 v11, p0

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2e

    :cond_2d
    const/4 v0, -0x1

    :goto_2e
    if-gez v0, :cond_32

    const/16 v0, 0x12c

    :cond_32
    move v10, v0

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v3, v16

    move-wide/from16 v5, v16

    move v7, v12

    move v8, v13

    move/from16 v18, v13

    move v13, v10

    move/from16 v10, p2

    .line 410
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    if-eqz p3, :cond_56

    .line 414
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 416
    :cond_56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, v13

    add-long v19, v16, v2

    move-wide v5, v0

    :goto_5e
    cmp-long v0, v5, v19

    if-gez v0, :cond_84

    sub-long v0, v5, v16

    long-to-float v0, v0

    int-to-float v1, v13

    div-float/2addr v0, v1

    const/4 v2, 0x2

    .line 422
    invoke-virtual {v11, v12, v14, v0}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v7

    move/from16 v10, v18

    invoke-virtual {v11, v10, v15, v0}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v3, v16

    move/from16 v10, p2

    .line 421
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    goto :goto_5e

    :cond_84
    const/4 v2, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v3, v16

    move v7, v14

    move v8, v15

    move/from16 v10, p2

    .line 425
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendTap(IFFI)V
    .registers 18

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move-wide v3, v11

    move-wide v5, v11

    move v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    .line 382
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 384
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendText(ILjava/lang/String;I)V
    .registers 9

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v1, p2

    move v2, v1

    .line 302
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_2f

    if-eqz v2, :cond_23

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_22

    const/16 v2, 0x20

    .line 306
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v1, -0x1

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_22
    move v2, p2

    .line 310
    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_2c

    const/4 v2, 0x1

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 315
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, -0x1

    .line 316
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 317
    invoke-virtual {v1, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 318
    :goto_40
    array-length v1, v0

    if-ge p2, v1, :cond_57

    .line 319
    aget-object v1, v0, p2

    .line 320
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    if-eq p1, v2, :cond_4e

    .line 321
    invoke-virtual {v1, p1}, Landroid/view/KeyEvent;->setSource(I)V

    .line 323
    :cond_4e
    invoke-virtual {v1, p3}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_40

    :cond_57
    return-void
.end method

.method public final sleep(J)V
    .registers 3

    .line 579
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 581
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
