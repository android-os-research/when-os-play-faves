.class public Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbEndpointDescriptor.java"


# static fields
.field public static final DIRECTION_INPUT:I = 0x80

.field public static final DIRECTION_OUTPUT:I = 0x0

.field public static final MASK_ATTRIBS_SYNCTYPE:B = 0xct

.field public static final MASK_ATTRIBS_TRANSTYPE:I = 0x3

.field public static final MASK_ATTRIBS_USEAGE:I = 0x30

.field public static final MASK_ENDPOINT_ADDRESS:I = 0xf

.field public static final MASK_ENDPOINT_DIRECTION:I = -0x80

.field public static final SYNCTYPE_ADAPTSYNC:B = 0x8t

.field public static final SYNCTYPE_ASYNC:B = 0x4t

.field public static final SYNCTYPE_NONE:B = 0x0t

.field public static final SYNCTYPE_RESERVED:B = 0xct

.field public static final TAG:Ljava/lang/String; = "UsbEndpointDescriptor"

.field public static final TRANSTYPE_BULK:I = 0x2

.field public static final TRANSTYPE_CONTROL:I = 0x0

.field public static final TRANSTYPE_INTERRUPT:I = 0x3

.field public static final TRANSTYPE_ISO:I = 0x1

.field public static final USEAGE_DATA:I = 0x0

.field public static final USEAGE_EXPLICIT:I = 0x20

.field public static final USEAGE_FEEDBACK:I = 0x10

.field public static final USEAGE_RESERVED:I = 0x30


# instance fields
.field public mAttributes:I

.field public mEndpointAddress:I

.field public mInterval:I

.field public mPacketSize:I

.field public mRefresh:B

.field public mSyncAddress:B


# direct methods
.method public constructor <init>(IB)V
    .registers 3

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    const/4 p1, 0x4

    .line 84
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    return-void
.end method


# virtual methods
.method public getAttributes()I
    .registers 1

    .line 92
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    return p0
.end method

.method public getDirection()I
    .registers 1

    .line 112
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    and-int/lit8 p0, p0, -0x80

    return p0
.end method

.method public getEndpointAddress()I
    .registers 1

    .line 88
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public getInterval()I
    .registers 1

    .line 100
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    return p0
.end method

.method public getPacketSize()I
    .registers 1

    .line 96
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    return p0
.end method

.method public getRefresh()B
    .registers 1

    .line 104
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mRefresh:B

    return p0
.end method

.method public getSyncAddress()B
    .registers 1

    .line 108
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mSyncAddress:B

    return p0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 4

    .line 130
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    .line 131
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    .line 132
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    .line 133
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    .line 134
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2a

    .line 135
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mRefresh:B

    .line 136
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mSyncAddress:B

    .line 138
    :cond_2a
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 6

    .line 143
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 145
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getEndpointAddress()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v1

    if-nez v1, :cond_24

    const-string v1, " [out]"

    goto :goto_26

    :cond_24
    const-string v1, " [in]"

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getAttributes()I

    move-result v0

    .line 152
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    if-eqz v1, :cond_74

    if-eq v1, v2, :cond_6e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_68

    const/4 v3, 0x3

    if-eq v1, v3, :cond_62

    goto :goto_79

    :cond_62
    const-string v3, "Interrupt"

    .line 165
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_79

    :cond_68
    const-string v3, "Bulk"

    .line 162
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_79

    :cond_6e
    const-string v3, "Iso"

    .line 159
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_79

    :cond_74
    const-string v3, "Control"

    .line 156
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 168
    :goto_79
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    if-ne v1, v2, :cond_d8

    .line 173
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    const-string v1, "Aync: "

    .line 174
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0xc

    if-eqz v1, :cond_9e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_98

    const/16 v2, 0x8

    if-eq v1, v2, :cond_92

    goto :goto_a3

    :cond_92
    const-string v1, "ADAPTIVE ASYNC"

    .line 183
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_a3

    :cond_98
    const-string v1, "ASYNC"

    .line 180
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_a3

    :cond_9e
    const-string v1, "NONE"

    .line 177
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 186
    :goto_a3
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    .line 188
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    const-string v1, "Useage: "

    .line 189
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    const/16 v1, 0x30

    and-int/2addr v0, v1

    if-eqz v0, :cond_d0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_ca

    const/16 v2, 0x20

    if-eq v0, v2, :cond_c4

    if-eq v0, v1, :cond_be

    goto :goto_d5

    :cond_be
    const-string v0, "RESERVED"

    .line 201
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_d5

    :cond_c4
    const-string v0, "EXPLICIT FEEDBACK"

    .line 198
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_d5

    :cond_ca
    const-string v0, "FEEDBACK"

    .line 195
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_d5

    :cond_d0
    const-string v0, "DATA"

    .line 192
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 204
    :goto_d5
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    .line 206
    :cond_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getPacketSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getInterval()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method

.method public toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;
    .registers 5

    .line 125
    new-instance p1, Landroid/hardware/usb/UsbEndpoint;

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    iget p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    return-object p1
.end method
