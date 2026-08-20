.class public Lcom/android/server/hdmi/HdmiCecMessageValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$TunerDeviceStatusValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationResult;
    }
.end annotation


# static fields
.field public static final DEST_ALL:I = 0x3

.field public static final DEST_BROADCAST:I = 0x2

.field public static final DEST_DIRECT:I = 0x1

.field public static final ERROR_DESTINATION:I = 0x2

.field public static final ERROR_PARAMETER:I = 0x3

.field public static final ERROR_PARAMETER_SHORT:I = 0x4

.field public static final ERROR_SOURCE:I = 0x1

.field public static final OK:I = 0x0

.field public static final SRC_UNREGISTERED:I = 0x4

.field public static final TAG:Ljava/lang/String; = "HdmiCecMessageValidator"

.field public static final sValidationInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$smisValidAnalogueBroadcastType(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueBroadcastType(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidAnalogueFrequency(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidAsciiString([BII)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAsciiString([BII)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidBroadcastSystem(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidBroadcastSystem(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidChannelIdentifier([BI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier([BI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidDayOfMonth(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDayOfMonth(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidDigitalServiceIdentification([BI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification([BI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidDisplayControl(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDisplayControl(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidDurationHours(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDurationHours(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidExternalSource([BI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidExternalSource([BI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidHour(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidHour(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidMinute(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidMonthOfYear(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMonthOfYear(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidPhysicalAddress([BI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidPlayMode(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPlayMode(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidRecordingSequence(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidRecordingSequence(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidTimerStatusData([BI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidTimerStatusData([BI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidTunerDeviceInfo([B)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidTunerDeviceInfo([B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidUiBroadcastType(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidUiBroadcastType(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidUiSoundPresenationControl(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidUiSoundPresenationControl(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisWithinRange(III)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smtoErrorCode(Z)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->toErrorCode(Z)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 16

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator-IA;)V

    const/16 v2, 0x82

    const/4 v3, 0x6

    .line 81
    invoke-static {v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v2, 0x9d

    const/4 v4, 0x1

    .line 83
    invoke-static {v2, v0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 84
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;

    invoke-direct {v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator-IA;)V

    const/16 v5, 0x84

    invoke-static {v5, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 86
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;

    invoke-direct {v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator-IA;)V

    const/16 v5, 0x80

    invoke-static {v5, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v2, 0x81

    .line 88
    invoke-static {v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v2, 0x86

    const/4 v5, 0x2

    .line 90
    invoke-static {v2, v0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 92
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;

    invoke-direct {v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator-IA;)V

    const/16 v6, 0x70

    invoke-static {v6, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 96
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v7, 0xff

    .line 97
    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v7, 0x9f

    .line 98
    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v7, 0x91

    const/4 v8, 0x5

    .line 99
    invoke-static {v7, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v7, 0x71

    .line 101
    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v7, 0x8f

    .line 102
    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v7, 0x8c

    .line 103
    invoke-static {v7, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v7, 0x46

    .line 105
    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v7, 0x83

    .line 106
    invoke-static {v7, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v7, 0x7d

    .line 108
    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/4 v7, 0x4

    .line 110
    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0xc0

    .line 111
    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0xb

    .line 112
    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0xf

    .line 113
    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0xc1

    .line 114
    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0xc2

    .line 115
    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0xc3

    .line 116
    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0xc4

    .line 117
    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0x85

    .line 118
    invoke-static {v9, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0x36

    const/4 v10, 0x7

    .line 120
    invoke-static {v9, v2, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0xc5

    .line 121
    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0xd

    .line 122
    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 123
    invoke-static {v3, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 124
    invoke-static {v8, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0x45

    .line 125
    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0x8b

    const/4 v11, 0x3

    .line 126
    invoke-static {v9, v2, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 131
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/16 v12, 0x8

    invoke-direct {v9, v4, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v13, 0x9

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 133
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator-IA;)V

    const/16 v13, 0xa

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 136
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator-IA;)V

    const/16 v13, 0x33

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 138
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator-IA;)V

    const/16 v13, 0x99

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 140
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator-IA;)V

    const/16 v13, 0xa1

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 142
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator-IA;)V

    const/16 v13, 0x34

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 144
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator-IA;)V

    const/16 v13, 0x97

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 146
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator-IA;)V

    const/16 v13, 0xa2

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 148
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    const/16 v13, 0xe

    invoke-direct {v9, v4, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    const/16 v14, 0x67

    invoke-static {v14, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 150
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator-IA;)V

    const/16 v14, 0x43

    invoke-static {v14, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 154
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator-IA;)V

    const/16 v14, 0x35

    invoke-static {v14, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 157
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v14, 0x9e

    .line 158
    invoke-static {v14, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 159
    new-instance v14, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v14, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(I)V

    const/16 v15, 0x32

    invoke-static {v15, v14, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 162
    new-instance v14, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v14, v4, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    .line 163
    new-instance v15, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v15, v4, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v3, 0x42

    invoke-static {v3, v15, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 165
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    const/16 v15, 0x11

    const/16 v7, 0x1f

    invoke-direct {v3, v15, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v7, 0x1b

    invoke-static {v7, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v3, 0x1a

    .line 167
    invoke-static {v3, v14, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 168
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    invoke-direct {v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator-IA;)V

    const/16 v7, 0x41

    invoke-static {v7, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 170
    invoke-static {v12, v14, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 172
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;

    invoke-direct {v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator-IA;)V

    const/16 v7, 0x92

    invoke-static {v7, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 176
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;

    invoke-direct {v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator-IA;)V

    const/16 v7, 0x93

    invoke-static {v7, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 180
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$TunerDeviceStatusValidator;

    invoke-direct {v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$TunerDeviceStatusValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$TunerDeviceStatusValidator-IA;)V

    invoke-static {v10, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 186
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v3, v6, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    .line 187
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v7, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v12, 0x87

    invoke-static {v12, v7, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 191
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v7, v4, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v12, 0x89

    invoke-static {v12, v7, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 193
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/4 v12, 0x4

    invoke-direct {v7, v12, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v12, 0xa0

    invoke-static {v12, v7, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v7, 0x8a

    .line 195
    invoke-static {v7, v3, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 199
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;

    invoke-direct {v7, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator-IA;)V

    const/16 v10, 0x64

    invoke-static {v10, v7, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 200
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v7, v4, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    const/16 v10, 0x47

    invoke-static {v10, v7, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 203
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v7, v6, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v10, 0x8d

    invoke-static {v10, v7, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 205
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v7, v6, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v10, 0x8e

    invoke-static {v10, v7, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 209
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;

    invoke-direct {v7, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator-IA;)V

    const/16 v1, 0x44

    invoke-static {v1, v7, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 215
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v1, v6, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v7, 0x90

    invoke-static {v7, v1, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 221
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v1, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    invoke-static {v6, v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v1, 0x7a

    .line 225
    invoke-static {v1, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 226
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v1, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v7, 0xa3

    invoke-static {v7, v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v1, 0xa4

    .line 228
    invoke-static {v1, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 230
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v1, v6, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v7, 0x72

    invoke-static {v7, v1, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 234
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v1, v6, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v7, 0x7e

    invoke-static {v7, v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 240
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    const/4 v7, 0x6

    invoke-direct {v1, v6, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v6, 0x9a

    invoke-static {v6, v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v1, 0xa5

    .line 246
    invoke-static {v1, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v1, 0xa7

    .line 250
    invoke-static {v1, v0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 252
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v1, 0xa8

    invoke-static {v1, v0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v0, 0xf8

    const/4 v1, 0x6

    .line 258
    invoke-static {v0, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V
    .registers 5

    .line 263
    sget-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    invoke-direct {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static isAribDbs(I)Z
    .registers 3

    if-eqz p0, :cond_f

    const/16 v0, 0x8

    const/16 v1, 0xa

    .line 534
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isAtscDbs(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/16 v1, 0x10

    const/16 v2, 0x12

    .line 545
    invoke-static {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_f
    return v0
.end method

.method public static isDvbDbs(I)Z
    .registers 3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/16 v0, 0x18

    const/16 v1, 0x1b

    .line 556
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public static isValidAnalogueBroadcastType(I)Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 499
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static isValidAnalogueFrequency(I)Z
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isValidAsciiString([BII)Z
    .registers 6

    .line 410
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_16

    if-ge p1, p2, :cond_16

    .line 411
    aget-byte v0, p0, p1

    const/16 v1, 0x20

    const/16 v2, 0x7e

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidBroadcastSystem(I)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x1f

    .line 523
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static isValidChannelIdentifier([BI)Z
    .registers 7

    .line 582
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xfc

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_11

    .line 585
    array-length p0, p0

    sub-int/2addr p0, p1

    const/4 p1, 0x3

    if-lt p0, p1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    return v1

    :cond_11
    const/16 v4, 0x8

    if-ne v0, v4, :cond_1c

    .line 588
    array-length p0, p0

    sub-int/2addr p0, p1

    if-lt p0, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    return v1

    :cond_1c
    return v3
.end method

.method public static isValidDayOfMonth(I)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x1f

    .line 426
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static isValidDigitalBroadcastSystem(I)Z
    .registers 2

    .line 568
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAribDbs(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAtscDbs(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isDvbDbs(I)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public static isValidDigitalServiceIdentification([BI)Z
    .registers 7

    .line 604
    aget-byte v0, p0, p1

    and-int/lit16 v1, v0, 0x80

    and-int/lit8 v0, v0, 0x7f

    const/4 v2, 0x1

    add-int/2addr p1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_34

    .line 610
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAribDbs(I)Z

    move-result v1

    const/4 v4, 0x6

    if-eqz v1, :cond_19

    .line 612
    array-length p0, p0

    sub-int/2addr p0, p1

    if-lt p0, v4, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    return v2

    .line 613
    :cond_19
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAtscDbs(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 615
    array-length p0, p0

    sub-int/2addr p0, p1

    const/4 p1, 0x4

    if-lt p0, p1, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    :goto_26
    return v2

    .line 616
    :cond_27
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isDvbDbs(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 618
    array-length p0, p0

    sub-int/2addr p0, p1

    if-lt p0, v4, :cond_32

    goto :goto_33

    :cond_32
    move v2, v3

    :goto_33
    return v2

    :cond_34
    const/16 v2, 0x80

    if-ne v1, v2, :cond_43

    .line 622
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalBroadcastSystem(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 623
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier([BI)Z

    move-result p0

    return p0

    :cond_43
    return v3
.end method

.method public static isValidDisplayControl(I)Z
    .registers 2

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_13

    const/16 v0, 0x40

    if-eq p0, v0, :cond_13

    const/16 v0, 0x80

    if-eq p0, v0, :cond_13

    const/16 v0, 0xc0

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static isValidDurationHours(I)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x63

    .line 470
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static isValidExternalPlug(I)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0xff

    .line 637
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static isValidExternalSource([BI)Z
    .registers 4

    .line 648
    aget-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 652
    aget-byte p0, p0, p1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidExternalPlug(I)Z

    move-result p0

    return p0

    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    .line 656
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1b

    .line 657
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z

    move-result p0

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidHour(I)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x17

    .line 448
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static isValidMinute(I)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x3b

    .line 459
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static isValidMonthOfYear(I)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0xc

    .line 437
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static isValidNotProgrammedErrorInfo(I)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0xe

    .line 668
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static isValidPhysicalAddress([BI)Z
    .registers 3

    .line 352
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result p0

    :cond_4
    if-eqz p0, :cond_16

    const p1, 0xf000

    and-int/2addr p1, p0

    shl-int/lit8 p0, p0, 0x4

    const v0, 0xffff

    and-int/2addr p0, v0

    if-nez p1, :cond_4

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidPlayMode(I)Z
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x7

    .line 711
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x9

    const/16 v1, 0xb

    .line 712
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x15

    const/16 v1, 0x17

    .line 713
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x19

    const/16 v1, 0x1b

    .line 714
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x24

    const/16 v1, 0x25

    .line 715
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x20

    if-ne p0, v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 p0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p0, 0x1

    :goto_38
    return p0
.end method

.method public static isValidProgrammedInfo(I)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 664
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static isValidRecordingSequence(I)Z
    .registers 3

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 487
    :cond_8
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_10

    move v1, v0

    :cond_10
    return v1
.end method

.method public static isValidTimerStatusData([BI)Z
    .registers 7

    .line 672
    aget-byte v0, p0, p1

    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1c

    and-int/lit8 v0, v0, 0xf

    .line 677
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidProgrammedInfo(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v1, 0x9

    if-eq v0, v1, :cond_28

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1b

    goto :goto_28

    :cond_1b
    return v4

    :cond_1c
    and-int/lit8 v0, v0, 0xf

    .line 687
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidNotProgrammedErrorInfo(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2a

    :cond_28
    :goto_28
    move v0, v4

    goto :goto_2c

    :cond_2a
    return v4

    :cond_2b
    move v0, v3

    :goto_2c
    add-int/2addr p1, v4

    if-eqz v0, :cond_46

    .line 697
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_46

    .line 698
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDurationHours(I)Z

    move-result v0

    if-eqz v0, :cond_46

    add-int/2addr p1, v4

    aget-byte p0, p0, p1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result p0

    if-eqz p0, :cond_46

    move v3, v4

    :cond_46
    return v3
.end method

.method public static isValidTunerDeviceInfo([B)Z
    .registers 6

    const/4 v0, 0x0

    .line 771
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez v1, :cond_11

    .line 774
    array-length v1, p0

    if-lt v1, v2, :cond_36

    .line 775
    invoke-static {p0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification([BI)Z

    move-result p0

    return p0

    :cond_11
    if-ne v1, v3, :cond_14

    return v3

    :cond_14
    const/4 v4, 0x2

    if-ne v1, v4, :cond_36

    .line 782
    array-length v1, p0

    if-lt v1, v2, :cond_36

    .line 783
    aget-byte v1, p0, v3

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueBroadcastType(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 784
    invoke-static {p0, v4}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x4

    aget-byte p0, p0, v1

    .line 785
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidBroadcastSystem(I)Z

    move-result p0

    if-eqz p0, :cond_36

    move v0, v3

    :cond_36
    return v0
.end method

.method public static isValidType(I)Z
    .registers 2

    if-ltz p0, :cond_a

    const/4 v0, 0x7

    if-gt p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isValidUiBroadcastType(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_33

    if-eq p0, v0, :cond_33

    const/16 v1, 0x10

    if-eq p0, v1, :cond_33

    const/16 v1, 0x20

    if-eq p0, v1, :cond_33

    const/16 v1, 0x30

    if-eq p0, v1, :cond_33

    const/16 v1, 0x40

    if-eq p0, v1, :cond_33

    const/16 v1, 0x50

    if-eq p0, v1, :cond_33

    const/16 v1, 0x60

    if-eq p0, v1, :cond_33

    const/16 v1, 0x70

    if-eq p0, v1, :cond_33

    const/16 v1, 0x80

    if-eq p0, v1, :cond_33

    const/16 v1, 0x90

    if-eq p0, v1, :cond_33

    const/16 v1, 0x91

    if-eq p0, v1, :cond_33

    const/16 v1, 0xa0

    if-ne p0, v1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :cond_33
    :goto_33
    return v0
.end method

.method public static isValidUiSoundPresenationControl(I)Z
    .registers 3

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x30

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x90

    if-eq p0, v0, :cond_2d

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_2d

    const/16 v0, 0xb1

    const/16 v1, 0xb3

    .line 758
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_2d

    const/16 v0, 0xc1

    const/16 v1, 0xc3

    .line 759
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    :goto_2e
    return p0
.end method

.method public static isWithinRange(III)Z
    .registers 3

    and-int/lit16 p0, p0, 0xff

    if-lt p0, p1, :cond_8

    if-gt p0, p2, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static toErrorCode(Z)I
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_5

    :cond_4
    const/4 p0, 0x3

    :goto_5
    return p0
.end method

.method public static validate(III[B)I
    .registers 6
    .annotation build Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationResult;
    .end annotation

    .line 271
    sget-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No validation information for the opcode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 278
    :cond_22
    iget p2, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(III)I

    move-result p0

    if-eqz p0, :cond_2b

    return p0

    .line 284
    :cond_2b
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    invoke-interface {p0, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;->isValid([B)I

    move-result p0

    if-eqz p0, :cond_34

    return p0

    :cond_34
    return v1
.end method

.method public static validateAddress(III)I
    .registers 5
    .annotation build Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationResult;
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0xf

    if-ne p0, v1, :cond_a

    and-int/lit8 p0, p2, 0x4

    if-nez p0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x2

    if-ne p1, v1, :cond_12

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_17

    return p0

    :cond_12
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_17

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method
