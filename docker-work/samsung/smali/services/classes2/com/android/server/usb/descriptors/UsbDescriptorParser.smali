.class public final Lcom/android/server/usb/descriptors/UsbDescriptorParser;
.super Ljava/lang/Object;
.source "UsbDescriptorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DESCRIPTORS_ALLOC_SIZE:I = 0x80

.field public static final IN_HEADSET_TRIGGER:F = 0.75f

.field public static final MS_MIDI_1_0:I = 0x100

.field public static final MS_MIDI_2_0:I = 0x200

.field public static final OUT_HEADSET_TRIGGER:F = 0.75f

.field public static final TAG:Ljava/lang/String; = "UsbDescriptorParser"


# instance fields
.field public mACInterfacesSpec:I

.field public mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

.field public mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

.field public final mDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeviceAddr:Ljava/lang/String;

.field public mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

.field public mVCInterfacesSpec:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 47
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 52
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    .line 59
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 47
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 52
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    .line 70
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->parseDescriptors([B)V

    return-void
.end method

.method private native getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native getRawDescriptors_native(Ljava/lang/String;)[B
.end method


# virtual methods
.method public final allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->resetReadCount()V

    .line 131
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 132
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    .line 134
    invoke-static {v1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->logDescriptorName(BI)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_f0

    const/4 v4, 0x2

    const-string v5, "UsbDescriptorParser"

    if-eq v1, v4, :cond_d6

    const/4 v4, 0x4

    if-eq v1, v4, :cond_bc

    const/4 v4, 0x5

    if-eq v1, v4, :cond_a4

    const/16 v4, 0xb

    if-eq v1, v4, :cond_9e

    const/16 v4, 0x21

    if-eq v1, v4, :cond_98

    const/16 v4, 0x24

    const/16 v6, 0x10

    const/16 v7, 0xe

    if-eq v1, v4, :cond_6f

    const/16 v4, 0x25

    if-eq v1, v4, :cond_33

    goto/16 :goto_f7

    .line 231
    :cond_33
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_f7

    .line 232
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    if-eq v4, v2, :cond_65

    if-eq v4, v7, :cond_5b

    if-eq v4, v6, :cond_f7

    .line 264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  Unparsed Class-specific Endpoint:0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 264
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f7

    .line 246
    :cond_5b
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    .line 251
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/usb/descriptors/UsbVCEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IBB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v3

    goto/16 :goto_f7

    .line 235
    :cond_65
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    .line 240
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IBB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v3

    goto/16 :goto_f7

    .line 198
    :cond_6f
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_f7

    .line 199
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    if-eq v4, v2, :cond_8a

    if-eq v4, v7, :cond_84

    if-eq v4, v6, :cond_f7

    const-string p0, "  Unparsed Class-specific"

    .line 224
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f7

    .line 214
    :cond_84
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbVCInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v3

    goto/16 :goto_f7

    .line 202
    :cond_8a
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v3

    .line 203
    instance-of p1, v3, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz p1, :cond_f7

    .line 204
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {p0, v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->setMidiHeaderInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptor;)V

    goto :goto_f7

    .line 184
    :cond_98
    new-instance v3, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;-><init>(IB)V

    goto :goto_f7

    .line 191
    :cond_9e
    new-instance v3, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;-><init>(IB)V

    goto :goto_f7

    .line 168
    :cond_a4
    new-instance v3, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;-><init>(IB)V

    .line 169
    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz p1, :cond_b1

    .line 170
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    goto :goto_f7

    :cond_b1
    const-string p1, "Endpoint Descriptor found with no associated Interface Descriptor!"

    .line 173
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_bc
    new-instance v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;-><init>(IB)V

    iput-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 158
    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    if-eqz p1, :cond_cb

    .line 159
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    goto :goto_f7

    :cond_cb
    const-string p1, "Interface Descriptor found with no associated Config Descriptor!"

    .line 161
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_d6
    new-instance v3, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;-><init>(IB)V

    iput-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 147
    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz p1, :cond_e5

    .line 148
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    goto :goto_f7

    :cond_e5
    const-string p1, "Config Descriptor found with no associated Device Descriptor!"

    .line 150
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_f0
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;-><init>(IB)V

    iput-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    :cond_f7
    :goto_f7
    if-nez v3, :cond_fe

    .line 277
    new-instance v3, Lcom/android/server/usb/descriptors/UsbUnknown;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbUnknown;-><init>(IB)V

    :cond_fe
    return-object v3
.end method

.method public calculateMidiInterfaceDescriptorsCount()I
    .registers 5

    const/4 v0, 0x1

    .line 774
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 775
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 777
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v2, :cond_32

    .line 778
    check-cast v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 779
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 781
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getMidiHeaderInterfaceDescriptor()Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 783
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v2, :cond_a

    .line 784
    check-cast v1, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 791
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined Audio Class Interface l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " t:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbDescriptorParser"

    .line 791
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_5d
    return v0
.end method

.method public containsLegacyMidiDeviceEndpoint()Z
    .registers 2

    .line 690
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findLegacyMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object v0

    .line 691
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public containsUniversalMidiDeviceEndpoint()Z
    .registers 2

    .line 681
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findUniversalMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object v0

    .line 682
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    move v2, v1

    .line 701
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 703
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move v4, p0

    .line 704
    :goto_11
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v5

    if-ge v4, v5, :cond_29

    .line 707
    invoke-virtual {v3, v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v5

    .line 709
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v5

    if-nez v5, :cond_24

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_24
    add-int/lit8 v2, v2, 0x1

    :goto_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2c
    if-gtz v1, :cond_30

    if-lez v2, :cond_31

    :cond_30
    const/4 p0, 0x1

    :cond_31
    return p0
.end method

.method public findLegacyMidiInterfaceDescriptors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x100

    .line 730
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 739
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 743
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 745
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v2, :cond_3d

    .line 746
    check-cast v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 747
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    .line 749
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getMidiHeaderInterfaceDescriptor()Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 751
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v3, :cond_e

    .line 752
    check-cast v2, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 754
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;->getMidiStreamingClass()I

    move-result v2

    if-ne v2, p1, :cond_e

    .line 755
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 761
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined Audio Class Interface l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " t:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbDescriptorParser"

    .line 761
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_68
    return-object v0
.end method

.method public findUniversalMidiInterfaceDescriptors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x200

    .line 723
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getACInterfaceDescriptors(BI)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 424
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_b

    .line 426
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v2, :cond_36

    .line 427
    move-object v2, v1

    check-cast v2, Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 428
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v3

    if-ne v3, p1, :cond_b

    .line 429
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v2

    if-ne v2, p2, :cond_b

    .line 430
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 433
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized Audio Interface len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " type:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbDescriptorParser"

    .line 433
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_61
    return-object v0
.end method

.method public getACInterfaceSpec()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return p0
.end method

.method public getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    return-object p0
.end method

.method public getDescriptorString(I)Ljava/lang/String;
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptors()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDescriptors(B)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 389
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    if-ne v2, p1, :cond_b

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public getDeviceAddr()Ljava/lang/String;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    .registers 1

    .line 284
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    return-object p0
.end method

.method public getInputHeadsetProbability()F
    .registers 4

    .line 802
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 809
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMic()Z

    move-result v0

    .line 812
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasSpeaker()Z

    move-result v2

    if-eqz v0, :cond_16

    if-eqz v2, :cond_16

    const/high16 v1, 0x3f400000    # 0.75f

    :cond_16
    if-eqz v0, :cond_21

    .line 818
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result p0

    if-eqz p0, :cond_21

    const/high16 p0, 0x3e800000    # 0.25f

    add-float/2addr v1, p0

    :cond_21
    return v1
.end method

.method public getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 403
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    .line 404
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v2, :cond_2f

    .line 405
    move-object v2, v1

    check-cast v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 406
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v2

    if-ne v2, p1, :cond_b

    .line 407
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 410
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized Interface l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " t:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbDescriptorParser"

    .line 410
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_5a
    return-object v0
.end method

.method public getOutputHeadsetProbability()F
    .registers 8

    .line 839
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 849
    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v2

    .line 851
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 852
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v5, :cond_3f

    .line 853
    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 854
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x301

    if-eq v5, v6, :cond_3d

    .line 855
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x302

    if-eq v5, v6, :cond_3d

    .line 857
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v4

    const/16 v5, 0x402

    if-ne v4, v5, :cond_13

    :cond_3d
    move v0, v3

    goto :goto_6a

    .line 862
    :cond_3f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Output terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UsbDescriptorParser"

    .line 862
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_6a
    :goto_6a
    if-eqz v0, :cond_6e

    const/high16 v1, 0x3f400000    # 0.75f

    :cond_6e
    if-eqz v0, :cond_79

    .line 871
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result p0

    if-eqz p0, :cond_79

    const/high16 p0, 0x3e800000    # 0.25f

    add-float/2addr v1, p0

    :cond_79
    return v1
.end method

.method public getParsingSpec()I
    .registers 1

    .line 360
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getRawDescriptors()[B
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors_native(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getUsbSpec()I
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz p0, :cond_9

    .line 87
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result p0

    return p0

    .line 89
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getVCInterfaceSpec()I
    .registers 1

    .line 106
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    return p0
.end method

.method public hasAudioCapture()Z
    .registers 2

    const/4 v0, 0x2

    .line 610
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(I)Z

    move-result p0

    return p0
.end method

.method public hasAudioInterface()Z
    .registers 2

    const/4 v0, 0x1

    .line 578
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 579
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public hasAudioPlayback()Z
    .registers 2

    const/4 v0, 0x3

    .line 603
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(I)Z

    move-result p0

    return p0
.end method

.method public hasAudioTerminal(I)Z
    .registers 5

    .line 586
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 587
    instance-of v1, v0, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v1, :cond_6

    .line 588
    check-cast v0, Lcom/android/server/usb/descriptors/UsbACInterface;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 590
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v0

    if-ne v0, p1, :cond_6

    return v2

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public hasHIDInterface()Z
    .registers 2

    const/4 v0, 0x3

    .line 642
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 643
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasInput()Z
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 452
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object p0

    .line 455
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 456
    instance-of v2, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v2, :cond_2b

    .line 457
    check-cast v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 459
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    const/16 v2, 0x100

    if-eq v0, v2, :cond_a

    const/16 v2, 0x300

    if-eq v0, v2, :cond_a

    goto :goto_57

    .line 471
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined Audio Input terminal l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " t:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UsbDescriptorParser"

    .line 471
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_56
    const/4 v1, 0x0

    :goto_57
    return v1
.end method

.method public hasMIDIInterface()Z
    .registers 5

    const/4 v0, 0x1

    .line 660
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 661
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 663
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v2, :cond_23

    .line 664
    check-cast v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 665
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    return v0

    .line 669
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined Audio Class Interface l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " t:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbDescriptorParser"

    .line 669
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_4e
    const/4 p0, 0x0

    return p0
.end method

.method public hasMic()Z
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 526
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object p0

    .line 528
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 529
    instance-of v2, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v2, :cond_3d

    .line 530
    check-cast v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 531
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v2

    const/16 v3, 0x201

    if-eq v2, v3, :cond_69

    .line 532
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v2

    const/16 v3, 0x402

    if-eq v2, v3, :cond_69

    .line 533
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v2

    const/16 v3, 0x400

    if-eq v2, v3, :cond_69

    .line 534
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v0

    const/16 v2, 0x603

    if-ne v0, v2, :cond_a

    goto :goto_69

    .line 539
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined Audio Input terminal l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " t:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UsbDescriptorParser"

    .line 539
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_68
    const/4 v1, 0x0

    :cond_69
    :goto_69
    return v1
.end method

.method public hasOutput()Z
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 490
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object p0

    .line 493
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 494
    instance-of v2, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v2, :cond_2b

    .line 495
    check-cast v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 497
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    const/16 v2, 0x100

    if-eq v0, v2, :cond_a

    const/16 v2, 0x200

    if-eq v0, v2, :cond_a

    goto :goto_57

    .line 509
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined Audio Input terminal l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " t:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UsbDescriptorParser"

    .line 509
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_56
    const/4 v1, 0x0

    :goto_57
    return v1
.end method

.method public hasSpeaker()Z
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 553
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object p0

    .line 555
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 556
    instance-of v2, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v2, :cond_35

    .line 557
    check-cast v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 558
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v2

    const/16 v3, 0x301

    if-eq v2, v3, :cond_61

    .line 559
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v2

    const/16 v3, 0x302

    if-eq v2, v3, :cond_61

    .line 560
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v0

    const/16 v2, 0x402

    if-ne v0, v2, :cond_a

    goto :goto_61

    .line 565
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined Audio Output terminal l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " t:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UsbDescriptorParser"

    .line 565
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_60
    const/4 v1, 0x0

    :cond_61
    :goto_61
    return v1
.end method

.method public hasStorageInterface()Z
    .registers 2

    const/16 v0, 0x8

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 652
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasVideoCapture()Z
    .registers 2

    .line 617
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 618
    instance-of v0, v0, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public hasVideoPlayback()Z
    .registers 2

    .line 629
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 630
    instance-of v0, v0, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isDock()Z
    .registers 4

    .line 895
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_68

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_68

    :cond_e
    const/4 v0, 0x3

    const/4 v2, 0x1

    .line 900
    invoke-virtual {p0, v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object p0

    .line 903
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v2, :cond_1b

    return v1

    .line 907
    :cond_1b
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v0, :cond_32

    .line 908
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 909
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result p0

    const/16 v0, 0x602

    if-ne p0, v0, :cond_68

    return v2

    .line 913
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined Audio Output terminal l: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " t:0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsbDescriptorParser"

    .line 913
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    :goto_68
    return v1
.end method

.method public isInputHeadset()Z
    .registers 2

    .line 832
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInputHeadsetProbability()F

    move-result p0

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isOutputHeadset()Z
    .registers 2

    .line 885
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getOutputHeadsetProbability()F

    move-result p0

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public parseDescriptors([B)V
    .registers 10

    const-string v0, "UsbDescriptorParser"

    .line 295
    new-instance v1, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 296
    :cond_7
    :goto_7
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result p1

    if-lez p1, :cond_b6

    const/4 p1, 0x0

    .line 299
    :try_start_e
    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v2

    const-string v3, "Exception allocating USB descriptor."

    .line 301
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    if-eqz p1, :cond_7

    .line 307
    :try_start_1b
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 310
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_21} :catch_2a
    .catchall {:try_start_1b .. :try_end_21} :catchall_27

    .line 335
    :goto_21
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_27
    move-exception v0

    goto/16 :goto_b0

    :catch_2a
    move-exception v2

    .line 313
    :try_start_2b
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception parsing USB descriptors. type:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 323
    array-length v3, v2
    :try_end_57
    .catchall {:try_start_2b .. :try_end_57} :catchall_27

    const-string v4, " @ "

    const-string v5, "  class:"

    if-lez v3, :cond_82

    .line 324
    :try_start_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v6

    .line 325
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_82
    array-length v3, v2

    const/4 v6, 0x1

    if-le v3, v6, :cond_aa

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v6

    .line 329
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    const/4 v2, 0x4

    .line 333
    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->setStatus(I)V
    :try_end_ae
    .catchall {:try_start_5d .. :try_end_ae} :catchall_27

    goto/16 :goto_21

    .line 335
    :goto_b0
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    throw v0

    :cond_b6
    return-void
.end method

.method public setACInterfaceSpec(I)V
    .registers 2

    .line 94
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return-void
.end method

.method public setVCInterfaceSpec(I)V
    .registers 2

    .line 102
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    return-void
.end method

.method public toAndroidUsbDeviceBuilder()Landroid/hardware/usb/UsbDevice$Builder;
    .registers 3

    .line 371
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    const-string v1, "UsbDescriptorParser"

    if-nez v0, :cond_e

    const-string/jumbo p0, "toAndroidUsbDevice() ERROR - No Device Descriptor"

    .line 372
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 376
    :cond_e
    invoke-virtual {v0, p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbDevice$Builder;

    move-result-object p0

    if-nez p0, :cond_1a

    const-string/jumbo v0, "toAndroidUsbDevice() ERROR Creating Device"

    .line 378
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-object p0
.end method
