.class Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;
.super Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;
.source "LZMAEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMAEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LengthEncoder"
.end annotation


# static fields
.field private static final PRICE_UPDATE_INTERVAL:I = 0x20


# instance fields
.field private final counters:[I

.field private final prices:[[I

.field final synthetic this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;


# direct methods
.method constructor <init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V
    .registers 6

    .line 670
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-direct {p0, p1}, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;-><init>(Lorg/tukaani/xz/lzma/LZMACoder;)V

    const/4 p1, 0x1

    shl-int p2, p1, p2

    .line 672
    new-array v0, p2, [I

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->counters:[I

    const/4 v0, 0x2

    sub-int/2addr p3, v0

    add-int/2addr p3, p1

    const/16 v1, 0x10

    .line 677
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    new-array v0, v0, [I

    aput p3, v0, p1

    const/4 p1, 0x0

    aput p2, v0, p1

    .line 679
    const-class p1, I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->prices:[[I

    return-void
.end method

.method private updatePrices(I)V
    .registers 11

    .line 727
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->choice:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    move v2, v1

    :goto_a
    const/16 v3, 0x8

    if-ge v2, v3, :cond_20

    .line 731
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->prices:[[I

    aget-object v3, v3, p1

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->low:[[S

    aget-object v4, v4, p1

    .line 732
    invoke-static {v4, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitTreePrice([SI)I

    move-result v4

    add-int/2addr v4, v0

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 734
    :cond_20
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->choice:[S

    aget-short v0, v0, v1

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    .line 735
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->choice:[S

    aget-short v5, v5, v4

    invoke-static {v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    :goto_31
    const/16 v5, 0x10

    if-ge v2, v5, :cond_4b

    .line 738
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->prices:[[I

    aget-object v5, v5, p1

    add-int v6, v0, v1

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->mid:[[S

    aget-object v7, v7, p1

    add-int/lit8 v8, v2, -0x8

    .line 739
    invoke-static {v7, v8}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitTreePrice([SI)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 742
    :cond_4b
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->choice:[S

    aget-short v1, v1, v4

    invoke-static {v1, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    .line 744
    :goto_53
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->prices:[[I

    aget-object v4, v4, p1

    array-length v5, v4

    if-ge v2, v5, :cond_6b

    add-int v5, v0, v1

    .line 745
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->high:[S

    add-int/lit8 v7, v2, -0x8

    sub-int/2addr v7, v3

    .line 746
    invoke-static {v6, v7}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitTreePrice([SI)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_6b
    return-void
.end method


# virtual methods
.method encode(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, -0x2

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_21

    .line 695
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->-$$Nest$fgetrc(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v0

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->choice:[S

    invoke-virtual {v0, v3, v1, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 696
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->-$$Nest$fgetrc(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->low:[[S

    aget-object v1, v1, p2

    invoke-virtual {v0, v1, p1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBitTree([SI)V

    goto :goto_60

    .line 698
    :cond_21
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->-$$Nest$fgetrc(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v3

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->choice:[S

    invoke-virtual {v3, v4, v1, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    add-int/lit8 p1, p1, -0x8

    if-ge p1, v0, :cond_49

    .line 702
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->-$$Nest$fgetrc(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v0

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->choice:[S

    invoke-virtual {v0, v3, v2, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 703
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->-$$Nest$fgetrc(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->mid:[[S

    aget-object v1, v1, p2

    invoke-virtual {v0, v1, p1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBitTree([SI)V

    goto :goto_60

    .line 705
    :cond_49
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->-$$Nest$fgetrc(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->choice:[S

    invoke-virtual {v1, v3, v2, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 706
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->-$$Nest$fgetrc(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->high:[S

    sub-int/2addr p1, v0

    invoke-virtual {v1, v3, p1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBitTree([SI)V

    .line 710
    :goto_60
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->counters:[I

    aget p1, p0, p2

    sub-int/2addr p1, v2

    aput p1, p0, p2

    return-void
.end method

.method getPrice(II)I
    .registers 3

    .line 714
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->prices:[[I

    aget-object p0, p0, p2

    add-int/lit8 p1, p1, -0x2

    aget p0, p0, p1

    return p0
.end method

.method reset()V
    .registers 5

    .line 683
    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->reset()V

    const/4 v0, 0x0

    move v1, v0

    .line 687
    :goto_5
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->counters:[I

    array-length v3, v2

    if-ge v1, v3, :cond_f

    .line 688
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    return-void
.end method

.method updatePrices()V
    .registers 4

    const/4 v0, 0x0

    .line 718
    :goto_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->counters:[I

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 719
    aget v2, v1, v0

    if-gtz v2, :cond_11

    const/16 v2, 0x20

    .line 720
    aput v2, v1, v0

    .line 721
    invoke-direct {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->updatePrices(I)V

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method
