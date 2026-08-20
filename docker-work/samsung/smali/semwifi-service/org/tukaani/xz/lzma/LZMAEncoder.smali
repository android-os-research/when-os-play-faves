.class public abstract Lorg/tukaani/xz/lzma/LZMAEncoder;
.super Lorg/tukaani/xz/lzma/LZMACoder;
.source "LZMAEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;,
        Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALIGN_PRICE_UPDATE_INTERVAL:I = 0x10

.field private static final DIST_PRICE_UPDATE_INTERVAL:I = 0x80

.field private static final LZMA2_COMPRESSED_LIMIT:I = 0xffe6

.field private static final LZMA2_UNCOMPRESSED_LIMIT:I = 0x1ffeef

.field public static final MODE_FAST:I = 0x1

.field public static final MODE_NORMAL:I = 0x2


# instance fields
.field private alignPriceCount:I

.field private final alignPrices:[I

.field back:I

.field private distPriceCount:I

.field private final distSlotPrices:[[I

.field private final distSlotPricesSize:I

.field private final fullDistPrices:[[I

.field final literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

.field final lz:Lorg/tukaani/xz/lz/LZEncoder;

.field final matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

.field final niceLen:I

.field private final rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

.field readAhead:I

.field final repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

.field private uncompressedSize:I


# direct methods
.method static bridge synthetic -$$Nest$fgetrc(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;
    .registers 1

    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;Lorg/tukaani/xz/lz/LZEncoder;IIIII)V
    .registers 12

    .line 177
    const-class v0, I

    invoke-direct {p0, p5}, Lorg/tukaani/xz/lzma/LZMACoder;-><init>(I)V

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    .line 58
    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 62
    fill-array-data v3, :array_5c

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    const/16 v3, 0x10

    new-array v3, v3, [I

    .line 64
    iput-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    .line 66
    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    const/4 v3, -0x1

    .line 67
    iput v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 68
    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    .line 178
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    .line 179
    iput-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 180
    iput p7, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    .line 182
    new-instance p1, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-direct {p1, p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    .line 183
    new-instance p1, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-direct {p1, p0, p5, p7}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 184
    new-instance p1, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-direct {p1, p0, p5, p7}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    const/4 p1, 0x1

    sub-int/2addr p6, p1

    .line 186
    invoke-static {p6}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    new-array p3, v2, [I

    aput p2, p3, p1

    const/4 p1, 0x4

    aput p1, p3, v1

    .line 187
    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    .line 189
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->reset()V

    return-void

    :array_5c
    .array-data 4
        0x4
        0x80
    .end array-data
.end method

.method private encodeInit()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZEncoder;->hasEnoughData(I)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->skip(I)V

    .line 270
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 271
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->encodeInit()V

    .line 273
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 276
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    return v0
.end method

.method private encodeMatch(III)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    .line 322
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->encode(II)V

    .line 324
    invoke-static {p1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result p3

    .line 325
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    invoke-static {p2}, Lorg/tukaani/xz/lzma/LZMACoder;->getDistState(I)I

    move-result p2

    aget-object p2, v1, p2

    invoke-virtual {v0, p2, p3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBitTree([SI)V

    const/4 p2, 0x2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-lt p3, v0, :cond_4e

    ushr-int/lit8 v2, p3, 0x1

    sub-int/2addr v2, v1

    and-int/lit8 v3, p3, 0x1

    or-int/2addr v3, p2

    shl-int/2addr v3, v2

    sub-int v3, p1, v3

    const/16 v4, 0xe

    if-ge p3, v4, :cond_38

    .line 333
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    sub-int/2addr p3, v0

    aget-object p3, v4, p3

    invoke-virtual {v2, p3, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeReverseBitTree([SI)V

    goto :goto_4e

    .line 337
    :cond_38
    iget-object p3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    ushr-int/lit8 v4, v3, 0x4

    sub-int/2addr v2, v0

    invoke-virtual {p3, v4, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeDirectBits(II)V

    .line 339
    iget-object p3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    and-int/lit8 v2, v3, 0xf

    invoke-virtual {p3, v0, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeReverseBitTree([SI)V

    .line 340
    iget p3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    sub-int/2addr p3, v1

    iput p3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    .line 344
    :cond_4e
    :goto_4e
    iget-object p3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v0, 0x3

    aget v2, p3, p2

    aput v2, p3, v0

    .line 345
    aget v0, p3, v1

    aput v0, p3, p2

    const/4 p2, 0x0

    .line 346
    aget v0, p3, p2

    aput v0, p3, v1

    .line 347
    aput p1, p3, p2

    .line 349
    iget p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    return-void
.end method

.method private encodeRepMatch(III)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_25

    .line 355
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 356
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-object v2, v2, v3

    if-ne p2, v1, :cond_20

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    invoke-virtual {p1, v2, p3, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    goto :goto_7a

    .line 358
    :cond_25
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v2, v2, p1

    .line 359
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    if-ne p1, v1, :cond_46

    .line 362
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    invoke-virtual {p1, v3, v4, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    goto :goto_72

    .line 364
    :cond_46
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 365
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    add-int/lit8 v6, p1, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p1, v3, :cond_6c

    .line 368
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v5, p1, v4

    aput v5, p1, v3

    .line 370
    :cond_6c
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v3, p1, v1

    aput v3, p1, v4

    .line 373
    :goto_72
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v3, p1, v0

    aput v3, p1, v1

    .line 374
    aput v2, p1, v0

    :goto_7a
    if-ne p2, v1, :cond_82

    .line 378
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/State;->updateShortRep()V

    goto :goto_8c

    .line 380
    :cond_82
    iget-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {p1, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->encode(II)V

    .line 381
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    :goto_8c
    return-void
.end method

.method private encodeSymbol()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZEncoder;->hasEnoughData(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 286
    :cond_e
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getNextSymbol()I

    move-result v0

    .line 289
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v3}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v3

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    and-int/2addr v3, v4

    .line 291
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_38

    .line 294
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 295
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->encode()V

    goto :goto_72

    .line 298
    :cond_38
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 299
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_5f

    .line 303
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v1, v4, v5, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 304
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    invoke-direct {p0, v1, v0, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeRepMatch(III)V

    goto :goto_72

    .line 308
    :cond_5f
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v7}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v7

    invoke-virtual {v4, v6, v7, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 309
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    sub-int/2addr v1, v5

    invoke-direct {p0, v1, v0, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeMatch(III)V

    .line 313
    :goto_72
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 314
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    return v2
.end method

.method public static getDistSlot(I)I
    .registers 4

    const/4 v0, 0x4

    if-gt p0, v0, :cond_6

    if-ltz p0, :cond_6

    return p0

    :cond_6
    const/16 v0, 0x1f

    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    if-nez v1, :cond_12

    shl-int/lit8 v0, p0, 0x10

    const/16 v1, 0xf

    goto :goto_14

    :cond_12
    move v1, v0

    move v0, p0

    :goto_14
    const/high16 v2, -0x1000000

    and-int/2addr v2, v0

    if-nez v2, :cond_1d

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    :cond_1d
    const/high16 v2, -0x10000000

    and-int/2addr v2, v0

    if-nez v2, :cond_26

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, -0x4

    :cond_26
    const/high16 v2, -0x40000000    # -2.0f

    and-int/2addr v2, v0

    if-nez v2, :cond_2f

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, -0x2

    :cond_2f
    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-nez v0, :cond_36

    add-int/lit8 v1, v1, -0x1

    :cond_36
    shl-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    ushr-int/2addr p0, v1

    and-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static getInstance(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lzma/LZMAEncoder;
    .registers 24

    move/from16 v0, p4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 105
    new-instance v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v0

    .line 111
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 99
    :cond_26
    new-instance v0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v0
.end method

.method public static getMemoryUsage(IIII)I
    .registers 5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 81
    invoke-static {p1, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMemoryUsage(III)I

    move-result p0

    goto :goto_15

    .line 86
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 76
    :cond_11
    invoke-static {p1, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->getMemoryUsage(III)I

    move-result p0

    :goto_15
    add-int/lit8 p0, p0, 0x50

    return p0
.end method

.method private updateAlignPrices()V
    .registers 5

    const/16 v0, 0x10

    .line 511
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_14

    .line 514
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    invoke-static {v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getReverseBitTreePrice([SI)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method

.method private updateDistPrices()V
    .registers 14

    const/16 v0, 0x80

    .line 466
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    const/16 v2, 0xe

    const/4 v3, 0x4

    if-ge v1, v3, :cond_4f

    move v4, v0

    .line 469
    :goto_c
    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    if-ge v4, v5, :cond_21

    .line 470
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    aget-object v6, v6, v1

    .line 471
    invoke-static {v6, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitTreePrice([SI)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 474
    :cond_21
    :goto_21
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    if-ge v2, v4, :cond_3a

    ushr-int/lit8 v4, v2, 0x1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v3

    .line 477
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v5, v5, v1

    aget v6, v5, v2

    .line 478
    invoke-static {v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getDirectBitsPrice(I)I

    move-result v4

    add-int/2addr v6, v4

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3a
    move v2, v0

    :goto_3b
    if-ge v2, v3, :cond_4c

    .line 482
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v5, v5, v1

    aget v5, v5, v2

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4f
    move v1, v3

    move v4, v1

    :goto_51
    if-ge v1, v2, :cond_8c

    ushr-int/lit8 v5, v1, 0x1

    add-int/lit8 v5, v5, -0x1

    and-int/lit8 v6, v1, 0x1

    or-int/lit8 v6, v6, 0x2

    shl-int v5, v6, v5

    .line 492
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    add-int/lit8 v7, v1, -0x4

    aget-object v6, v6, v7

    array-length v6, v6

    move v8, v0

    :goto_65
    if-ge v8, v6, :cond_89

    sub-int v9, v4, v5

    .line 495
    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    aget-object v10, v10, v7

    invoke-static {v10, v9}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getReverseBitTreePrice([SI)I

    move-result v9

    move v10, v0

    :goto_72
    if-ge v10, v3, :cond_84

    .line 500
    iget-object v11, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object v11, v11, v10

    iget-object v12, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v12, v12, v10

    aget v12, v12, v1

    add-int/2addr v12, v9

    aput v12, v11, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_72

    :cond_84
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_65

    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_8c
    return-void
.end method


# virtual methods
.method public encodeForLZMA1()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->isStarted()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeInit()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 223
    :cond_f
    :goto_f
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeSymbol()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_f

    :cond_16
    return-void
.end method

.method public encodeForLZMA2()Z
    .registers 4

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeInit()Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 250
    :cond_10
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    const v2, 0x1ffeef

    if-gt v0, v2, :cond_29

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    .line 251
    invoke-virtual {v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getPendingSize()I

    move-result v0

    const v2, 0xffe6

    if-gt v0, v2, :cond_29

    .line 252
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeSymbol()Z

    move-result v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_2b

    if-nez v0, :cond_10

    return v1

    :cond_29
    const/4 p0, 0x1

    return p0

    .line 255
    :catch_2b
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public encodeLZMA1EndMarker()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v0

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    and-int/2addr v0, v1

    .line 234
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 235
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    const/4 v1, -0x1

    const/4 v2, 0x2

    .line 236
    invoke-direct {p0, v1, v2, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeMatch(III)V

    return-void
.end method

.method getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I
    .registers 3

    .line 398
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    invoke-virtual {p1}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result p1

    aget-object p0, p0, p1

    aget-short p0, p0, p2

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result p0

    return p0
.end method

.method getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I
    .registers 3

    .line 407
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    .line 408
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result p2

    aget-short p0, p0, p2

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public getLZEncoder()Lorg/tukaani/xz/lz/LZEncoder;
    .registers 1

    .line 193
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    return-object p0
.end method

.method getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I
    .registers 6

    .line 440
    invoke-virtual {p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v0

    .line 441
    invoke-virtual {p0, v0, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v0

    .line 442
    invoke-virtual {p0, v0, p1, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result p1

    .line 443
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {p0, p2, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_21

    .line 422
    iget-object p2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v2

    aget-short p2, p2, v2

    invoke-static {p2, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result p2

    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    .line 424
    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result p3

    aget-object p0, p0, p3

    aget-short p0, p0, p4

    .line 423
    invoke-static {p0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result p0

    add-int/2addr p2, p0

    add-int/2addr p1, p2

    goto :goto_5a

    .line 426
    :cond_21
    iget-object p4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v2

    aget-short p4, p4, v2

    invoke-static {p4, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result p4

    add-int/2addr p1, p4

    if-ne p2, v1, :cond_3e

    .line 429
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result p2

    aget-short p0, p0, p2

    invoke-static {p0, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_5a

    .line 431
    :cond_3e
    iget-object p4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v0

    aget-short p4, p4, v0

    invoke-static {p4, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result p4

    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    .line 432
    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result p3

    aget-short p0, p0, p3

    add-int/lit8 p2, p2, -0x2

    invoke-static {p0, p2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result p0

    add-int/2addr p4, p0

    add-int/2addr p1, p4

    :goto_5a
    return p1
.end method

.method getMatchAndLenPrice(IIII)I
    .registers 6

    .line 448
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 449
    invoke-virtual {v0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result p4

    add-int/2addr p1, p4

    .line 450
    invoke-static {p3}, Lorg/tukaani/xz/lzma/LZMACoder;->getDistState(I)I

    move-result p3

    const/16 p4, 0x80

    if-ge p2, p4, :cond_17

    .line 453
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object p0, p0, p3

    aget p0, p0, p2

    add-int/2addr p1, p0

    goto :goto_29

    .line 457
    :cond_17
    invoke-static {p2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result p4

    .line 458
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object p3, v0, p3

    aget p3, p3, p4

    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    and-int/lit8 p2, p2, 0xf

    aget p0, p0, p2

    add-int/2addr p3, p0

    add-int/2addr p1, p3

    :goto_29
    return p1
.end method

.method getMatches()Lorg/tukaani/xz/lz/Matches;
    .registers 2

    .line 386
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 387
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {p0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object p0

    return-object p0
.end method

.method abstract getNextSymbol()I
.end method

.method getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I
    .registers 3

    .line 402
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    .line 403
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result p2

    aget-short p0, p0, p2

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I
    .registers 6

    .line 412
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    .line 413
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    add-int/2addr p1, v0

    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    .line 414
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result p2

    aget-object p0, p0, p2

    aget-short p0, p0, p3

    invoke-static {p0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public getUncompressedSize()I
    .registers 1

    .line 209
    iget p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    return p0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .registers 2

    .line 115
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public reset()V
    .registers 3

    .line 197
    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMACoder;->reset()V

    .line 198
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->reset()V

    .line 199
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->reset()V

    .line 200
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->reset()V

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    .line 202
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    .line 204
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    return-void
.end method

.method public resetUncompressedSize()V
    .registers 2

    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    return-void
.end method

.method skip(I)V
    .registers 3

    .line 393
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 394
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    return-void
.end method

.method updatePrices()V
    .registers 2

    .line 524
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    if-gtz v0, :cond_7

    .line 525
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->updateDistPrices()V

    .line 527
    :cond_7
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    if-gtz v0, :cond_e

    .line 528
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->updateAlignPrices()V

    .line 530
    :cond_e
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->updatePrices()V

    .line 531
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->updatePrices()V

    return-void
.end method
