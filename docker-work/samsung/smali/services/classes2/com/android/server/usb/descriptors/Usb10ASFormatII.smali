.class public final Lcom/android/server/usb/descriptors/Usb10ASFormatII;
.super Lcom/android/server/usb/descriptors/UsbASFormat;
.source "Usb10ASFormatII.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Usb10ASFormatII"


# instance fields
.field public mMaxBitRate:I

.field public mSamFreqType:B

.field public mSampleRates:[I

.field public mSamplesPerFrame:I


# direct methods
.method public constructor <init>(IBBBI)V
    .registers 6

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    return-void
.end method


# virtual methods
.method public getMaxBitRate()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mMaxBitRate:I

    return p0
.end method

.method public getSamFreqType()B
    .registers 1

    .line 54
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSamFreqType:B

    return p0
.end method

.method public getSampleRates()[I
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSampleRates:[I

    return-object p0
.end method

.method public getSamplesPerFrame()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSamplesPerFrame:I

    return p0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 6

    .line 63
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mMaxBitRate:I

    .line 64
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSamplesPerFrame:I

    .line 65
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSamFreqType:B

    if-nez v0, :cond_15

    const/4 v0, 0x2

    .line 67
    :cond_15
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSampleRates:[I

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_27

    .line 69
    iget-object v2, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSampleRates:[I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 72
    :cond_27
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 6

    .line 77
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbASFormat;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 79
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max Bit Rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->getMaxBitRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Samples Per Frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->getMaxBitRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->getSamFreqType()B

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->getSampleRates()[I

    move-result-object p0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sample Freq Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    const/4 v1, 0x0

    if-nez v0, :cond_86

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    goto :goto_a1

    :cond_86
    :goto_86
    if-ge v1, v0, :cond_a1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    .line 94
    :cond_a1
    :goto_a1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 96
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
