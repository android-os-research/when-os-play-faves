.class public synthetic Lcom/android/server/hdmi/HdmiControlService$19;
.super Ljava/lang/Object;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 563
    invoke-static {}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->values()[Landroid/sysprop/HdmiProperties$cec_device_types_values;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService$19;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    :try_start_9
    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TV:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$19;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RECORDING_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$19;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RESERVED:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$19;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TUNER:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$19;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PLAYBACK_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$19;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->AUDIO_SYSTEM:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$19;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PURE_CEC_SWITCH:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$19;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->VIDEO_PROCESSOR:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    return-void
.end method
