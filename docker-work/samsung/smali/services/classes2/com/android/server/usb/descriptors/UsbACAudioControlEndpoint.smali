.class public Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;
.super Lcom/android/server/usb/descriptors/UsbACEndpoint;
.source "UsbACAudioControlEndpoint.java"


# static fields
.field public static final ADDRESSMASK_DIRECTION:B = -0x80t

.field public static final ADDRESSMASK_ENDPOINT:B = 0xft

.field public static final ATTRIBMASK_TRANS:B = 0x3t

.field public static final ATTRIBSMASK_SYNC:B = 0xct

.field public static final TAG:Ljava/lang/String; = "UsbACAudioControlEndpoint"


# instance fields
.field public mAddress:B

.field public mAttribs:B

.field public mInterval:B

.field public mMaxPacketSize:I


# direct methods
.method public constructor <init>(IBIB)V
    .registers 5

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACEndpoint;-><init>(IBIB)V

    return-void
.end method


# virtual methods
.method public getAddress()B
    .registers 1

    .line 46
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAddress:B

    return p0
.end method

.method public getAttribs()B
    .registers 1

    .line 50
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAttribs:B

    return p0
.end method

.method public getInterval()B
    .registers 1

    .line 58
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mInterval:B

    return p0
.end method

.method public getMaxPacketSize()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mMaxPacketSize:I

    return p0
.end method

.method public bridge synthetic getSubclass()I
    .registers 1

    .line 23
    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubclass()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSubtype()B
    .registers 1

    .line 23
    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubtype()B

    move-result p0

    return p0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 3

    .line 63
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 65
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAddress:B

    .line 66
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAttribs:B

    .line 67
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mMaxPacketSize:I

    .line 68
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mInterval:B

    .line 70
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method
