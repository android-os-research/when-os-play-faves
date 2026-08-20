.class public final Lcom/android/server/usb/UsbDirectMidiDevice;
.super Ljava/lang/Object;
.source "UsbDirectMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;
    }
.end annotation


# static fields
.field public static final BULK_TRANSFER_TIMEOUT_MILLISECONDS:I = 0xa

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "UsbDirectMidiDevice"

.field public static final THREAD_JOIN_TIMEOUT_MILLISECONDS:I = 0xc8


# instance fields
.field public final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field public mContext:Landroid/content/Context;

.field public mDefaultMidiProtocol:I

.field public mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field public mInputUsbEndpoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;>;"
        }
    .end annotation
.end field

.field public mIsOpen:Z

.field public final mIsUniversalMidiDevice:Z

.field public final mLock:Ljava/lang/Object;

.field public mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

.field public final mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

.field public mName:Ljava/lang/String;

.field public final mNumInputs:I

.field public final mNumOutputs:I

.field public mOutputUsbEndpoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;>;"
        }
    .end annotation
.end field

.field public mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

.field public mServer:Landroid/media/midi/MidiDeviceServer;

.field public mServerAvailable:Z

.field public final mShouldCallSetInterface:Z

.field public mThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field public final mUniqueUsbDeviceIdentifier:Ljava/lang/String;

.field public mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field public mUsbDeviceConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/UsbDeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public mUsbInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public mUsbMidiPacketConverter:Lcom/android/server/usb/UsbMidiPacketConverter;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usb/UsbDirectMidiDevice;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsbMidiPacketConverter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/UsbMidiPacketConverter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbMidiPacketConverter:Lcom/android/server/usb/UsbMidiPacketConverter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcloseLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->closeLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mopenLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->openLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDirectMidiDevice;->swapEndiannessPerWord([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)V
    .registers 12

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    invoke-direct {v0}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    .line 101
    new-instance v1, Lcom/android/server/usb/UsbDirectMidiDevice$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDirectMidiDevice$1;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 183
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 184
    iput-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 185
    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUniqueUsbDeviceIdentifier:Ljava/lang/String;

    .line 186
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 190
    invoke-virtual {p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateMidiInterfaceDescriptorsCount()I

    move-result p1

    const/4 p4, 0x0

    if-le p1, v0, :cond_2c

    move p1, v0

    goto :goto_2d

    :cond_2c
    move p1, p4

    :goto_2d
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mShouldCallSetInterface:Z

    if-eqz p3, :cond_36

    .line 194
    invoke-virtual {p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findUniversalMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_3a

    .line 196
    :cond_36
    invoke-virtual {p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findLegacyMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object p1

    .line 199
    :goto_3a
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    .line 200
    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result p2

    const-string v1, "UsbDirectMidiDevice"

    if-lez p2, :cond_a2

    .line 205
    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p2, p4}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object p2

    move v2, p4

    .line 206
    :goto_52
    invoke-virtual {p2}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v3

    if-ge v2, v3, :cond_80

    .line 208
    invoke-virtual {p2, v2}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 209
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 210
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v5, v6}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v6

    .line 211
    invoke-virtual {p0, v3, v6}, Lcom/android/server/usb/UsbDirectMidiDevice;->areEquivalent(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbInterface;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 212
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 218
    :cond_80
    iget-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result p1

    if-le p1, v0, :cond_a2

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping some USB configurations. Count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 220
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    move p1, p4

    move p2, p1

    move v0, p2

    .line 227
    :goto_a5
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_d3

    .line 228
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move v3, p4

    .line 229
    :goto_b6
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v4

    if-ge v3, v4, :cond_d0

    .line 232
    invoke-virtual {v2, v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v4

    if-eqz v4, :cond_cd

    .line 236
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v4

    if-nez v4, :cond_cb

    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    :cond_cb
    add-int/lit8 p2, p2, 0x1

    :cond_cd
    :goto_cd
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    :cond_d0
    add-int/lit8 p1, p1, 0x1

    goto :goto_a5

    .line 246
    :cond_d3
    iput p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    .line 247
    iput v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created UsbDirectMidiDevice with "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " inputs and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " outputs. isUniversalMidiDevice: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-array p1, v0, [Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    :goto_ff
    if-ge p4, v0, :cond_10e

    .line 256
    iget-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    new-instance p2, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy-IA;)V

    aput-object p2, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_ff

    :cond_10e
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)Lcom/android/server/usb/UsbDirectMidiDevice;
    .registers 6

    .line 171
    new-instance v0, Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbDirectMidiDevice;-><init>(Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)V

    .line 173
    invoke-virtual {v0, p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->register(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_17

    .line 174
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-string p0, "UsbDirectMidiDevice"

    const-string p1, "createDeviceServer failed"

    .line 175
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_17
    return-object v0
.end method

.method public static logByteArray(Ljava/lang/String;[BII)V
    .registers 9

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move p0, p2

    :goto_6
    add-int v1, p2, p3

    if-ge p0, v1, :cond_2b

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 657
    aget-byte v4, p1, p0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "0x%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    array-length v2, p1

    sub-int/2addr v2, v1

    if-eq p0, v2, :cond_28

    const-string v1, ", "

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    .line 662
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsbDirectMidiDevice"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final areEquivalent(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbInterface;)Z
    .registers 8

    .line 690
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_98

    .line 691
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v0

    if-ne p0, v0, :cond_98

    .line 692
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    if-ne p0, v0, :cond_98

    .line 693
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v0

    if-ne p0, v0, :cond_98

    .line 694
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v0

    if-ne p0, v0, :cond_98

    .line 695
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    if-eq p0, v0, :cond_3e

    goto :goto_98

    .line 699
    :cond_3e
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4b

    .line 700
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5a

    return v1

    .line 703
    :cond_4b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    return v1

    :cond_5a
    move p0, v1

    .line 708
    :goto_5b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    if-ge p0, v0, :cond_96

    .line 709
    invoke-virtual {p1, p0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    .line 710
    invoke-virtual {p2, p0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    .line 711
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v4

    if-ne v3, v4, :cond_95

    .line 712
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v4

    if-ne v3, v4, :cond_95

    .line 713
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v4

    if-ne v3, v4, :cond_95

    .line 714
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v2

    if-eq v0, v2, :cond_92

    goto :goto_95

    :cond_92
    add-int/lit8 p0, p0, 0x1

    goto :goto_5b

    :cond_95
    :goto_95
    return v1

    :cond_96
    const/4 p0, 0x1

    return p0

    :cond_98
    :goto_98
    return v1
.end method

.method public final calculateDefaultMidiProtocol()I
    .registers 10

    .line 261
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    move v2, v1

    .line 263
    :goto_c
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_68

    .line 264
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move v5, v1

    move v6, v5

    move v7, v6

    .line 267
    :goto_20
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v8

    if-ge v5, v8, :cond_3c

    if-eqz v6, :cond_2a

    if-nez v7, :cond_3c

    .line 271
    :cond_2a
    invoke-virtual {v3, v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v8

    if-eqz v8, :cond_39

    .line 275
    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v8

    if-nez v8, :cond_38

    move v7, v4

    goto :goto_39

    :cond_38
    move v6, v4

    :cond_39
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_3c
    if-eqz v6, :cond_65

    if-eqz v7, :cond_65

    .line 288
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    .line 289
    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v3, v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    .line 290
    invoke-virtual {p0, v5, v4}, Lcom/android/server/usb/UsbDirectMidiDevice;->updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v5

    if-nez v5, :cond_53

    goto :goto_65

    .line 293
    :cond_53
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    .line 294
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getInterfaceNumber()I

    move-result v0

    .line 295
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getAlternateSetting()B

    move-result v1

    .line 293
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->calculateMidiType(Landroid/hardware/usb/UsbDeviceConnection;II)I

    move-result p0

    .line 297
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    return p0

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_68
    const-string p0, "UsbDirectMidiDevice"

    const-string v0, "Cannot find interface with both input and output endpoints"

    .line 302
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    if-eqz v1, :cond_a

    .line 588
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->closeLocked()V

    :cond_a
    const/4 v1, 0x0

    .line 590
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    .line 591
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_16

    .line 593
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz p0, :cond_15

    .line 594
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 591
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final closeLocked()V
    .registers 6

    const-string v0, "UsbDirectMidiDevice"

    const-string v1, "closeLocked()"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    if-eqz v2, :cond_d

    .line 604
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_d

    .line 609
    :cond_1f
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    if-eqz v2, :cond_25

    const-wide/16 v3, 0xc8

    .line 612
    :try_start_35
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_25

    :catch_39
    const-string/jumbo v1, "thread join interrupted"

    .line 614
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    const/4 v0, 0x0

    .line 619
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    .line 621
    :goto_44
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    array-length v3, v3

    if-ge v2, v3, :cond_5a

    .line 622
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 623
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 625
    :cond_5a
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 627
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDeviceConnection;

    .line 628
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    goto :goto_62

    .line 630
    :cond_72
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 631
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 632
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 634
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbMidiPacketConverter:Lcom/android/server/usb/UsbMidiPacketConverter;

    .line 636
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 8

    .line 725
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 727
    iget p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    const-string v0, "num_inputs"

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 728
    iget p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    const-string v0, "num_outputs"

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 729
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    const-string v0, "is_universal"

    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 730
    iget-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mName:Ljava/lang/String;

    const-string v0, "name"

    const-wide v1, 0x10900000004L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 731
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz p4, :cond_44

    .line 732
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    const-wide v0, 0x10b00000005L

    const-string p4, "block_parser"

    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 735
    :cond_44
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final openLocked()Z
    .registers 14

    const-string v0, "UsbDirectMidiDevice"

    const-string/jumbo v1, "openLocked()"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 313
    new-instance v1, Lcom/android/server/usb/UsbMidiPacketConverter;

    iget v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    invoke-direct {v1, v2}, Lcom/android/server/usb/UsbMidiPacketConverter;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbMidiPacketConverter:Lcom/android/server/usb/UsbMidiPacketConverter;

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 318
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    .line 320
    :goto_39
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_ad

    .line 321
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 322
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 323
    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move v6, v1

    .line 324
    :goto_54
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v7

    if-ge v6, v7, :cond_7c

    .line 327
    invoke-virtual {v5, v6}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v7

    if-eqz v7, :cond_79

    .line 331
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v8

    if-nez v8, :cond_70

    .line 332
    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v7, v8}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 334
    :cond_70
    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v7, v8}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    :goto_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 339
    :cond_7c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_aa

    .line 340
    :cond_88
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v6}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v6

    .line 341
    iget-object v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v5, v7}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    .line 342
    invoke-virtual {p0, v5, v6}, Lcom/android/server/usb/UsbDirectMidiDevice;->updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v5

    if-nez v5, :cond_9b

    goto :goto_aa

    .line 345
    :cond_9b
    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    :goto_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 351
    :cond_ad
    iget v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    new-array v0, v0, [Lcom/android/internal/midi/MidiEventScheduler;

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    move v0, v1

    .line 353
    :goto_b4
    iget v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    if-ge v0, v2, :cond_cf

    .line 354
    new-instance v2, Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {v2}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    .line 355
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aput-object v2, v3, v0

    .line 356
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    .line 359
    :cond_cf
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v0

    move v2, v1

    move v9, v2

    .line 363
    :goto_d7
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v9, v3, :cond_132

    move v11, v1

    move v10, v2

    .line 366
    :goto_e1
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_12e

    .line 368
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 369
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/hardware/usb/UsbDeviceConnection;

    .line 370
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 371
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/hardware/usb/UsbEndpoint;

    .line 374
    new-instance v12, Lcom/android/server/usb/UsbDirectMidiDevice$2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbDirectMidiDevice input thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v12

    move-object v3, p0

    move-object v7, v0

    move v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbDirectMidiDevice$2;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[Landroid/media/midi/MidiReceiver;I)V

    .line 445
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 446
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_e1

    :cond_12e
    add-int/lit8 v9, v9, 0x1

    move v2, v10

    goto :goto_d7

    :cond_132
    move v0, v1

    move v2, v0

    .line 453
    :goto_134
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_190

    move v3, v1

    .line 456
    :goto_13d
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_18d

    .line 458
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 459
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/hardware/usb/UsbDeviceConnection;

    .line 460
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 461
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/hardware/usb/UsbEndpoint;

    .line 463
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v7, v4, v2

    .line 465
    new-instance v11, Lcom/android/server/usb/UsbDirectMidiDevice$3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsbDirectMidiDevice output thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v11

    move-object v5, p0

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/usb/UsbDirectMidiDevice$3;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;ILandroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)V

    .line 523
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 524
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_13d

    :cond_18d
    add-int/lit8 v0, v0, 0x1

    goto :goto_134

    :cond_190
    const/4 v0, 0x1

    .line 529
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    return v0
.end method

.method public final register(Landroid/content/Context;)Z
    .registers 12

    .line 534
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    .line 535
    const-class v0, Landroid/media/midi/MidiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/media/midi/MidiManager;

    const/4 p1, 0x0

    if-nez v0, :cond_16

    const-string p0, "UsbDirectMidiDevice"

    const-string v0, "No MidiManager in UsbDirectMidiDevice.register()"

    .line 537
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 541
    :cond_16
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v1, :cond_21

    .line 542
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->calculateDefaultMidiProtocol()I

    move-result v1

    iput v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    goto :goto_24

    :cond_21
    const/4 v1, -0x1

    .line 544
    iput v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    .line 547
    :goto_24
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 548
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v1

    .line 549
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    .line 550
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_64

    .line 552
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_64

    :cond_44
    if-eqz v2, :cond_62

    .line 554
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4d

    goto :goto_62

    .line 557
    :cond_4d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_65

    :cond_62
    :goto_62
    move-object v4, v1

    goto :goto_65

    :cond_64
    :goto_64
    move-object v4, v2

    .line 559
    :goto_65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUniqueUsbDeviceIdentifier:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 560
    iget-boolean v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v6, :cond_91

    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " MIDI 2.0"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a2

    .line 563
    :cond_91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " MIDI 1.0"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 565
    :goto_a2
    iput-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mName:Ljava/lang/String;

    const-string v6, "name"

    .line 566
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "manufacturer"

    .line 567
    invoke-virtual {v5, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "product"

    .line 568
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    .line 569
    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 571
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "serial_number"

    .line 570
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    const-string/jumbo v2, "usb_device"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v9, 0x1

    .line 574
    iput-boolean v9, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    .line 575
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    iget v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    invoke-virtual/range {v0 .. v8}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez v0, :cond_e5

    return p1

    :cond_e5
    return v9
.end method

.method public final swapEndiannessPerWord([BI)[B
    .registers 8

    and-int/lit8 p0, p2, 0x3

    if-eqz p0, :cond_1b

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "size not multiple of 4: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbDirectMidiDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    sub-int p0, p2, p0

    .line 644
    new-array p0, p0, [B

    const/4 v0, 0x0

    :goto_20
    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_3b

    .line 646
    aget-byte v2, p1, v1

    aput-byte v2, p0, v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x2

    .line 647
    aget-byte v4, p1, v3

    aput-byte v4, p0, v2

    .line 648
    aget-byte v2, p1, v2

    aput-byte v2, p0, v3

    .line 649
    aget-byte v2, p1, v0

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x4

    goto :goto_20

    :cond_3b
    return-object p0
.end method

.method public final updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z
    .registers 7

    const/4 v0, 0x0

    const-string v1, "UsbDirectMidiDevice"

    if-nez p1, :cond_b

    const-string p0, "Usb Interface is null"

    .line 668
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    if-nez p2, :cond_13

    const-string p0, "UsbDeviceConnection is null"

    .line 672
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_13
    const/4 v2, 0x1

    .line 675
    invoke-virtual {p2, p1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-nez v3, :cond_20

    const-string p0, "Can\'t claim interface"

    .line 676
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 679
    :cond_20
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mShouldCallSetInterface:Z

    if-eqz p0, :cond_30

    .line 680
    invoke-virtual {p2, p1}, Landroid/hardware/usb/UsbDeviceConnection;->setInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result p0

    if-nez p0, :cond_35

    const-string p0, "Can\'t set interface"

    .line 681
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_30
    const-string p0, "no alternate interface"

    .line 684
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_35
    return v2
.end method
