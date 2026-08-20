.class public Lcom/android/server/hdmi/HdmiCecMessageBuilder;
.super Ljava/lang/Object;
.source "HdmiCecMessageBuilder.java"


# static fields
.field public static final OSD_NAME_MAX_LENGTH:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    .line 309
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p1

    const/16 v0, 0xf

    const/16 v1, 0x82

    .line 308
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/16 p2, 0x9e

    .line 189
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0x33

    .line 667
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0x99

    .line 655
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0xa1

    .line 679
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    .line 702
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    const/16 p1, 0xf

    const/16 v1, 0x87

    .line 172
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    and-int/lit16 p2, p3, 0xff

    int-to-byte p2, p2

    const/4 p3, 0x1

    aput-byte p2, v0, p3

    .line 50
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0x71

    .line 480
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0x8f

    .line 379
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0x8c

    .line 83
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveFeatures(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0xa5

    .line 683
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0x46

    .line 72
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0x83

    .line 61
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0x7d

    .line 542
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    .line 321
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x9d

    .line 320
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildInitiateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0xc0

    .line 211
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0xb

    .line 607
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0x9

    .line 596
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0xc1

    .line 244
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0xc2

    .line 255
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportAudioStatus(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    const/16 p3, 0x80

    goto :goto_7

    :cond_6
    move p3, v0

    :goto_7
    int-to-byte p3, p3

    int-to-byte p2, p2

    and-int/lit8 p2, p2, 0x7f

    or-int/2addr p2, p3

    int-to-byte p2, p2

    const/4 p3, 0x1

    new-array p3, p3, [B

    aput-byte p2, p3, v0

    const/16 p2, 0x7a

    .line 495
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/16 p2, 0x8e

    .line 409
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x2

    aput-byte p1, v0, p2

    const/16 p1, 0xf

    const/16 p2, 0x84

    .line 151
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/16 p2, 0x90

    .line 394
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportShortAudioDescriptor(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0xa3

    .line 468
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0x7e

    .line 454
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestActiveSource(I)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0xf

    const/16 v1, 0x85

    .line 296
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0xc3

    .line 200
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0xc4

    .line 233
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestShortAudioDescriptor(II[I)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 7

    .line 269
    array-length v0, p2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_15

    .line 271
    aget v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    const/16 p2, 0xa4

    .line 273
    invoke-static {p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x3

    aput-byte p1, v0, p2

    const/16 p1, 0xf

    const/16 p2, 0x80

    .line 353
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRoutingInformation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    .line 368
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p1

    const/16 v0, 0xf

    const/16 v1, 0x81

    .line 367
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0x34

    .line 631
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0x97

    .line 619
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0xa2

    .line 643
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [B

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/16 p1, 0xf

    const/16 v1, 0x32

    .line 108
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 124
    :try_start_b
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "US-ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_15} :catch_1c

    const/16 v0, 0x47

    .line 128
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0

    :catch_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    .line 335
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p1

    const/16 v0, 0xf

    const/16 v1, 0x86

    .line 334
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0x72

    .line 440
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0x36

    .line 553
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    const/16 v0, 0x70

    if-eqz p3, :cond_d

    .line 425
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p2

    .line 424
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0

    .line 427
    :cond_d
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildTerminateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0xc5

    .line 222
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0xd

    .line 286
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    .line 507
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0x44

    .line 519
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    const/16 v0, 0x45

    .line 531
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4

    const/16 v0, 0x89

    .line 565
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 9

    .line 579
    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    .line 580
    aput-byte v2, v0, v3

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x1

    .line 581
    aput-byte v2, v0, v4

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v2, 0x2

    .line 582
    aput-byte p2, v0, v2

    .line 583
    array-length p2, p3

    invoke-static {p3, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0xa0

    .line 584
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static physicalAddressToParam(I)[B
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method
