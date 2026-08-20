.class Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;
.super Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
.source "LZMAEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMAEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiteralEncoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final subencoders:[Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;

.field final synthetic this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V
    .registers 5

    .line 538
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    .line 539
    invoke-direct {p0, p1, p2, p3}, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;-><init>(Lorg/tukaani/xz/lzma/LZMACoder;II)V

    add-int/2addr p2, p3

    const/4 p1, 0x1

    shl-int/2addr p1, p2

    .line 541
    new-array p1, p1, [Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->subencoders:[Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;

    const/4 p1, 0x0

    .line 542
    :goto_d
    iget-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->subencoders:[Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;

    array-length p3, p2

    if-ge p1, p3, :cond_1d

    .line 543
    new-instance p3, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder-IA;)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1d
    return-void
.end method


# virtual methods
.method encode()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget v0, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 562
    invoke-virtual {v1}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget v2, v2, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v1, v2

    .line 561
    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->getSubcoderIndex(II)I

    move-result v0

    .line 563
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->subencoders:[Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->encode()V

    return-void
.end method

.method encodeInit()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->subencoders:[Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->encode()V

    return-void
.end method

.method getPrice(IIIILorg/tukaani/xz/lzma/State;)I
    .registers 8

    .line 568
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v0, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    .line 569
    invoke-virtual {p5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget v1, v1, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    and-int/2addr v1, p4

    aget-short v0, v0, v1

    const/4 v1, 0x0

    .line 568
    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    .line 571
    invoke-virtual {p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->getSubcoderIndex(II)I

    move-result p3

    .line 572
    invoke-virtual {p5}, Lorg/tukaani/xz/lzma/State;->isLiteral()Z

    move-result p4

    if-eqz p4, :cond_29

    .line 573
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->subencoders:[Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;

    aget-object p0, p0, p3

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->getNormalPrice(I)I

    move-result p0

    goto :goto_31

    .line 574
    :cond_29
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->subencoders:[Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;

    aget-object p0, p0, p3

    invoke-virtual {p0, p1, p2}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->getMatchedPrice(II)I

    move-result p0

    :goto_31
    add-int/2addr v0, p0

    return v0
.end method

.method reset()V
    .registers 4

    const/4 v0, 0x0

    .line 547
    :goto_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->subencoders:[Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 548
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method
