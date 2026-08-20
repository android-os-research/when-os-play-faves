.class public abstract Lcom/android/server/usb/descriptors/UsbACInterface;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbACInterface.java"


# static fields
.field public static final ACI_CLOCK_MULTIPLIER:B = 0xct

.field public static final ACI_CLOCK_SELECTOR:B = 0xbt

.field public static final ACI_CLOCK_SOURCE:B = 0xat

.field public static final ACI_EXTENSION_UNIT:B = 0x8t

.field public static final ACI_FEATURE_UNIT:B = 0x6t

.field public static final ACI_HEADER:B = 0x1t

.field public static final ACI_INPUT_TERMINAL:B = 0x2t

.field public static final ACI_MIXER_UNIT:B = 0x4t

.field public static final ACI_OUTPUT_TERMINAL:B = 0x3t

.field public static final ACI_PROCESSING_UNIT:B = 0x7t

.field public static final ACI_SAMPLE_RATE_CONVERTER:B = 0xdt

.field public static final ACI_SELECTOR_UNIT:B = 0x5t

.field public static final ACI_UNDEFINED:B = 0x0t

.field public static final ASI_FORMAT_SPECIFIC:B = 0x3t

.field public static final ASI_FORMAT_TYPE:B = 0x2t

.field public static final ASI_GENERAL:B = 0x1t

.field public static final ASI_UNDEFINED:B = 0x0t

.field public static final FORMAT_III_IEC1937AC3:I = 0x2001

.field public static final FORMAT_III_IEC1937_MPEG1_Layer1:I = 0x2002

.field public static final FORMAT_III_IEC1937_MPEG1_Layer2:I = 0x2003

.field public static final FORMAT_III_IEC1937_MPEG2_EXT:I = 0x2004

.field public static final FORMAT_III_IEC1937_MPEG2_Layer1LS:I = 0x2005

.field public static final FORMAT_III_UNDEFINED:I = 0x2000

.field public static final FORMAT_II_AC3:I = 0x1002

.field public static final FORMAT_II_MPEG:I = 0x1001

.field public static final FORMAT_II_UNDEFINED:I = 0x1000

.field public static final FORMAT_I_ALAW:I = 0x4

.field public static final FORMAT_I_IEEE_FLOAT:I = 0x3

.field public static final FORMAT_I_MULAW:I = 0x5

.field public static final FORMAT_I_PCM:I = 0x1

.field public static final FORMAT_I_PCM8:I = 0x2

.field public static final FORMAT_I_UNDEFINED:I = 0x0

.field public static final MSI_ELEMENT:B = 0x4t

.field public static final MSI_HEADER:B = 0x1t

.field public static final MSI_IN_JACK:B = 0x2t

.field public static final MSI_OUT_JACK:B = 0x3t

.field public static final MSI_UNDEFINED:B = 0x0t

.field public static final TAG:Ljava/lang/String; = "UsbACInterface"


# instance fields
.field public final mSubclass:I

.field public final mSubtype:B


# direct methods
.method public constructor <init>(IBBI)V
    .registers 5

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 86
    iput-byte p3, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    .line 87
    iput p4, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:I

    return-void
.end method

.method public static allocAudioControlDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 12

    const/16 v0, 0x200

    packed-switch p4, :pswitch_data_86

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown Audio Class Interface subtype:0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsbACInterface"

    .line 183
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance p0, Lcom/android/server/usb/descriptors/UsbACInterfaceUnparsed;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/UsbACInterfaceUnparsed;-><init>(IBBI)V

    return-object p0

    .line 160
    :pswitch_25
    new-instance p0, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;-><init>(IBBI)V

    return-object p0

    .line 154
    :pswitch_2b
    new-instance p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;-><init>(IBBI)V

    return-object p0

    .line 167
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result p0

    if-ne p0, v0, :cond_3d

    .line 172
    new-instance p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;-><init>(IBBI)V

    return-object p0

    .line 174
    :cond_3d
    new-instance p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;-><init>(IBBI)V

    return-object p0

    .line 139
    :pswitch_43
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result p0

    if-ne p0, v0, :cond_4f

    .line 144
    new-instance p0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;-><init>(IBBI)V

    return-object p0

    .line 146
    :cond_4f
    new-instance p0, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;-><init>(IBBI)V

    return-object p0

    .line 123
    :pswitch_55
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result p0

    if-ne p0, v0, :cond_61

    .line 128
    new-instance p0, Lcom/android/server/usb/descriptors/Usb20ACInputTerminal;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ACInputTerminal;-><init>(IBBI)V

    return-object p0

    .line 130
    :cond_61
    new-instance p0, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;-><init>(IBBI)V

    return-object p0

    .line 106
    :pswitch_67
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v5

    .line 107
    invoke-virtual {p0, v5}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->setACInterfaceSpec(I)V

    if-ne v5, v0, :cond_7b

    .line 112
    new-instance p0, Lcom/android/server/usb/descriptors/Usb20ACHeader;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ACHeader;-><init>(IBBII)V

    return-object p0

    .line 114
    :cond_7b
    new-instance p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb10ACHeader;-><init>(IBBII)V

    return-object p0

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_67
        :pswitch_55
        :pswitch_43
        :pswitch_31
        :pswitch_2b
        :pswitch_25
    .end packed-switch
.end method

.method public static allocAudioStreamingDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 8

    .line 192
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v0

    const/4 v1, 0x1

    if-eq p4, v1, :cond_2b

    const/4 v0, 0x2

    if-eq p4, v0, :cond_26

    .line 208
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown Audio Streaming Interface subtype:0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsbACInterface"

    .line 208
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 202
    :cond_26
    invoke-static/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbASFormat;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object p0

    return-object p0

    :cond_2b
    const/16 p0, 0x200

    if-ne v0, p0, :cond_35

    .line 196
    new-instance p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ASGeneral;-><init>(IBBI)V

    return-object p0

    .line 198
    :cond_35
    new-instance p0, Lcom/android/server/usb/descriptors/Usb10ASGeneral;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ASGeneral;-><init>(IBBI)V

    return-object p0
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 10

    .line 243
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v4

    .line 244
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v5

    const/4 v0, 0x1

    if-eq v5, v0, :cond_3f

    const/4 v0, 0x2

    if-eq v5, v0, :cond_36

    const/4 p0, 0x3

    if-eq v5, p0, :cond_31

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown Audio Class Interface Subclass: 0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsbACInterface"

    .line 268
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 265
    :cond_31
    invoke-static {p2, p3, v4, v5}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocMidiStreamingDescriptor(IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object p0

    return-object p0

    :cond_36
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 258
    invoke-static/range {v0 .. v5}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocAudioStreamingDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object p0

    return-object p0

    :cond_3f
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 251
    invoke-static/range {v0 .. v5}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocAudioControlDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static allocMidiStreamingDescriptor(IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_31

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p2, v0, :cond_25

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown MIDI Streaming Interface subtype:0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsbACInterface"

    .line 232
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 224
    :cond_25
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMSMidiOutputJack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbMSMidiOutputJack;-><init>(IBBI)V

    return-object v0

    .line 221
    :cond_2b
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMSMidiInputJack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbMSMidiInputJack;-><init>(IBBI)V

    return-object v0

    .line 218
    :cond_31
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;-><init>(IBBI)V

    return-object v0
.end method


# virtual methods
.method public getSubclass()I
    .registers 1

    .line 95
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:I

    return p0
.end method

.method public getSubtype()B
    .registers 1

    .line 91
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 7

    .line 276
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v0

    .line 279
    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getACInterfaceSubclassName(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result p0

    .line 282
    invoke-static {p0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getACControlInterfaceName(B)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subclass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subtype: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
