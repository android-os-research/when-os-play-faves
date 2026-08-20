.class public Lcom/android/server/usb/UsbMidiPacketConverter;
.super Ljava/lang/Object;
.source "UsbMidiPacketConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;,
        Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;
    }
.end annotation


# static fields
.field public static final CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

.field public static final CODE_INDEX_NUMBER_SINGLE_BYTE:B = 0xft

.field public static final CODE_INDEX_NUMBER_SYSEX_END_SINGLE_BYTE:B = 0x5t

.field public static final CODE_INDEX_NUMBER_SYSEX_STARTS_OR_CONTINUES:B = 0x4t

.field public static final FIRST_SYSTEM_MESSAGE_VALUE:B = -0x10t

.field public static final PAYLOAD_SIZE:[I

.field public static final SYSEX_END_EXCLUSIVE:B = -0x9t

.field public static final SYSEX_START_EXCLUSIVE:B = -0x10t


# instance fields
.field public mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

.field public mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetCODE_INDEX_NUMBER_FROM_SYSTEM_TYPE()[I
    .registers 1

    sget-object v0, Lcom/android/server/usb/UsbMidiPacketConverter;->CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPAYLOAD_SIZE()[I
    .registers 1

    sget-object v0, Lcom/android/server/usb/UsbMidiPacketConverter;->PAYLOAD_SIZE:[I

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 27
    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/server/usb/UsbMidiPacketConverter;->PAYLOAD_SIZE:[I

    new-array v0, v0, [I

    .line 48
    fill-array-data v0, :array_36

    sput-object v0, Lcom/android/server/usb/UsbMidiPacketConverter;->CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

    return-void

    nop

    :array_12
    .array-data 4
        -0x1
        -0x1
        0x2
        0x3
        0x3
        0x1
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_36
    .array-data 4
        -0x1
        0x2
        0x3
        0x2
        -0x1
        -0x1
        0x5
        -0x1
        0x5
        -0x1
        0x5
        0x5
        0x5
        -0x1
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;-><init>(Lcom/android/server/usb/UsbMidiPacketConverter;Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder-IA;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    .line 81
    new-array v0, p1, [Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p1, :cond_1e

    .line 83
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    new-instance v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    invoke-direct {v3, p0, v1}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;-><init>(Lcom/android/server/usb/UsbMidiPacketConverter;Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder-IA;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method


# virtual methods
.method public rawMidiToUsbMidi([BII)[B
    .registers 4

    .line 107
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    aget-object p0, p0, p3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->encode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public usbMidiToRawMidi([BI)[B
    .registers 3

    .line 95
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method
