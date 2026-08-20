.class public Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;
.super Ljava/lang/Object;
.source "SemInputCommandService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    }
.end annotation


# static fields
.field private static final ERR_CMD_FAILED:I = -0x6

.field private static final ERR_EXCEPTION:I = -0x7

.field private static final ERR_NONE:I = 0x0

.field private static final ERR_NO_CMD_EXIST:I = -0x5

.field private static final ERR_NO_DEVICE:I = -0x2

.field private static final ERR_NO_HAL_SERVICE:I = -0x3

.field private static final RESULT_STR_NA:Ljava/lang/String; = "NA"

.field private static final RESULT_STR_NG:Ljava/lang/String; = "NG"

.field private static final SET_AOD_ENABLE:Ljava/lang/String; = "aod_enable"

.field private static final SET_AOD_RECT:Ljava/lang/String; = "set_aod_rect"

.field private static final SET_BRUSH_ENABLE:Ljava/lang/String; = "brush_enable"

.field private static final SET_CHARGER_MODE:Ljava/lang/String; = "charger_mode"

.field private static final SET_CLEAR_COVER_MODE:Ljava/lang/String; = "clear_cover_mode"

.field private static final SET_COVER_MODE:Ljava/lang/String; = "clear_cover_mode"

.field private static final SET_DOUBLE_TAB_TO_WAKE_UP:Ljava/lang/String; = "aot_enable"

.field private static final SET_EAR_DETECT_ENABLE:Ljava/lang/String; = "ear_detect_enable"

.field private static final SET_EXTERNAL_NOISE_MODE:Ljava/lang/String; = "external_noise_mode"

.field private static final SET_FOD_ENABLE:Ljava/lang/String; = "fod_enable"

.field private static final SET_FOD_ICON_VISIBLE:Ljava/lang/String; = "fod_icon_visible"

.field private static final SET_FOD_LP_MODE:Ljava/lang/String; = "fod_lp_mode"

.field private static final SET_FOD_RECT:Ljava/lang/String; = "set_fod_rect"

.field private static final SET_FP_INT_CONTROL:Ljava/lang/String; = "fp_int_control"

.field private static final SET_GAME_MODE:Ljava/lang/String; = "set_game_mode"

.field private static final SET_GLOVE_MODE:Ljava/lang/String; = "glove_mode"

.field private static final SET_GRIP_DATA:Ljava/lang/String; = "set_grip_data"

.field private static final SET_LCD_ORIENTATION:Ljava/lang/String; = "lcd_orientation"

.field private static final SET_LOW_SENSITIVITY_MODE_ENABLE:Ljava/lang/String; = "low_sensitivity_mode_enable"

.field private static final SET_NOTE_MODE:Ljava/lang/String; = "set_note_mode"

.field private static final SET_POCKET_MODE_ENABLE:Ljava/lang/String; = "pocket_mode_enable"

.field private static final SET_PROX_LP_SCAN_MODE:Ljava/lang/String; = "prox_lp_scan_mode"

.field private static final SET_REFRESH_RATE_MODE:Ljava/lang/String; = "refresh_rate_mode"

.field private static final SET_SCAN_RATE:Ljava/lang/String; = "set_scan_rate"

.field private static final SET_SINGLETAP_ENABLE:Ljava/lang/String; = "singletap_enable"

.field private static final SET_SIP_MODE:Ljava/lang/String; = "set_sip_mode"

.field private static final SET_SPAY_ENABLE:Ljava/lang/String; = "spay_enable"

.field private static final SET_SPEN_AOD_ENABLE:Ljava/lang/String; = "set_epen_aod_enable"

.field private static final SET_SPEN_BLE_CHARGING_MODE:Ljava/lang/String; = "epen_ble_charging_mode"

.field private static final SET_SPEN_COVER_TYPE:Ljava/lang/String; = "set_cover_type"

.field private static final SET_SPEN_LOWCURRENT_MODE:Ljava/lang/String; = "set_lowcurrent_mode"

.field private static final SET_SPEN_PDCT_LOWSENSITIVITY_ENABLE:Ljava/lang/String; = "set_pdct_lowsensitivity_enable"

.field private static final SET_SPEN_POWER_MODE:Ljava/lang/String; = "sec_wacom_device_enable"

.field private static final SET_SPEN_SAVING_MODE:Ljava/lang/String; = "set_saving_mode"

.field private static final SET_SPEN_SCREEN_OFF_MEMO:Ljava/lang/String; = "set_screen_off_memo"

.field private static final SET_STYLUS_ENABLE:Ljava/lang/String; = "stylus_enable"

.field private static final SET_SYNC_CHANGED:Ljava/lang/String; = "sync_changed"

.field private static final SET_TEMPERATURE:Ljava/lang/String; = "set_temperature"

.field private static final SET_TOUCHABLE_AREA:Ljava/lang/String; = "set_touchable_area"

.field private static final SET_TWO_FINGER_DOUBLETAP_MODE:Ljava/lang/String; = "two_finger_doubletap_enable"

.field private static final TAG:Ljava/lang/String; = "SemInputCommandService"


# instance fields
.field private final allDeviceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

.field private final supportDeviceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;


# direct methods
.method static bridge synthetic -$$Nest$mgetCommandList(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getCommandList(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportFeature(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;)V
    .registers 6
    .param p1, "hal"    # Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    .line 73
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    .line 76
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportDeviceList()V

    .line 80
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 81
    .local v1, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v1    # "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    goto :goto_27

    .line 83
    :cond_50
    return-void
.end method

.method private addToEnabledDumpsys(Ljava/lang/String;IZLjava/lang/String;I)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "retVal"    # I

    .line 864
    const-string v0, ")"

    const-string v1, "): "

    sparse-switch p2, :sswitch_data_c2

    .line 885
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    goto/16 :goto_c0

    .line 882
    :sswitch_2f
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FORCE_ON ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 883
    goto :goto_c0

    .line 879
    :sswitch_54
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FORCE_OFF("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 880
    goto :goto_c0

    .line 877
    :sswitch_79
    goto :goto_c0

    .line 871
    :sswitch_7a
    if-nez p3, :cond_c0

    .line 872
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    goto :goto_c0

    .line 866
    :sswitch_9d
    const/4 v1, 0x1

    if-ne p3, v1, :cond_c0

    .line 867
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OFF("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 888
    :cond_c0
    :goto_c0
    return-void

    nop

    :sswitch_data_c2
    .sparse-switch
        0x1 -> :sswitch_9d
        0x2 -> :sswitch_7a
        0x3 -> :sswitch_79
        0x4 -> :sswitch_79
        0x15 -> :sswitch_54
        0x16 -> :sswitch_2f
    .end sparse-switch
.end method

.method private checkAndRegisterSupportDevice(I)I
    .registers 14
    .param p1, "devid"    # I

    .line 110
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, "deviceName":Ljava/lang/String;
    const/4 v1, -0x2

    if-nez v0, :cond_10

    .line 112
    return v1

    .line 114
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndRegisterSupportDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getCommandList(I)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "cmdlist":Ljava/lang/String;
    const-string v2, "NG"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 118
    return v1

    .line 121
    :cond_45
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportFeature(I)I

    move-result v8

    .line 123
    .local v8, "feature":I
    iget-object v9, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/4 v1, 0x0

    return v1
.end method

.method private checkCmdlistAndRunCmd(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "devid"    # I
    .param p2, "command"    # Ljava/lang/String;

    .line 282
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "commandParse":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 285
    .local v1, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    const-string v2, "NA"

    if-nez v1, :cond_39

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCmdlistAndRunCmd: not supported cmd for devid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemInputCommandService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-object v2

    .line 290
    :cond_39
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetcmdlistSet(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)Ljava/util/HashSet;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 291
    const/4 v3, 0x1

    if-lt p1, v3, :cond_53

    const/4 v3, 0x3

    if-ge p1, v3, :cond_53

    .line 292
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->runTspCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 293
    :cond_53
    const/16 v3, 0xb

    if-ne p1, v3, :cond_5e

    .line 294
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v2, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->runSpenCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 298
    :cond_5e
    return-object v2
.end method

.method private checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 260
    const/4 v0, -0x2

    .line 262
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 263
    .local v1, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    if-eqz v1, :cond_41

    .line 264
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetcmdlistSet(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 265
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v2, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->runSpenCmdNoRead(Ljava/lang/String;)I

    move-result v0

    .line 274
    if-gez v0, :cond_25

    .line 275
    const/4 v2, -0x6

    return v2

    .line 278
    :cond_25
    const/4 v2, 0x0

    return v2

    .line 267
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSPENCmdlistAndRunCmdNoRead: not supported cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v2, -0x5

    return v2

    .line 271
    :cond_41
    const/4 v2, -0x2

    return v2
.end method

.method private checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    .local v0, "ret1":I
    const/4 v1, 0x0

    .line 230
    .local v1, "ret2":I
    const/4 v2, 0x0

    .line 232
    .local v2, "cmdExist":Z
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 233
    .local v3, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    if-eqz v3, :cond_23

    .line 234
    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetcmdlistSet(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 235
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v5, v4, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v0

    .line 236
    const/4 v2, 0x1

    .line 239
    :cond_23
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 240
    if-eqz v3, :cond_44

    .line 241
    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetcmdlistSet(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 242
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v4, v5, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v1

    .line 243
    const/4 v2, 0x1

    .line 247
    :cond_44
    if-nez v2, :cond_60

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTSPCmdlistAndRunCmdNoRead: not supported cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemInputCommandService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v4, -0x5

    return v4

    .line 252
    :cond_60
    if-ltz v0, :cond_67

    if-gez v1, :cond_65

    goto :goto_67

    .line 256
    :cond_65
    const/4 v4, 0x0

    return v4

    .line 253
    :cond_67
    :goto_67
    const/4 v4, -0x6

    return v4
.end method

.method private getCommandList(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I

    .line 128
    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    const/4 v0, 0x3

    if-ge p1, v0, :cond_d

    .line 129
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getTspCommandList(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_d
    const/16 v0, 0xb

    if-ne p1, v0, :cond_18

    .line 131
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getSpenCommandList()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_18
    const-string v0, "NG"

    return-object v0
.end method

.method private getSupportDeviceList()V
    .registers 9

    .line 86
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TSP"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TSP_SUB"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SPEN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "KEYBOARD"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getDeviceList(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getVersion()F

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const-string v2, "SemInputCommandService"

    if-gtz v1, :cond_73

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_73

    .line 93
    const-string v1, "getSupportDeviceList: HIDL might be OLD V1.2. Check all possible devices"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 95
    .local v2, "devid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkAndRegisterSupportDevice(I)I

    .line 96
    .end local v2    # "devid":Ljava/lang/Integer;
    goto :goto_5e

    :cond_72
    goto :goto_b3

    .line 98
    :cond_73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 99
    .local v3, "devid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 100
    .local v4, "deviceName":Ljava/lang/String;
    if-eqz v4, :cond_9c

    .line 101
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    new-instance v6, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, p0, v4, v7}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;Ljava/lang/String;I)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    .line 103
    :cond_9c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSupportDeviceList: not supportDevice "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v3    # "devid":Ljava/lang/Integer;
    .end local v4    # "deviceName":Ljava/lang/String;
    :goto_b2
    goto :goto_77

    .line 107
    :cond_b3
    :goto_b3
    return-void
.end method

.method private getSupportFeature(I)I
    .registers 3
    .param p1, "devid"    # I

    .line 137
    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    const/4 v0, 0x3

    if-ge p1, v0, :cond_d

    .line 138
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getTspSupportFeature(I)I

    move-result v0

    return v0

    .line 139
    :cond_d
    const/16 v0, 0xb

    if-ne p1, v0, :cond_18

    .line 140
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getSpenSupportFeature()I

    move-result v0

    return v0

    .line 142
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private isFeatureEnabled(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enableBit"    # I

    .line 210
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 211
    .local v1, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetsupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)I

    move-result v3

    and-int/2addr v3, p2

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    move v3, v4

    goto :goto_22

    :cond_21
    move v3, v2

    .line 212
    .local v3, "enabled":Z
    :goto_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetname(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetsupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    const-string v2, " [0x%X|0x%X]"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SemInputCommandService"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz v3, :cond_6c

    .line 214
    return v3

    .line 216
    .end local v1    # "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    .end local v3    # "enabled":Z
    :cond_6c
    goto :goto_a

    .line 217
    :cond_6d
    return v2
.end method

.method private isSupportDevice(I)Z
    .registers 4
    .param p1, "devid"    # I

    .line 221
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 222
    .local v0, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    if-eqz v0, :cond_10

    .line 223
    const/4 v1, 0x1

    return v1

    .line 225
    :cond_10
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public clearHwParam(I)I
    .registers 5
    .param p1, "devid"    # I

    .line 643
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportDevice(I)Z

    move-result v0

    const-string v1, "SemInputCommandService"

    if-nez v0, :cond_26

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearHwParam("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): device is not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v0, -0x2

    return v0

    .line 647
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearHwParam: devid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->clearHwParam(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 891
    const-string v0, "dumping SemInputCommandService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    const-string v0, "- support device list"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 895
    .local v1, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    .end local v1    # "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    goto :goto_14

    .line 897
    :cond_3b
    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- enabled data: max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->getMaxQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 902
    .local v1, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    .end local v1    # "data":Ljava/lang/String;
    goto :goto_26

    .line 904
    :cond_49
    const-string v0, "  end SemInputCommandService enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method public getAodActiveArea(I)Ljava/lang/String;
    .registers 5
    .param p1, "devid"    # I

    .line 705
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportDevice(I)Z

    move-result v0

    const-string v1, "SemInputCommandService"

    if-nez v0, :cond_27

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAodActiveArea("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): device is not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v0, "NG"

    return-object v0

    .line 709
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAodActiveArea: devid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getTspAodActiveArea(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFodInfo(I)Ljava/lang/String;
    .registers 5
    .param p1, "devid"    # I

    .line 685
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportDevice(I)Z

    move-result v0

    const-string v1, "SemInputCommandService"

    if-nez v0, :cond_27

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFodInfo("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): device is not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v0, "NG"

    return-object v0

    .line 689
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFodInfo: devid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getTspFodInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFodPosition(I)Ljava/lang/String;
    .registers 5
    .param p1, "devid"    # I

    .line 695
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportDevice(I)Z

    move-result v0

    const-string v1, "SemInputCommandService"

    if-nez v0, :cond_27

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFodPosition("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): device is not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v0, "NG"

    return-object v0

    .line 699
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFodPosition: devid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getTspFodPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHwParam(I)Ljava/lang/String;
    .registers 5
    .param p1, "devid"    # I

    .line 725
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportDevice(I)Z

    move-result v0

    const-string v1, "SemInputCommandService"

    if-nez v0, :cond_27

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHwParam("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): device is not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v0, "NG"

    return-object v0

    .line 729
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLpDump: devid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getHwParam(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPressStateAll()Ljava/lang/String;
    .registers 15

    .line 306
    const-string v0, "SemInputCommandService"

    const-string v1, "getKeyPressStateAll ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "volumedown":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const/16 v3, 0x73

    invoke-interface {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "volumeup":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const/16 v4, 0x74

    invoke-interface {v3, v4}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "power":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const/16 v5, 0xfc

    invoke-interface {v4, v5}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "hot":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const/16 v6, 0x2a0

    invoke-interface {v5, v6}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "emergency":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const/16 v7, 0xf8

    invoke-interface {v6, v7}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, "micmute":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const/16 v8, 0xfe

    invoke-interface {v7, v8}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, "recent":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const/16 v9, 0xac

    invoke-interface {v8, v9}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v8

    .line 316
    .local v8, "home":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const/16 v10, 0x9e

    invoke-interface {v9, v10}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v9

    .line 318
    .local v9, "back":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .local v10, "strbuilder":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "114:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "115:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "116:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "252:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "672:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "248:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "254:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "172:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "158:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getKeyPressStateAll: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLpDump(I)Ljava/lang/String;
    .registers 5
    .param p1, "devid"    # I

    .line 715
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportDevice(I)Z

    move-result v0

    const-string v1, "SemInputCommandService"

    if-nez v0, :cond_27

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLpDump("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): device is not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v0, "NG"

    return-object v0

    .line 719
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLpDump: devid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getLpDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxPowerOff(I)Ljava/lang/String;
    .registers 5
    .param p1, "devid"    # I

    .line 675
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportDevice(I)Z

    move-result v0

    const-string v1, "SemInputCommandService"

    if-nez v0, :cond_27

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProxPowerOff("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): device is not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v0, "NG"

    return-object v0

    .line 679
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProxPowerOff: devid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getProxPowerOff(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScrubPosition(I)Ljava/lang/String;
    .registers 5
    .param p1, "devid"    # I

    .line 665
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportDevice(I)Z

    move-result v0

    const-string v1, "SemInputCommandService"

    if-nez v0, :cond_27

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScrubPosition("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): device is not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v0, "NG"

    return-object v0

    .line 669
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScrubPosition: devid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getTspScrubPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpenPosition()Ljava/lang/String;
    .registers 3

    .line 797
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportDevice(I)Z

    move-result v0

    const-string v1, "SemInputCommandService"

    if-nez v0, :cond_12

    .line 798
    const-string v0, "getSpenPosition: device is not exist"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v0, "NG"

    return-object v0

    .line 802
    :cond_12
    const-string v0, "getSpenPosition"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getSpenPosition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportDevice(I)I
    .registers 7
    .param p1, "devid"    # I

    .line 353
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 354
    .local v0, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    const-string v1, "SemInputCommandService"

    if-eqz v0, :cond_28

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportDevice: supported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v1, 0x0

    return v1

    .line 358
    :cond_28
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 359
    .local v2, "deviceName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportDevice: not supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v1, -0x1

    return v1
.end method

.method public getTspSupportFeature(I)I
    .registers 8
    .param p1, "devid"    # I

    .line 653
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 654
    .local v0, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    const/4 v1, 0x0

    const-string v2, "getTspSupportFeature("

    const-string v3, "SemInputCommandService"

    if-nez v0, :cond_2e

    .line 655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "): device is not exist"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return v1

    .line 659
    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetname(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetsupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "0x%X"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetsupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)I

    move-result v1

    return v1
.end method

.method public isKeyPressedByKeycode(I)Z
    .registers 8
    .param p1, "keycode"    # I

    .line 335
    const-string v0, "isKeyPressedByKeycode: "

    const-string v1, "SemInputCommandService"

    const/4 v2, 0x0

    .line 338
    .local v2, "keystate":I
    const/4 v3, 0x0

    :try_start_6
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v4, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_35} :catch_3b

    .line 343
    nop

    .line 345
    const/4 v0, 0x1

    if-ne v2, v0, :cond_3a

    .line 346
    return v0

    .line 348
    :cond_3a
    return v3

    .line 340
    :catch_3b
    move-exception v4

    .line 341
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return v3
.end method

.method public isSupportAot()Z
    .registers 3

    .line 206
    const-string v0, "isSupportAot"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isFeatureEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSupportInputMonitorEnabled()Z
    .registers 3

    .line 202
    const-string v0, "isSupportInputMonitorEnabled"

    const/high16 v1, 0x10000

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isFeatureEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSupportProxLpScanEnabled()Z
    .registers 3

    .line 198
    const-string v0, "isSupportProxLpScanEnabled"

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isFeatureEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSupportSysinputEnabled()Z
    .registers 3

    .line 194
    const-string v0, "isSupportSysinputEnabled"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isFeatureEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public runEmergency(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkCmdlistAndRunCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAodEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aod_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "command":Ljava/lang/String;
    const-string v1, "aod_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setAodRect(IIII)I
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_aod_rect,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_aod_rect"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setBrushEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "brush_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "command":Ljava/lang/String;
    const-string v1, "brush_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setChargerMode(II)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "status"    # I

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charger_mode,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "command":Ljava/lang/String;
    const-string v2, "charger_mode"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChargerMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-void
.end method

.method public setClearCoverMode(III)V
    .registers 7
    .param p1, "switchState"    # I
    .param p2, "coverType"    # I
    .param p3, "gloveMode"    # I

    .line 599
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    .line 600
    if-ne p3, v0, :cond_8

    .line 601
    const-string v0, "clear_cover_mode,1"

    .local v0, "tspCommand":Ljava/lang/String;
    goto :goto_a

    .line 603
    .end local v0    # "tspCommand":Ljava/lang/String;
    :cond_8
    const-string v0, "clear_cover_mode,0"

    .line 605
    .restart local v0    # "tspCommand":Ljava/lang/String;
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear_cover_mode,0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "spenCommand":Ljava/lang/String;
    goto :goto_42

    .line 607
    .end local v0    # "tspCommand":Ljava/lang/String;
    .end local v1    # "spenCommand":Ljava/lang/String;
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear_cover_mode,3,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    .restart local v0    # "tspCommand":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 611
    .restart local v1    # "spenCommand":Ljava/lang/String;
    :goto_42
    const-string v2, "clear_cover_mode"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void
.end method

.method public setCoverMode(II)I
    .registers 5
    .param p1, "mode"    # I
    .param p2, "type"    # I

    .line 404
    const-string v0, "clear_cover_mode,"

    const/4 v1, 0x3

    if-ne p1, v1, :cond_21

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "command":Ljava/lang/String;
    goto :goto_32

    .line 407
    .end local v0    # "command":Ljava/lang/String;
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    .restart local v0    # "command":Ljava/lang/String;
    :goto_32
    const-string v1, "clear_cover_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setDoubleTabToWakeUp(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aot_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 628
    .local v1, "ret":I
    const-string v2, "aot_enable"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDoubleTabToWakeUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return v1
.end method

.method public setEarDetectEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ear_detect_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "command":Ljava/lang/String;
    const-string v1, "ear_detect_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setExternalNoiseMode(II)I
    .registers 5
    .param p1, "type"    # I
    .param p2, "mode"    # I

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "external_noise_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "command":Ljava/lang/String;
    const-string v1, "external_noise_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setFodEnable(III)I
    .registers 6
    .param p1, "mode"    # I
    .param p2, "pressFast"    # I
    .param p3, "strictMode"    # I

    .line 452
    const-string v0, "fod_enable,"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_29

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "command":Ljava/lang/String;
    goto :goto_3a

    .line 455
    .end local v0    # "command":Ljava/lang/String;
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .restart local v0    # "command":Ljava/lang/String;
    :goto_3a
    const-string v1, "fod_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setFodIconVisible(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fod_icon_visible,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "command":Ljava/lang/String;
    const-string v1, "fod_icon_visible"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setFodLpMode(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fod_lp_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "command":Ljava/lang/String;
    const-string v1, "fod_lp_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setFodRect(IIII)I
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_fod_rect,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_fod_rect"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setFpIntControl(II)I
    .registers 6
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fp_int_control,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkCmdlistAndRunCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "result":Ljava/lang/String;
    const-string v2, "NG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 508
    const/4 v2, -0x6

    return v2

    .line 509
    :cond_21
    const-string v2, "NA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 510
    const/4 v2, -0x5

    return v2

    .line 513
    :cond_2b
    const/4 v2, 0x0

    return v2
.end method

.method public setGameMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "mode"    # Ljava/lang/String;

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_game_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 571
    .local v1, "ret":I
    const-string v2, "set_game_mode"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGameMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void
.end method

.method public setGloveMode(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glove_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 619
    .local v1, "ret":I
    const-string v2, "glove_mode"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGloveMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v1
.end method

.method public setGripData(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_grip_data,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_grip_data"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setKeyboardEnabled(IIZ)I
    .registers 12
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z

    .line 761
    const/4 v0, -0x2

    const/16 v1, 0x1f

    if-eq p1, v1, :cond_d

    .line 762
    const-string v1, "SemInputCommandService"

    const-string v2, "setKeyboardEnabled: device id is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return v0

    .line 766
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 767
    .local v1, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    if-nez v1, :cond_1c

    .line 768
    return v0

    .line 771
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->setKeyboardEnable(IZ)I

    move-result v0

    .line 772
    .local v0, "ret":I
    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->getFormatName()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->addToEnabledDumpsys(Ljava/lang/String;IZLjava/lang/String;I)V

    .line 774
    return v0
.end method

.method public setLcdOrientation(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lcd_orientation,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "command":Ljava/lang/String;
    const-string v1, "lcd_orientation"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method

.method public setLowSensitivityModeEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "low_sensitivity_mode_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "command":Ljava/lang/String;
    const-string v1, "low_sensitivity_mode_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setNoteMode(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_note_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_note_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setPocketModeEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pocket_mode_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "command":Ljava/lang/String;
    const-string v1, "pocket_mode_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setProxLpScanMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prox_lp_scan_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "command":Ljava/lang/String;
    const-string v1, "prox_lp_scan_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void
.end method

.method public setProxPowerOff(II)I
    .registers 6
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 535
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportDevice(I)Z

    move-result v0

    const-string v1, "SemInputCommandService"

    if-nez v0, :cond_26

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProxPowerOff("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): device is not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v0, -0x2

    return v0

    .line 539
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProxPowerOff: devid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->setProxPowerOff(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setRefreshRateMode(I)I
    .registers 7
    .param p1, "enable"    # I

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh_rate_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "command":Ljava/lang/String;
    const-string v1, "refresh_rate_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 556
    .local v2, "ret1":I
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 558
    .local v1, "ret2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRefreshRateMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tsp ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spen ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemInputCommandService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v3, -0x6

    if-eq v2, v3, :cond_58

    if-ne v1, v3, :cond_4f

    goto :goto_58

    .line 562
    :cond_4f
    const/4 v3, -0x5

    if-eq v1, v3, :cond_57

    const/4 v3, -0x2

    if-ne v1, v3, :cond_56

    goto :goto_57

    .line 564
    :cond_56
    return v1

    .line 563
    :cond_57
    :goto_57
    return v2

    .line 561
    :cond_58
    :goto_58
    return v3
.end method

.method public setScanRate(Ljava/lang/String;)V
    .registers 6
    .param p1, "mode"    # Ljava/lang/String;

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_scan_rate,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 579
    .local v1, "ret":I
    const-string v2, "set_scan_rate"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScanRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void
.end method

.method public setSingletapEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "singletap_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "command":Ljava/lang/String;
    const-string v1, "singletap_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSipMode(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_sip_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_sip_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSpayEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spay_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "command":Ljava/lang/String;
    const-string v1, "spay_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSpenAodEnable(I)I
    .registers 7
    .param p1, "mode"    # I

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_epen_aod_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 781
    .local v1, "ret":I
    const-string v2, "set_epen_aod_enable"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 782
    const/4 v2, -0x5

    if-ne v1, v2, :cond_3d

    .line 783
    const-string v2, "SemInputCommandService"

    const-string v3, "spen has no cmd \"set_epen_aod_enable\", try to write sysfs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->setSpenAodEnable(Ljava/lang/String;)I

    move-result v1

    .line 787
    :cond_3d
    return v1
.end method

.method public setSpenBleChargeMode(I)I
    .registers 7
    .param p1, "mode"    # I

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "epen_ble_charging_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 842
    .local v1, "ret":I
    const-string v2, "epen_ble_charging_mode"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 843
    const/4 v2, -0x5

    if-ne v1, v2, :cond_3d

    .line 844
    const-string v2, "SemInputCommandService"

    const-string v3, "spen has no cmd \"epen_ble_charging_mode\", try to write sysfs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->setSpenBleChargingMode(Ljava/lang/String;)I

    move-result v1

    .line 848
    :cond_3d
    return v1
.end method

.method public setSpenCoverType(I)I
    .registers 4
    .param p1, "type"    # I

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_cover_type,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_cover_type"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSpenEnabled(IIZ)I
    .registers 5
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z

    .line 757
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenEnabled(IIZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenEnabled(IIZLjava/lang/String;)I
    .registers 14
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .param p4, "caller"    # Ljava/lang/String;

    .line 735
    const/4 v0, -0x2

    const-string v1, "SemInputCommandService"

    const/16 v2, 0xb

    if-eq p1, v2, :cond_d

    .line 736
    const-string v2, "setSpenEnabled: device id is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return v0

    .line 740
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 741
    .local v2, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    if-nez v2, :cond_1c

    .line 742
    return v0

    .line 745
    :cond_1c
    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetsupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2b

    .line 746
    const-string v0, "setSpenEnabled: enabled file is not exist"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v0, -0x5

    return v0

    .line 750
    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->setSpenEnable(IZ)I

    move-result v0

    .line 751
    .local v0, "ret":I
    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->getFormatName()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->addToEnabledDumpsys(Ljava/lang/String;IZLjava/lang/String;I)V

    .line 753
    return v0
.end method

.method public setSpenLowCurrentMode(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_lowcurrent_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_lowcurrent_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSpenPdctLowSensitivityEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_pdct_lowsensitivity_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_pdct_lowsensitivity_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSpenPower(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sec_wacom_device_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "command":Ljava/lang/String;
    const-string v1, "sec_wacom_device_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSpenSavingMode(I)I
    .registers 7
    .param p1, "mode"    # I

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_saving_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 823
    .local v1, "ret":I
    const-string v2, "set_saving_mode"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 824
    const/4 v2, -0x5

    if-ne v1, v2, :cond_3d

    .line 825
    const-string v2, "SemInputCommandService"

    const-string v3, "spen has no cmd \"set_saving_mode\", try to write sysfs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->setSpenSavingMode(Ljava/lang/String;)I

    move-result v1

    .line 829
    :cond_3d
    return v1
.end method

.method public setSpenScreenOffMemo(I)I
    .registers 7
    .param p1, "mode"    # I

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_screen_off_memo,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 810
    .local v1, "ret":I
    const-string v2, "set_screen_off_memo"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 811
    const/4 v2, -0x5

    if-ne v1, v2, :cond_3d

    .line 812
    const-string v2, "SemInputCommandService"

    const-string v3, "spen has no cmd \"set_screen_off_memo\", try to write sysfs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->setSpenScreenOffMemo(Ljava/lang/String;)I

    move-result v1

    .line 816
    :cond_3d
    return v1
.end method

.method public setStylusEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stylus_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "command":Ljava/lang/String;
    const-string v1, "stylus_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSyncChanged(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync_changed,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "command":Ljava/lang/String;
    const-string v1, "sync_changed"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setTemperature(I)I
    .registers 4
    .param p1, "value"    # I

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_temperature,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_temperature"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setTouchableArea(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_touchable_area,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_touchable_area"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setTspEnabled(IIZ)I
    .registers 5
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z

    .line 380
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setTspEnabled(IIZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTspEnabled(IIZLjava/lang/String;)I
    .registers 13
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .param p4, "caller"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;

    .line 365
    .local v0, "device":Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
    if-nez v0, :cond_10

    .line 366
    const/4 v1, -0x2

    return v1

    .line 368
    :cond_10
    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->-$$Nest$fgetsupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_21

    .line 369
    const-string v1, "SemInputCommandService"

    const-string v2, "setTspEnabled: enabled file is not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v1, -0x5

    return v1

    .line 373
    :cond_21
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->setTspEnable(IIZ)I

    move-result v1

    .line 374
    .local v1, "ret":I
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->getFormatName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->addToEnabledDumpsys(Ljava/lang/String;IZLjava/lang/String;I)V

    .line 376
    return v1
.end method

.method public setTwoFingerDoubletapMode(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "two_finger_doubletap_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 637
    .local v1, "ret":I
    const-string v2, "two_finger_doubletap_enable"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTwoFingerDoubletapMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return v1
.end method
