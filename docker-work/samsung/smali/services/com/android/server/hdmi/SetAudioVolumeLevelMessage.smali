.class public Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;
.super Lcom/android/server/hdmi/HdmiCecMessage;
.source "SetAudioVolumeLevelMessage.java"


# instance fields
.field public final mAudioVolumeLevel:I


# direct methods
.method public constructor <init>(II[BI)V
    .registers 11

    const/16 v3, 0x73

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    .line 32
    iput p4, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->mAudioVolumeLevel:I

    return-void
.end method

.method public static build(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 10

    const/4 v0, 0x1

    new-array v5, v0, [B

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 48
    invoke-static {p0, p1}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->validateAddress(II)I

    move-result v6

    if-nez v6, :cond_15

    .line 50
    new-instance v0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    invoke-direct {v0, p0, p1, v5, p2}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;-><init>(II[BI)V

    return-object v0

    .line 52
    :cond_15
    new-instance p2, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v4, 0x73

    move-object v1, p2

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object p2
.end method

.method public static build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 10

    .line 69
    array-length v0, p2

    if-nez v0, :cond_10

    .line 70
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v4, 0x73

    const/4 v6, 0x4

    move-object v1, v0

    move v2, p0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v0

    :cond_10
    const/4 v0, 0x0

    .line 74
    aget-byte v0, p2, v0

    .line 77
    invoke-static {p0, p1}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->validateAddress(II)I

    move-result v6

    if-nez v6, :cond_1f

    .line 79
    new-instance v1, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;-><init>(II[BI)V

    return-object v1

    .line 81
    :cond_1f
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v4, 0x73

    move-object v1, v0

    move v2, p0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v0
.end method

.method public static validateAddress(II)I
    .registers 3

    const/4 v0, 0x1

    .line 90
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getAudioVolumeLevel()I
    .registers 1

    .line 100
    iget p0, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->mAudioVolumeLevel:I

    return p0
.end method
