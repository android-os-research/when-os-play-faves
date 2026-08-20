.class public Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;
.super Ljava/lang/Object;
.source "UsbMidiBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/descriptors/UsbMidiBlockParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupTerminalBlock"
.end annotation


# instance fields
.field public mBlockItem:I

.field public mDescriptorSubtype:I

.field public mDescriptorType:I

.field public mGroupBlockId:I

.field public mGroupTerminal:I

.field public mGroupTerminalBlockType:I

.field public mLength:I

.field public mMaxInputBandwidth:I

.field public mMaxOutputBandwidth:I

.field public mMidiProtocol:I

.field public mNumGroupTerminals:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 8

    .line 83
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 85
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mLength:I

    const-string v0, "length"

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 86
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorType:I

    const-string v0, "descriptor_type"

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 88
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorSubtype:I

    const-string v0, "descriptor_subtype"

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 90
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupBlockId:I

    const-string v0, "group_block_id"

    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 91
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminalBlockType:I

    const-string v0, "group_terminal_block_type"

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 93
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminal:I

    const-string v0, "group_terminal"

    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 95
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mNumGroupTerminals:I

    const-string v0, "num_group_terminals"

    const-wide v1, 0x10500000007L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 97
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mBlockItem:I

    const-string v0, "block_item"

    const-wide v1, 0x10500000008L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 98
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    const-string v0, "midi_protocol"

    const-wide v1, 0x10500000009L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 99
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxInputBandwidth:I

    const-string v0, "max_input_bandwidth"

    const-wide v1, 0x1050000000aL

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 101
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxOutputBandwidth:I

    const-string p4, "max_output_bandwidth"

    const-wide v0, 0x1050000000bL

    invoke-virtual {p1, p4, v0, v1, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 104
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 3

    .line 65
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mLength:I

    .line 66
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorType:I

    .line 67
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorSubtype:I

    .line 68
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupBlockId:I

    .line 69
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminalBlockType:I

    .line 70
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminal:I

    .line 71
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mNumGroupTerminals:I

    .line 72
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mBlockItem:I

    .line 73
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    .line 74
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxInputBandwidth:I

    .line 75
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result p1

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxOutputBandwidth:I

    .line 76
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mLength:I

    return p0
.end method
