.class public final Lcom/android/server/usb/descriptors/UsbACSelectorUnit;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbACSelectorUnit.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbACSelectorUnit"


# instance fields
.field public mNameIndex:B

.field public mNumPins:B

.field public mSourceIDs:[B

.field public mUnitID:B


# direct methods
.method public constructor <init>(IBBI)V
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    return-void
.end method


# virtual methods
.method public getNameIndex()B
    .registers 1

    .line 52
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNameIndex:B

    return p0
.end method

.method public getNumPins()B
    .registers 1

    .line 44
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    return p0
.end method

.method public getSourceIDs()[B
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mSourceIDs:[B

    return-object p0
.end method

.method public getUnitID()B
    .registers 1

    .line 40
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mUnitID:B

    return p0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 5

    .line 57
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mUnitID:B

    .line 58
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    .line 59
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mSourceIDs:[B

    const/4 v0, 0x0

    .line 60
    :goto_11
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    if-ge v0, v1, :cond_20

    .line 61
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mSourceIDs:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 63
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNameIndex:B

    .line 65
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method
