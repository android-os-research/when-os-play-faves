.class public Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;
.super Ljava/lang/Object;
.source "UsbMidiPacketConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiPacketConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbMidiEncoder"
.end annotation


# instance fields
.field public mEmptyBytes:[B

.field public mHasSystemExclusiveStarted:Z

.field public mNumStoredSystemExclusiveBytes:I

.field public mStoredSystemExclusiveBytes:[B

.field public final synthetic this$0:Lcom/android/server/usb/UsbMidiPacketConverter;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbMidiPacketConverter;)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->this$0:Lcom/android/server/usb/UsbMidiPacketConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array v0, p1, [B

    .line 132
    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 134
    iput-boolean v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    new-array p1, p1, [B

    .line 136
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usb/UsbMidiPacketConverter;Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;-><init>(Lcom/android/server/usb/UsbMidiPacketConverter;)V

    return-void
.end method


# virtual methods
.method public encode([BI)[B
    .registers 11

    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :cond_7
    :goto_7
    if-ge v2, p2, :cond_db

    .line 150
    aget-byte v3, p1, v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ltz v3, :cond_30

    .line 151
    iget-boolean v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    if-eqz v6, :cond_2a

    .line 152
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    iget v7, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    aput-byte v3, v6, v7

    add-int/2addr v7, v5

    .line 154
    iput v7, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    if-ne v7, v4, :cond_2d

    const/4 v3, 0x4

    .line 156
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 157
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 158
    iput v1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    goto :goto_2d

    .line 161
    :cond_2a
    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_30
    const/16 v6, -0x9

    if-eq v3, v6, :cond_4b

    .line 167
    iget-boolean v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    if-eqz v3, :cond_4b

    move v3, v1

    .line 169
    :goto_39
    iget v7, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    if-ge v3, v7, :cond_47

    .line 170
    iget-object v7, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    aget-byte v7, v7, v3

    invoke-virtual {p0, v0, v7}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 173
    :cond_47
    iput v1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 174
    iput-boolean v1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 178
    :cond_4b
    aget-byte v3, p1, v2

    const/16 v7, -0x10

    if-ge v3, v7, :cond_79

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    .line 180
    invoke-static {}, Lcom/android/server/usb/UsbMidiPacketConverter;->-$$Nest$sfgetPAYLOAD_SIZE()[I

    move-result-object v4

    aget v4, v4, v3

    add-int v5, v2, v4

    if-gt v5, p2, :cond_6f

    .line 182
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 183
    invoke-virtual {v0, p1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 185
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    rsub-int/lit8 v3, v4, 0x3

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_6d
    move v2, v5

    goto :goto_7

    :cond_6f
    :goto_6f
    if-ge v2, p2, :cond_7

    .line 189
    aget-byte v3, p1, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    :cond_79
    if-ne v3, v7, :cond_84

    .line 194
    iput-boolean v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 195
    iget-object v4, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    aput-byte v3, v4, v1

    .line 196
    iput v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    goto :goto_2d

    :cond_84
    if-ne v3, v6, :cond_a8

    .line 200
    iget v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 202
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    iget v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    aget-byte v7, p1, v2

    aput-byte v7, v3, v6

    add-int/2addr v6, v5

    .line 204
    iput v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 205
    invoke-virtual {v0, v3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 208
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    iget v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 209
    iput-boolean v1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 210
    iput v1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    goto :goto_2d

    :cond_a8
    and-int/lit8 v3, v3, 0xf

    .line 214
    invoke-static {}, Lcom/android/server/usb/UsbMidiPacketConverter;->-$$Nest$sfgetCODE_INDEX_NUMBER_FROM_SYSTEM_TYPE()[I

    move-result-object v4

    aget v3, v4, v3

    if-gez v3, :cond_b9

    .line 216
    aget-byte v3, p1, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    goto/16 :goto_2d

    .line 219
    :cond_b9
    invoke-static {}, Lcom/android/server/usb/UsbMidiPacketConverter;->-$$Nest$sfgetPAYLOAD_SIZE()[I

    move-result-object v4

    aget v4, v4, v3

    add-int v5, v2, v4

    if-gt v5, p2, :cond_d1

    .line 221
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 222
    invoke-virtual {v0, p1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 224
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    rsub-int/lit8 v3, v4, 0x3

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6d

    :cond_d1
    :goto_d1
    if-ge v2, p2, :cond_7

    .line 228
    aget-byte v3, p1, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d1

    .line 235
    :cond_db
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V
    .registers 3

    const/16 p0, 0xf

    .line 239
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 240
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p0, 0x0

    .line 241
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 242
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
