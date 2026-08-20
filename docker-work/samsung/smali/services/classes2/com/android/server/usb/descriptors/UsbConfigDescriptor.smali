.class public final Lcom/android/server/usb/descriptors/UsbConfigDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbConfigDescriptor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbConfigDescriptor"


# instance fields
.field public mAttribs:I

.field public mBlockAudio:Z

.field public mConfigIndex:B

.field public mConfigValue:I

.field public mInterfaceDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxPower:I

.field public mNumInterfaces:B

.field public mTotalLength:I


# direct methods
.method public constructor <init>(IB)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    const/4 p1, 0x2

    .line 51
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    return-void
.end method


# virtual methods
.method public addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAttribs()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mAttribs:I

    return p0
.end method

.method public getConfigIndex()B
    .registers 1

    .line 67
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigIndex:B

    return p0
.end method

.method public getConfigValue()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigValue:I

    return p0
.end method

.method public getMaxPower()I
    .registers 1

    .line 75
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mMaxPower:I

    return p0
.end method

.method public getNumInterfaces()B
    .registers 1

    .line 59
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mNumInterfaces:B

    return p0
.end method

.method public getTotalLength()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mTotalLength:I

    return p0
.end method

.method public final isAudioInterface(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)Z
    .registers 3

    .line 83
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    .line 84
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 3

    .line 116
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mTotalLength:I

    .line 117
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mNumInterfaces:B

    .line 118
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigValue:I

    .line 119
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigIndex:B

    .line 120
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mAttribs:I

    .line 121
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result p1

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mMaxPower:I

    .line 123
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 4

    .line 128
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 130
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->getConfigValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->getNumInterfaces()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Interfaces."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->getAttribs()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method

.method public toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbConfiguration;
    .registers 7

    .line 98
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Landroid/hardware/usb/UsbConfiguration;

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigValue:I

    iget v3, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mAttribs:I

    iget v4, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mMaxPower:I

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 104
    iget-boolean v4, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mBlockAudio:Z

    if-eqz v4, :cond_32

    invoke-virtual {p0, v3}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->isAudioInterface(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 105
    :cond_32
    invoke-virtual {v3, p1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3a
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/usb/UsbInterface;

    .line 109
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/usb/UsbInterface;

    .line 110
    invoke-virtual {v1, p0}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    return-object v1
.end method
