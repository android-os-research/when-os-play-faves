.class public abstract Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.super Ljava/lang/Object;
.source "CornerActionType.java"


# static fields
.field public static final ACCESSIBILITY_BUTTON:Ljava/lang/String; = "accessibility_button"

.field public static final BACK:Ljava/lang/String; = "back"

.field public static final CLICK_AND_HOLD:Ljava/lang/String; = "click_and_hold"

.field public static final DOUBLE_CLICK:Ljava/lang/String; = "double_click"

.field public static final DRAG:Ljava/lang/String; = "drag"

.field public static final DRAG_AND_DROP:Ljava/lang/String; = "drag_and_drop"

.field public static final HOME:Ljava/lang/String; = "home"

.field public static final INCREASE_BRIGHTNESS:Ljava/lang/String; = "increase_brightness"

.field public static final MEDIA_VOLUME_DOWN:Ljava/lang/String; = "media_volume_down"

.field public static final MEDIA_VOLUME_UP:Ljava/lang/String; = "media_volume_up"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final OPEN_CLOSE_NOTIFICATIONS:Ljava/lang/String; = "open_close_notifications"

.field public static final OPEN_CLOSE_QUICK_PANEL:Ljava/lang/String; = "open_close_quick_panel"

.field public static final PAUSE_AUTO_CLICK:Ljava/lang/String; = "pause_auto_click"

.field public static final PAUSE_RESUME_AUTO_CLICK:Ljava/lang/String; = "pause_resume_auto_click"

.field public static final POWER_OFF_MENU:Ljava/lang/String; = "power_off_menu"

.field public static final RECENTS:Ljava/lang/String; = "recents"

.field public static final REDUCE_BRIGHTNESS:Ljava/lang/String; = "reduce_brightness"

.field public static final RESUME_AUTO_CLICK:Ljava/lang/String; = "resume_auto_click"

.field public static final RINGTONE_VOLUME_DOWN:Ljava/lang/String; = "ringtone_volume_down"

.field public static final RINGTONE_VOLUME_UP:Ljava/lang/String; = "ringtone_volume_up"

.field public static final SCREEN_OFF:Ljava/lang/String; = "screen_off"

.field public static final SCREEN_ROTATION:Ljava/lang/String; = "screen_rotation"

.field public static final SCREEN_SHOT:Ljava/lang/String; = "screen_shot"

.field public static final SEND_SOS_MESSAGES:Ljava/lang/String; = "send_sos_messages"

.field public static final SOUND_MUTE:Ljava/lang/String; = "sound_mute"

.field public static final SOUND_VIBRATE_MUTE:Ljava/lang/String; = "sound_vibrate_mute"

.field public static final SWIPE_DOWN:Ljava/lang/String; = "swipe_down"

.field public static final SWIPE_LEFT:Ljava/lang/String; = "swipe_left"

.field public static final SWIPE_RIGHT:Ljava/lang/String; = "swipe_right"

.field public static final SWIPE_UP:Ljava/lang/String; = "swipe_up"

.field public static final TAG:Ljava/lang/String; = "CornerActionType"

.field public static final TALK_TO_BIXBY:Ljava/lang/String; = "talk_to_bixby"

.field public static final ZOOM_IN:Ljava/lang/String; = "zoom_in"

.field public static final ZOOM_OUT:Ljava/lang/String; = "zoom_out"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
    .registers 5

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_162

    goto/16 :goto_11e

    :sswitch_d
    const-string/jumbo v0, "open_close_quick_panel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_11e

    :cond_18
    const/16 v1, 0x13

    goto/16 :goto_11e

    :sswitch_1c
    const-string/jumbo v0, "ringtone_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_11e

    :cond_27
    const/16 v1, 0x12

    goto/16 :goto_11e

    :sswitch_2b
    const-string/jumbo v0, "media_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_11e

    :cond_36
    const/16 v1, 0x11

    goto/16 :goto_11e

    :sswitch_3a
    const-string/jumbo v0, "recents"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_11e

    :cond_45
    const/16 v1, 0x10

    goto/16 :goto_11e

    :sswitch_49
    const-string/jumbo v0, "send_sos_messages"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_11e

    :cond_54
    const/16 v1, 0xf

    goto/16 :goto_11e

    :sswitch_58
    const-string/jumbo v0, "power_off_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_11e

    :cond_63
    const/16 v1, 0xe

    goto/16 :goto_11e

    :sswitch_67
    const-string/jumbo v0, "media_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_11e

    :cond_72
    const/16 v1, 0xd

    goto/16 :goto_11e

    :sswitch_76
    const-string/jumbo v0, "increase_brightness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_11e

    :cond_81
    const/16 v1, 0xc

    goto/16 :goto_11e

    :sswitch_85
    const-string/jumbo v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_11e

    :cond_90
    const/16 v1, 0xb

    goto/16 :goto_11e

    :sswitch_94
    const-string/jumbo v0, "home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto/16 :goto_11e

    :cond_9f
    const/16 v1, 0xa

    goto/16 :goto_11e

    :sswitch_a3
    const-string v0, "back"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    goto/16 :goto_11e

    :cond_ad
    const/16 v1, 0x9

    goto/16 :goto_11e

    :sswitch_b1
    const-string/jumbo v0, "screen_shot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    goto/16 :goto_11e

    :cond_bc
    const/16 v1, 0x8

    goto/16 :goto_11e

    :sswitch_c0
    const-string/jumbo v0, "reduce_brightness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    goto :goto_11e

    :cond_ca
    const/4 v1, 0x7

    goto :goto_11e

    :sswitch_cc
    const-string/jumbo v0, "screen_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto :goto_11e

    :cond_d6
    const/4 v1, 0x6

    goto :goto_11e

    :sswitch_d8
    const-string/jumbo v0, "sound_vibrate_mute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    goto :goto_11e

    :cond_e2
    const/4 v1, 0x5

    goto :goto_11e

    :sswitch_e4
    const-string/jumbo v0, "screen_rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    goto :goto_11e

    :cond_ee
    const/4 v1, 0x4

    goto :goto_11e

    :sswitch_f0
    const-string/jumbo v0, "ringtone_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fa

    goto :goto_11e

    :cond_fa
    const/4 v1, 0x3

    goto :goto_11e

    :sswitch_fc
    const-string/jumbo v0, "talk_to_bixby"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    goto :goto_11e

    :cond_106
    const/4 v1, 0x2

    goto :goto_11e

    :sswitch_108
    const-string v0, "accessibility_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_111

    goto :goto_11e

    :cond_111
    const/4 v1, 0x1

    goto :goto_11e

    :sswitch_113
    const-string/jumbo v0, "open_close_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d

    goto :goto_11e

    :cond_11d
    const/4 v1, 0x0

    :goto_11e
    packed-switch v1, :pswitch_data_1b4

    .line 102
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong Corner Action Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :pswitch_129
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;->createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;

    move-result-object p0

    return-object p0

    .line 80
    :pswitch_12e
    invoke-static {p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->createAction(Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    move-result-object p0

    return-object p0

    .line 95
    :pswitch_133
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;->createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;

    move-result-object p0

    return-object p0

    :pswitch_138
    const/4 p0, 0x0

    return-object p0

    .line 76
    :pswitch_13a
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;

    move-result-object p0

    return-object p0

    .line 89
    :pswitch_13f
    invoke-static {p1, p0, p2}, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->createAction(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;

    move-result-object p0

    return-object p0

    .line 93
    :pswitch_144
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;->createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;

    move-result-object p0

    return-object p0

    .line 91
    :pswitch_149
    invoke-static {p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->createAction(Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    move-result-object p0

    return-object p0

    .line 86
    :pswitch_14e
    invoke-static {p1, p0}, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->createAction(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;

    move-result-object p0

    return-object p0

    .line 78
    :pswitch_153
    invoke-static {p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->createAction(Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;

    move-result-object p0

    return-object p0

    .line 100
    :pswitch_158
    invoke-static {p1, p0, p2}, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->createAction(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;

    move-result-object p0

    return-object p0

    .line 72
    :pswitch_15d
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;->createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;

    move-result-object p0

    return-object p0

    :sswitch_data_162
    .sparse-switch
        -0x7ec2e294 -> :sswitch_113
        -0x74e910bd -> :sswitch_108
        -0x682f8f69 -> :sswitch_fc
        -0x55236e7d -> :sswitch_f0
        -0x5173c60f -> :sswitch_e4
        -0x18e94be7 -> :sswitch_d8
        -0x18db78e4 -> :sswitch_cc
        -0x1479af36 -> :sswitch_c0
        -0x291c913 -> :sswitch_b1
        0x2e04e7 -> :sswitch_a3
        0x30f4df -> :sswitch_94
        0x33af38 -> :sswitch_85
        0x1443e66e -> :sswitch_76
        0x1af46ecc -> :sswitch_67
        0x2d9a2c29 -> :sswitch_58
        0x3f33e64b -> :sswitch_49
        0x40828578 -> :sswitch_3a
        0x4505db45 -> :sswitch_2b
        0x65f68d8a -> :sswitch_1c
        0x670f86b6 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_15d
        :pswitch_158
        :pswitch_153
        :pswitch_14e
        :pswitch_149
        :pswitch_14e
        :pswitch_144
        :pswitch_13f
        :pswitch_13a
        :pswitch_158
        :pswitch_158
        :pswitch_138
        :pswitch_13f
        :pswitch_14e
        :pswitch_133
        :pswitch_12e
        :pswitch_158
        :pswitch_14e
        :pswitch_14e
        :pswitch_129
    .end packed-switch
.end method

.method public static create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
    .registers 5

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_aa

    goto/16 :goto_86

    :sswitch_d
    const-string v0, "double_click"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_86

    :cond_17
    const/16 v1, 0x9

    goto/16 :goto_86

    :sswitch_1b
    const-string/jumbo v0, "swipe_right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_86

    :cond_26
    const/16 v1, 0x8

    goto/16 :goto_86

    :sswitch_2a
    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_86

    :cond_34
    const/4 v1, 0x7

    goto :goto_86

    :sswitch_36
    const-string/jumbo v0, "swipe_left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_86

    :cond_40
    const/4 v1, 0x6

    goto :goto_86

    :sswitch_42
    const-string/jumbo v0, "swipe_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_86

    :cond_4c
    const/4 v1, 0x5

    goto :goto_86

    :sswitch_4e
    const-string v0, "drag_and_drop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_86

    :cond_57
    const/4 v1, 0x4

    goto :goto_86

    :sswitch_59
    const-string v0, "drag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_86

    :cond_62
    const/4 v1, 0x3

    goto :goto_86

    :sswitch_64
    const-string/jumbo v0, "swipe_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_86

    :cond_6e
    const/4 v1, 0x2

    goto :goto_86

    :sswitch_70
    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_86

    :cond_7a
    const/4 v1, 0x1

    goto :goto_86

    :sswitch_7c
    const-string v0, "click_and_hold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_86

    :cond_85
    const/4 v1, 0x0

    :goto_86
    packed-switch v1, :pswitch_data_d4

    .line 130
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong Corner Action Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :pswitch_91
    invoke-static {p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->createAction(Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;

    move-result-object p0

    return-object p0

    .line 128
    :pswitch_96
    invoke-static {p1, p2, p0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->createAction(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    move-result-object p0

    return-object p0

    .line 123
    :pswitch_9b
    invoke-static {p1, p2, p0}, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->createAction(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    move-result-object p0

    return-object p0

    .line 118
    :pswitch_a0
    invoke-static {p1, p2, p0}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->createAction(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    move-result-object p0

    return-object p0

    .line 125
    :pswitch_a5
    invoke-static {p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->createAction(Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    move-result-object p0

    return-object p0

    :sswitch_data_aa
    .sparse-switch
        -0x643f1902 -> :sswitch_7c
        -0x68ea6ef -> :sswitch_70
        -0x54cce40 -> :sswitch_64
        0x2f2d34 -> :sswitch_59
        0x19319b02 -> :sswitch_4e
        0x1aa61287 -> :sswitch_42
        0x1aa98dec -> :sswitch_36
        0x34b9e0e2 -> :sswitch_2a
        0x3ade90d7 -> :sswitch_1b
        0x51e7c39a -> :sswitch_d
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_a0
        :pswitch_9b
        :pswitch_96
        :pswitch_96
        :pswitch_9b
        :pswitch_9b
        :pswitch_a0
        :pswitch_9b
        :pswitch_91
    .end packed-switch
.end method

.method public static getTitleResId(Ljava/lang/String;)I
    .registers 3

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_236

    goto/16 :goto_1ce

    :sswitch_d
    const-string/jumbo v0, "open_close_quick_panel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_1ce

    :cond_18
    const/16 v1, 0x1f

    goto/16 :goto_1ce

    :sswitch_1c
    const-string/jumbo v0, "ringtone_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_1ce

    :cond_27
    const/16 v1, 0x1e

    goto/16 :goto_1ce

    :sswitch_2b
    const-string/jumbo v0, "pause_auto_click"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_1ce

    :cond_36
    const/16 v1, 0x1d

    goto/16 :goto_1ce

    :sswitch_3a
    const-string/jumbo v0, "resume_auto_click"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_1ce

    :cond_45
    const/16 v1, 0x1c

    goto/16 :goto_1ce

    :sswitch_49
    const-string v0, "double_click"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_1ce

    :cond_53
    const/16 v1, 0x1b

    goto/16 :goto_1ce

    :sswitch_57
    const-string/jumbo v0, "media_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_1ce

    :cond_62
    const/16 v1, 0x1a

    goto/16 :goto_1ce

    :sswitch_66
    const-string/jumbo v0, "recents"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_1ce

    :cond_71
    const/16 v1, 0x19

    goto/16 :goto_1ce

    :sswitch_75
    const-string/jumbo v0, "send_sos_messages"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_1ce

    :cond_80
    const/16 v1, 0x18

    goto/16 :goto_1ce

    :sswitch_84
    const-string/jumbo v0, "swipe_right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_1ce

    :cond_8f
    const/16 v1, 0x17

    goto/16 :goto_1ce

    :sswitch_93
    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto/16 :goto_1ce

    :cond_9e
    const/16 v1, 0x16

    goto/16 :goto_1ce

    :sswitch_a2
    const-string/jumbo v0, "power_off_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    goto/16 :goto_1ce

    :cond_ad
    const/16 v1, 0x15

    goto/16 :goto_1ce

    :sswitch_b1
    const-string/jumbo v0, "media_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    goto/16 :goto_1ce

    :cond_bc
    const/16 v1, 0x14

    goto/16 :goto_1ce

    :sswitch_c0
    const-string/jumbo v0, "swipe_left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    goto/16 :goto_1ce

    :cond_cb
    const/16 v1, 0x13

    goto/16 :goto_1ce

    :sswitch_cf
    const-string/jumbo v0, "swipe_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    goto/16 :goto_1ce

    :cond_da
    const/16 v1, 0x12

    goto/16 :goto_1ce

    :sswitch_de
    const-string v0, "drag_and_drop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    goto/16 :goto_1ce

    :cond_e8
    const/16 v1, 0x11

    goto/16 :goto_1ce

    :sswitch_ec
    const-string/jumbo v0, "increase_brightness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    goto/16 :goto_1ce

    :cond_f7
    const/16 v1, 0x10

    goto/16 :goto_1ce

    :sswitch_fb
    const-string/jumbo v0, "home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    goto/16 :goto_1ce

    :cond_106
    const/16 v1, 0xf

    goto/16 :goto_1ce

    :sswitch_10a
    const-string v0, "drag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_114

    goto/16 :goto_1ce

    :cond_114
    const/16 v1, 0xe

    goto/16 :goto_1ce

    :sswitch_118
    const-string v0, "back"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_122

    goto/16 :goto_1ce

    :cond_122
    const/16 v1, 0xd

    goto/16 :goto_1ce

    :sswitch_126
    const-string/jumbo v0, "screen_shot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_131

    goto/16 :goto_1ce

    :cond_131
    const/16 v1, 0xc

    goto/16 :goto_1ce

    :sswitch_135
    const-string/jumbo v0, "swipe_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_140

    goto/16 :goto_1ce

    :cond_140
    const/16 v1, 0xb

    goto/16 :goto_1ce

    :sswitch_144
    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14f

    goto/16 :goto_1ce

    :cond_14f
    const/16 v1, 0xa

    goto/16 :goto_1ce

    :sswitch_153
    const-string/jumbo v0, "sound_mute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    goto/16 :goto_1ce

    :cond_15e
    const/16 v1, 0x9

    goto/16 :goto_1ce

    :sswitch_162
    const-string/jumbo v0, "reduce_brightness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16d

    goto/16 :goto_1ce

    :cond_16d
    const/16 v1, 0x8

    goto/16 :goto_1ce

    :sswitch_171
    const-string/jumbo v0, "screen_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17b

    goto :goto_1ce

    :cond_17b
    const/4 v1, 0x7

    goto :goto_1ce

    :sswitch_17d
    const-string/jumbo v0, "sound_vibrate_mute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_187

    goto :goto_1ce

    :cond_187
    const/4 v1, 0x6

    goto :goto_1ce

    :sswitch_189
    const-string/jumbo v0, "screen_rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_193

    goto :goto_1ce

    :cond_193
    const/4 v1, 0x5

    goto :goto_1ce

    :sswitch_195
    const-string/jumbo v0, "ringtone_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19f

    goto :goto_1ce

    :cond_19f
    const/4 v1, 0x4

    goto :goto_1ce

    :sswitch_1a1
    const-string v0, "click_and_hold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1aa

    goto :goto_1ce

    :cond_1aa
    const/4 v1, 0x3

    goto :goto_1ce

    :sswitch_1ac
    const-string/jumbo v0, "talk_to_bixby"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6

    goto :goto_1ce

    :cond_1b6
    const/4 v1, 0x2

    goto :goto_1ce

    :sswitch_1b8
    const-string v0, "accessibility_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c1

    goto :goto_1ce

    :cond_1c1
    const/4 v1, 0x1

    goto :goto_1ce

    :sswitch_1c3
    const-string/jumbo v0, "open_close_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cd

    goto :goto_1ce

    :cond_1cd
    const/4 v1, 0x0

    :goto_1ce
    packed-switch v1, :pswitch_data_2b8

    .line 188
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Corner Action Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :pswitch_1d9
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;->getStringResId()I

    move-result p0

    return p0

    :pswitch_1de
    const p0, 0x104011a

    return p0

    :pswitch_1e2
    const p0, 0x104011e

    return p0

    .line 169
    :pswitch_1e6
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->getStringResId()I

    move-result p0

    return p0

    .line 145
    :pswitch_1eb
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->getStringResId()I

    move-result p0

    return p0

    .line 162
    :pswitch_1f0
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;->getStringResId()I

    move-result p0

    return p0

    .line 186
    :pswitch_1f5
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 141
    :pswitch_1fa
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->getStringResId()I

    move-result p0

    return p0

    .line 177
    :pswitch_1ff
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 172
    :pswitch_204
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_209
    const p0, 0x1040125

    return p0

    .line 156
    :pswitch_20d
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 160
    :pswitch_212
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;->getStringResId()I

    move-result p0

    return p0

    .line 158
    :pswitch_217
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->getStringResId()I

    move-result p0

    return p0

    .line 151
    :pswitch_21c
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 183
    :pswitch_221
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->getStringResId()I

    move-result p0

    return p0

    .line 143
    :pswitch_226
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->getStringResId()I

    move-result p0

    return p0

    .line 167
    :pswitch_22b
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 137
    :pswitch_230
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;->getStringResId()I

    move-result p0

    return p0

    nop

    :sswitch_data_236
    .sparse-switch
        -0x7ec2e294 -> :sswitch_1c3
        -0x74e910bd -> :sswitch_1b8
        -0x682f8f69 -> :sswitch_1ac
        -0x643f1902 -> :sswitch_1a1
        -0x55236e7d -> :sswitch_195
        -0x5173c60f -> :sswitch_189
        -0x18e94be7 -> :sswitch_17d
        -0x18db78e4 -> :sswitch_171
        -0x1479af36 -> :sswitch_162
        -0x146c6cb7 -> :sswitch_153
        -0x68ea6ef -> :sswitch_144
        -0x54cce40 -> :sswitch_135
        -0x291c913 -> :sswitch_126
        0x2e04e7 -> :sswitch_118
        0x2f2d34 -> :sswitch_10a
        0x30f4df -> :sswitch_fb
        0x1443e66e -> :sswitch_ec
        0x19319b02 -> :sswitch_de
        0x1aa61287 -> :sswitch_cf
        0x1aa98dec -> :sswitch_c0
        0x1af46ecc -> :sswitch_b1
        0x2d9a2c29 -> :sswitch_a2
        0x34b9e0e2 -> :sswitch_93
        0x3ade90d7 -> :sswitch_84
        0x3f33e64b -> :sswitch_75
        0x40828578 -> :sswitch_66
        0x4505db45 -> :sswitch_57
        0x51e7c39a -> :sswitch_49
        0x5696664a -> :sswitch_3a
        0x61dac0e1 -> :sswitch_2b
        0x65f68d8a -> :sswitch_1c
        0x670f86b6 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2b8
    .packed-switch 0x0
        :pswitch_230
        :pswitch_22b
        :pswitch_226
        :pswitch_221
        :pswitch_21c
        :pswitch_217
        :pswitch_21c
        :pswitch_212
        :pswitch_20d
        :pswitch_209
        :pswitch_204
        :pswitch_1ff
        :pswitch_1fa
        :pswitch_22b
        :pswitch_1f5
        :pswitch_22b
        :pswitch_20d
        :pswitch_1f5
        :pswitch_1ff
        :pswitch_1ff
        :pswitch_21c
        :pswitch_1f0
        :pswitch_204
        :pswitch_1ff
        :pswitch_1eb
        :pswitch_22b
        :pswitch_21c
        :pswitch_1e6
        :pswitch_1e2
        :pswitch_1de
        :pswitch_21c
        :pswitch_1d9
    .end packed-switch
.end method


# virtual methods
.method public abstract performCornerAction(I)V
.end method

.method public setMotionEventForDragAction(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method
