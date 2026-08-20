.class public Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field public final mDestination:I

.field public final mOpcode:I

.field public final mParams:[B

.field public final mSource:I

.field public final mValidationResult:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 38
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 12

    and-int/lit16 v0, p3, 0xff

    .line 63
    invoke-static {p1, p2, v0, p4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validate(III[B)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-void
.end method

.method public constructor <init>(III[BI)V
    .registers 6
    .param p5    # I
        .annotation build Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationResult;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 55
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    and-int/lit16 p1, p3, 0xff

    .line 56
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 57
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 58
    iput p5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    return-void
.end method

.method public static build(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    .line 88
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method public static build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0x73

    if-eq p2, v0, :cond_15

    const/16 v0, 0xa6

    if-eq p2, v0, :cond_10

    .line 83
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0

    .line 81
    :cond_10
    invoke-static {p0, p1, p3}, Lcom/android/server/hdmi/ReportFeaturesMessage;->build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0

    .line 79
    :cond_15
    invoke-static {p0, p1, p3}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static filterMessageParameters(I)Z
    .registers 2

    const/16 v0, 0x45

    if-eq p0, v0, :cond_15

    const/16 v0, 0x47

    if-eq p0, v0, :cond_15

    const/16 v0, 0x64

    if-eq p0, v0, :cond_15

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_15

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    return p0

    :cond_15
    :pswitch_15
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x89
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public static isCecTransportMessage(I)Z
    .registers 2

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_e

    const/16 v0, 0xa8

    if-eq p0, v0, :cond_e

    const/16 v0, 0xf8

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static isUserControlPressedMessage(I)Z
    .registers 2

    const/16 v0, 0x44

    if-ne v0, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static opcodeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_121

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_11e

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_11b

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_118

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_115

    const/16 v0, 0x99

    if-eq p0, v0, :cond_112

    const/16 v0, 0x9a

    if-eq p0, v0, :cond_10f

    sparse-switch p0, :sswitch_data_124

    packed-switch p0, :pswitch_data_192

    packed-switch p0, :pswitch_data_1a6

    packed-switch p0, :pswitch_data_1b4

    packed-switch p0, :pswitch_data_1c6

    packed-switch p0, :pswitch_data_1d2

    packed-switch p0, :pswitch_data_1e6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 358
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Opcode: %02X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_40
    const-string p0, "Select Digital Service"

    return-object p0

    :pswitch_43
    const-string p0, "Select Analog Service"

    return-object p0

    :pswitch_46
    const-string p0, "Get Menu Language"

    return-object p0

    :pswitch_49
    const-string p0, "Report Power Status"

    return-object p0

    :pswitch_4c
    const-string p0, "Give Device Power Status"

    return-object p0

    :pswitch_4f
    const-string p0, "Menu Status"

    return-object p0

    :pswitch_52
    const-string p0, "Menu Request"

    return-object p0

    :pswitch_55
    const-string p0, "Give Device Vendor Id"

    return-object p0

    :pswitch_58
    const-string p0, "Vendor Remote Button Up"

    return-object p0

    :pswitch_5b
    const-string p0, "Vendor Remote Button Down"

    return-object p0

    :pswitch_5e
    const-string p0, "Vendor Command"

    return-object p0

    :pswitch_61
    const-string p0, "Device Vendor Id"

    return-object p0

    :pswitch_64
    const-string p0, "Set Stream Path"

    return-object p0

    :pswitch_67
    const-string p0, "Request Active Source"

    return-object p0

    :pswitch_6a
    const-string p0, "Report Physical Address"

    return-object p0

    :pswitch_6d
    const-string p0, "Give Physical Address"

    return-object p0

    :pswitch_70
    const-string p0, "Active Source"

    return-object p0

    :pswitch_73
    const-string p0, "Routing Information"

    return-object p0

    :pswitch_76
    const-string p0, "Routing Change"

    return-object p0

    :pswitch_79
    const-string p0, "Set Audio Volume Level"

    return-object p0

    :pswitch_7c
    const-string p0, "Set System Audio Mode"

    return-object p0

    :pswitch_7f
    const-string p0, "Give Audio Status"

    return-object p0

    :pswitch_82
    const-string p0, "System Audio Mode Request"

    return-object p0

    :pswitch_85
    const-string p0, "Set Osd Name"

    return-object p0

    :pswitch_88
    const-string p0, "Give Osd Name"

    return-object p0

    :pswitch_8b
    const-string p0, "User Control Release"

    return-object p0

    :pswitch_8e
    const-string p0, "User Control Pressed"

    return-object p0

    :pswitch_91
    const-string p0, "Timer Cleared Status"

    return-object p0

    :pswitch_94
    const-string p0, "Deck Control"

    return-object p0

    :pswitch_97
    const-string p0, "Play"

    return-object p0

    :pswitch_9a
    const-string p0, "Standby"

    return-object p0

    :pswitch_9d
    const-string p0, "Timer Status"

    return-object p0

    :pswitch_a0
    const-string p0, "Set Analog Timer"

    return-object p0

    :pswitch_a3
    const-string p0, "Clear Analog Timer"

    return-object p0

    :pswitch_a6
    const-string p0, "Set Menu Language"

    return-object p0

    :pswitch_a9
    const-string p0, "Record Off"

    return-object p0

    :pswitch_ac
    const-string p0, "Record Status"

    return-object p0

    :pswitch_af
    const-string p0, "Record On"

    return-object p0

    :pswitch_b2
    const-string p0, "Give Tuner Device Status"

    return-object p0

    :pswitch_b5
    const-string p0, "Tuner Device Status"

    return-object p0

    :pswitch_b8
    const-string p0, "Tuner Step Decrement"

    return-object p0

    :pswitch_bb
    const-string p0, "Tuner Step Increment"

    return-object p0

    :pswitch_be
    const-string p0, "Image View On"

    return-object p0

    :sswitch_c1
    const-string p0, "Abort"

    return-object p0

    :sswitch_c4
    const-string p0, "Cdc Message"

    return-object p0

    :sswitch_c7
    const-string p0, "Terminate ARC"

    return-object p0

    :sswitch_ca
    const-string p0, "Request ARC Termination"

    return-object p0

    :sswitch_cd
    const-string p0, "Request ARC Initiation"

    return-object p0

    :sswitch_d0
    const-string p0, "Report ARC Terminated"

    return-object p0

    :sswitch_d3
    const-string p0, "Report ARC Initiated"

    return-object p0

    :sswitch_d6
    const-string p0, "Initiate ARC"

    return-object p0

    :sswitch_d9
    const-string p0, "Report Current Latency"

    return-object p0

    :sswitch_dc
    const-string p0, "Request Current Latency"

    return-object p0

    :sswitch_df
    const-string p0, "Report Features"

    return-object p0

    :sswitch_e2
    const-string p0, "Give Features"

    return-object p0

    :sswitch_e5
    const-string p0, "Request Short Audio Descriptor"

    return-object p0

    :sswitch_e8
    const-string p0, "Report Short Audio Descriptor"

    return-object p0

    :sswitch_eb
    const-string p0, "Set External Timer"

    return-object p0

    :sswitch_ee
    const-string p0, "Clear External Timer"

    return-object p0

    :sswitch_f1
    const-string p0, "Vendor Command With Id"

    return-object p0

    :sswitch_f4
    const-string p0, "Get Cec Version"

    return-object p0

    :sswitch_f7
    const-string p0, "Cec Version"

    return-object p0

    :sswitch_fa
    const-string p0, "InActive Source"

    return-object p0

    :sswitch_fd
    const-string p0, "Set Digital Timer"

    return-object p0

    :sswitch_100
    const-string p0, "Report Audio Status"

    return-object p0

    :sswitch_103
    const-string p0, "Set Timer Program Title"

    return-object p0

    :sswitch_106
    const-string p0, "Set Osd String"

    return-object p0

    :sswitch_109
    const-string p0, "Record Tv Screen"

    return-object p0

    :sswitch_10c
    const-string p0, "Text View On"

    return-object p0

    :cond_10f
    const-string p0, "Set Audio Rate"

    return-object p0

    :cond_112
    const-string p0, "Clear Digital Timer"

    return-object p0

    :cond_115
    const-string p0, "System Audio Mode Status"

    return-object p0

    :cond_118
    const-string p0, "Give System Audio Mode Status"

    return-object p0

    :cond_11b
    const-string p0, "Deck Status"

    return-object p0

    :cond_11e
    const-string p0, "Give Deck Status"

    return-object p0

    :cond_121
    :sswitch_121
    const-string p0, "Feature Abort"

    return-object p0

    :sswitch_data_124
    .sparse-switch
        0x0 -> :sswitch_121
        0xd -> :sswitch_10c
        0xf -> :sswitch_109
        0x64 -> :sswitch_106
        0x67 -> :sswitch_103
        0x7a -> :sswitch_100
        0x97 -> :sswitch_fd
        0x9d -> :sswitch_fa
        0x9e -> :sswitch_f7
        0x9f -> :sswitch_f4
        0xa0 -> :sswitch_f1
        0xa1 -> :sswitch_ee
        0xa2 -> :sswitch_eb
        0xa3 -> :sswitch_e8
        0xa4 -> :sswitch_e5
        0xa5 -> :sswitch_e2
        0xa6 -> :sswitch_df
        0xa7 -> :sswitch_dc
        0xa8 -> :sswitch_d9
        0xc0 -> :sswitch_d6
        0xc1 -> :sswitch_d3
        0xc2 -> :sswitch_d0
        0xc3 -> :sswitch_cd
        0xc4 -> :sswitch_ca
        0xc5 -> :sswitch_c7
        0xf8 -> :sswitch_c4
        0xff -> :sswitch_c1
    .end sparse-switch

    :pswitch_data_192
    .packed-switch 0x4
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
    .end packed-switch

    :pswitch_data_1a6
    .packed-switch 0x32
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
    .end packed-switch

    :pswitch_data_1b4
    .packed-switch 0x41
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
    .end packed-switch

    :pswitch_data_1c6
    .packed-switch 0x70
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
    .end packed-switch

    :pswitch_data_1d2
    .packed-switch 0x80
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
    .end packed-switch

    :pswitch_data_1e6
    .packed-switch 0x89
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
    .end packed-switch
.end method

.method public static validationResultToString(I)Ljava/lang/String;
    .registers 2
    .param p0    # I
        .annotation build Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationResult;
        .end annotation
    .end param

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    const-string/jumbo p0, "unknown error"

    return-object p0

    :cond_12
    const-string/jumbo p0, "short parameters"

    return-object p0

    :cond_16
    const-string/jumbo p0, "invalid parameters"

    return-object p0

    :cond_1a
    const-string/jumbo p0, "invalid destination"

    return-object p0

    :cond_1e
    const-string/jumbo p0, "invalid source"

    return-object p0

    :cond_22
    const-string/jumbo p0, "ok"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 93
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 94
    check-cast p1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 95
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-ne v0, v2, :cond_34

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 96
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    if-ne v0, v2, :cond_34

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 97
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v0, v2, :cond_34

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 98
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_34

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 99
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getValidationResult()I

    move-result p1

    if-ne p0, p1, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method public getDestination()I
    .registers 1

    .line 130
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    return p0
.end method

.method public getOpcode()I
    .registers 1

    .line 140
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    return p0
.end method

.method public getParams()[B
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-object p0
.end method

.method public getSource()I
    .registers 1

    .line 120
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    return p0
.end method

.method public getValidationResult()I
    .registers 1

    .line 158
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 110
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 106
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 164
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 165
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "<%s> %X%X:%02X"

    .line 164
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v1, v1

    if-lez v1, :cond_91

    .line 167
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->filterMessageParameters(I)Z

    move-result v1

    if-eqz v1, :cond_57

    new-array v1, v4, [Ljava/lang/Object;

    .line 168
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " <Redacted len=%d>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 169
    :cond_57
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->isUserControlPressedMessage(I)Z

    move-result v1

    if-eqz v1, :cond_75

    new-array v1, v4, [Ljava/lang/Object;

    .line 170
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    aget-byte v2, v2, v3

    .line 172
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecKeycode;->getKeycodeType(B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " <Keycode type = %s>"

    .line 171
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 174
    :cond_75
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v1

    move v5, v3

    :goto_79
    if-ge v5, v2, :cond_91

    aget-byte v6, v1, v5

    new-array v7, v4, [Ljava/lang/Object;

    .line 175
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v7, v3

    const-string v6, ":%02X"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    .line 179
    :cond_91
    :goto_91
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    if-eqz p0, :cond_a6

    new-array v1, v4, [Ljava/lang/Object;

    .line 181
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->validationResultToString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, " <Validation error: %s>"

    .line 180
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_a6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
