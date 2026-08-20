.class public Lcom/android/server/usb/descriptors/UsbMidiBlockParser;
.super Ljava/lang/Object;
.source "UsbMidiBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;
    }
.end annotation


# static fields
.field public static final CS_GR_TRM_BLOCK:I = 0x26

.field public static final DEFAULT_MIDI_TYPE:I = 0x1

.field public static final GR_TRM_BLOCK_HEADER:I = 0x1

.field public static final MIDI_BLOCK_HEADER_SIZE:I = 0x5

.field public static final MIDI_BLOCK_SIZE:I = 0xd

.field public static final REQ_GET_DESCRIPTOR:I = 0x6

.field public static final REQ_TIMEOUT_MS:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "UsbMidiBlockParser"


# instance fields
.field public mGroupTerminalBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;",
            ">;"
        }
    .end annotation
.end field

.field public mHeaderDescriptorSubtype:I

.field public mHeaderDescriptorType:I

.field public mHeaderLength:I

.field public mTotalLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public calculateMidiType(Landroid/hardware/usb/UsbDeviceConnection;II)I
    .registers 19

    move-object v0, p0

    const-string v1, "UsbMidiBlockParser"

    const/4 v2, 0x5

    new-array v2, v2, [B

    const/16 v4, 0x81

    const/4 v5, 0x6

    move/from16 v3, p3

    add-int/lit16 v11, v3, 0x2600

    const/4 v9, 0x5

    const/16 v10, 0x7d0

    const/4 v14, 0x1

    move-object/from16 v3, p1

    move v6, v11

    move/from16 v7, p2

    move-object v8, v2

    .line 151
    :try_start_17
    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    if-lez v3, :cond_e4

    aget-byte v3, v2, v14

    const/16 v4, 0x26

    if-eq v3, v4, :cond_3a

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect descriptor type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v2, v14

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_3a
    const/4 v3, 0x2

    aget-byte v4, v2, v3

    if-eq v4, v14, :cond_56

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect descriptor subtype: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_56
    const/4 v3, 0x3

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x4

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int v12, v3, v2

    if-gtz v12, :cond_7b

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsed a non-positive block terminal size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    .line 175
    :cond_7b
    new-array v2, v12, [B

    const/16 v7, 0x81

    const/4 v8, 0x6

    const/16 v13, 0x7d0

    move-object/from16 v6, p1

    move v9, v11

    move/from16 v10, p2

    move-object v11, v2

    .line 176
    invoke-virtual/range {v6 .. v13}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    if-lez v3, :cond_ce

    .line 186
    new-instance v3, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v3, v2}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 187
    invoke-virtual {p0, v3}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 188
    iget-object v2, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a4

    const-string v0, "Group Terminal Blocks failed parsing: 1"

    .line 189
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    .line 192
    :cond_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIDI protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    iget v3, v3, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    iget v0, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    return v0

    .line 196
    :cond_ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "second transfer failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 199
    :cond_e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first transfer failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_f8} :catch_f9

    goto :goto_ff

    :catch_f9
    move-exception v0

    const-string v2, "Can not communicate with USB device"

    .line 202
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ff
    return v14
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 8

    .line 211
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 213
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderLength:I

    const-string v0, "length"

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 214
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorType:I

    const-string v0, "descriptor_type"

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 216
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorSubtype:I

    const-string v0, "descriptor_subtype"

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 218
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mTotalLength:I

    const-string/jumbo v0, "total_length"

    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 219
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    const-wide v0, 0x20b00000005L

    const-string v2, "block"

    .line 220
    invoke-virtual {p4, p1, v2, v0, v1}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_3b

    .line 223
    :cond_52
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 4

    .line 121
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderLength:I

    .line 122
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorType:I

    .line 123
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorSubtype:I

    .line 124
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mTotalLength:I

    .line 126
    :goto_18
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    const/16 v1, 0xd

    if-lt v0, v1, :cond_2e

    .line 127
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    invoke-direct {v0}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;-><init>()V

    .line 128
    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 129
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 132
    :cond_2e
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mTotalLength:I

    return p0
.end method
