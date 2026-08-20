.class public abstract Lcom/android/server/usb/descriptors/UsbVCInterface;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbVCInterface.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbVCInterface"

.field public static final VCI_EXTENSION_UNIT:B = 0x6t

.field public static final VCI_INPUT_TERMINAL:B = 0x2t

.field public static final VCI_OUTPUT_TERMINAL:B = 0x3t

.field public static final VCI_PROCESSING_UNIT:B = 0x5t

.field public static final VCI_SELECTOR_UNIT:B = 0x4t

.field public static final VCI_UNDEFINED:B = 0x0t

.field public static final VCI_VEADER:B = 0x1t


# instance fields
.field public final mSubtype:B


# direct methods
.method public constructor <init>(IBB)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 42
    iput-byte p3, p0, Lcom/android/server/usb/descriptors/UsbVCInterface;->mSubtype:B

    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 6

    .line 50
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4c

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown Video Class Interface subtype: 0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsbVCInterface"

    .line 107
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 98
    :pswitch_26
    new-instance p0, Lcom/android/server/usb/descriptors/UsbVCProcessingUnit;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCProcessingUnit;-><init>(IBB)V

    return-object p0

    .line 92
    :pswitch_2c
    new-instance p0, Lcom/android/server/usb/descriptors/UsbVCSelectorUnit;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCSelectorUnit;-><init>(IBB)V

    return-object p0

    .line 86
    :pswitch_32
    new-instance p0, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;-><init>(IBB)V

    return-object p0

    .line 80
    :pswitch_38
    new-instance p0, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;-><init>(IBB)V

    return-object p0

    .line 68
    :pswitch_3e
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->setVCInterfaceSpec(I)V

    .line 73
    new-instance p0, Lcom/android/server/usb/descriptors/UsbVCHeader;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/server/usb/descriptors/UsbVCHeader;-><init>(IBBI)V

    return-object p0

    :pswitch_4b
    return-object v1

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_4b
    .end packed-switch
.end method
