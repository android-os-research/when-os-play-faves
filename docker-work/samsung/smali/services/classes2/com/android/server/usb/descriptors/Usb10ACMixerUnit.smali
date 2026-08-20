.class public final Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.source "Usb10ACMixerUnit.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Usb10ACMixerUnit"


# instance fields
.field public mChanNameID:B

.field public mChannelConfig:I

.field public mControls:[B

.field public mNameID:B


# direct methods
.method public constructor <init>(IBBI)V
    .registers 5

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;-><init>(IBBI)V

    return-void
.end method


# virtual methods
.method public getChanNameID()B
    .registers 1

    .line 42
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChanNameID:B

    return p0
.end method

.method public getChannelConfig()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChannelConfig:I

    return p0
.end method

.method public getControls()[B
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    return-object p0
.end method

.method public getNameID()B
    .registers 1

    .line 50
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNameID:B

    return p0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 6

    .line 55
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 57
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChannelConfig:I

    .line 58
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChanNameID:B

    .line 60
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    invoke-static {v0, v1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->calcControlArraySize(II)I

    move-result v0

    .line 61
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_29

    .line 63
    iget-object v2, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 66
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNameID:B

    .line 68
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 10

    .line 73
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    const-string v0, "Mixer Unit"

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->getUnitID()B

    move-result v2

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->getNumInputs()B

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->getInputIDs()[B

    move-result-object v2

    .line 81
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Num Inputs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    move v3, v1

    :goto_4d
    const-string v5, " "

    const-string v6, ""

    if-ge v3, v0, :cond_75

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v3

    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    add-int/lit8 v6, v0, -0x1

    if-ge v3, v6, :cond_72

    .line 86
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_75
    const-string v0, "]"

    .line 89
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Num Outputs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->getNumOutputs()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel Config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getChannelConfig()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getControls()[B

    move-result-object p0

    .line 96
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 98
    :goto_d0
    array-length v2, p0

    if-ge v1, v2, :cond_f2

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 100
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_ef

    .line 101
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    :cond_ef
    add-int/lit8 v1, v1, 0x1

    goto :goto_d0

    .line 104
    :cond_f2
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    .line 106
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
