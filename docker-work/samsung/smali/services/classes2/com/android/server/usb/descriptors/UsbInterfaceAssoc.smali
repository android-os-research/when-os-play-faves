.class public final Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbInterfaceAssoc.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbInterfaceAssoc"


# instance fields
.field public mFirstInterface:B

.field public mFunction:B

.field public mFunctionClass:B

.field public mFunctionProtocol:B

.field public mFunctionSubClass:B

.field public mInterfaceCount:B


# direct methods
.method public constructor <init>(IB)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    return-void
.end method


# virtual methods
.method public getFirstInterface()B
    .registers 1

    .line 41
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFirstInterface:B

    return p0
.end method

.method public getFunction()B
    .registers 1

    .line 61
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunction:B

    return p0
.end method

.method public getFunctionClass()B
    .registers 1

    .line 49
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionClass:B

    return p0
.end method

.method public getFunctionProtocol()B
    .registers 1

    .line 57
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionProtocol:B

    return p0
.end method

.method public getFunctionSubClass()B
    .registers 1

    .line 53
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionSubClass:B

    return p0
.end method

.method public getInterfaceCount()B
    .registers 1

    .line 45
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mInterfaceCount:B

    return p0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 3

    .line 66
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFirstInterface:B

    .line 67
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mInterfaceCount:B

    .line 68
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionClass:B

    .line 69
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionSubClass:B

    .line 70
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionProtocol:B

    .line 71
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunction:B

    .line 73
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method
