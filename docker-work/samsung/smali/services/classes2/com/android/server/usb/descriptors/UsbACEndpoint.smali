.class public abstract Lcom/android/server/usb/descriptors/UsbACEndpoint;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbACEndpoint.java"


# static fields
.field public static final MS_GENERAL:B = 0x1t

.field public static final MS_GENERAL_2_0:B = 0x2t

.field public static final TAG:Ljava/lang/String; = "UsbACEndpoint"


# instance fields
.field public final mSubclass:I

.field public final mSubtype:B


# direct methods
.method public constructor <init>(IBIB)V
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 37
    iput p3, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubclass:I

    .line 38
    iput-byte p4, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubtype:B

    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IBB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 9

    .line 56
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_56

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "UsbACEndpoint"

    if-eq p0, v2, :cond_2d

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown Audio Class Endpoint id:0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2d
    if-eq p3, v0, :cond_50

    if-eq p3, v1, :cond_4a

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown Midi Endpoint id:0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 79
    :cond_4a
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;-><init>(IBIB)V

    return-object v0

    .line 77
    :cond_50
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;-><init>(IBIB)V

    return-object v0

    .line 69
    :cond_56
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;-><init>(IBIB)V

    return-object v0

    .line 63
    :cond_5c
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;-><init>(IBIB)V

    return-object v0
.end method


# virtual methods
.method public getSubclass()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubclass:I

    return p0
.end method

.method public getSubtype()B
    .registers 1

    .line 46
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubtype:B

    return p0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 2

    .line 51
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method
