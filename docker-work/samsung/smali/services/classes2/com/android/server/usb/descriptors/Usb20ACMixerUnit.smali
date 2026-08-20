.class public final Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.source "Usb20ACMixerUnit.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Usb20ACMixerUnit"


# instance fields
.field public mChanConfig:I

.field public mChanNames:B

.field public mControls:[B

.field public mControlsMask:B

.field public mNameID:B


# direct methods
.method public constructor <init>(IBBI)V
    .registers 5

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;-><init>(IBBI)V

    return-void
.end method


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 6

    .line 42
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 44
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mChanConfig:I

    .line 45
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mChanNames:B

    .line 46
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    invoke-static {v0, v1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->calcControlArraySize(II)I

    move-result v0

    .line 47
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mControls:[B

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_29

    .line 49
    iget-object v2, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mControls:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 51
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mControlsMask:B

    .line 52
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mNameID:B

    .line 54
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method
