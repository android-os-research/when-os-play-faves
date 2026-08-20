.class public final Lorg/brotli/wrapper/enc/Encoder$Parameters;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/wrapper/enc/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field private lgwin:I

.field private quality:I


# direct methods
.method static bridge synthetic -$$Nest$fgetlgwin(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I
    .registers 1

    iget p0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetquality(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I
    .registers 1

    iget p0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    .line 30
    iput v0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    return-void
.end method

.method private constructor <init>(Lorg/brotli/wrapper/enc/Encoder$Parameters;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    .line 30
    iput v0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    .line 35
    iget v0, p1, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    iput v0, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    .line 36
    iget p1, p1, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    iput p1, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    return-void
.end method


# virtual methods
.method public setQuality(I)Lorg/brotli/wrapper/enc/Encoder$Parameters;
    .registers 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_a

    const/16 v0, 0xb

    if-gt p1, v0, :cond_a

    .line 46
    iput p1, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->quality:I

    return-object p0

    .line 44
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "quality should be in range [0, 11], or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWindow(I)Lorg/brotli/wrapper/enc/Encoder$Parameters;
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    const/16 v0, 0xa

    if-lt p1, v0, :cond_c

    const/16 v0, 0x18

    if-gt p1, v0, :cond_c

    goto :goto_14

    .line 55
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lgwin should be in range [10, 24], or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_14
    :goto_14
    iput p1, p0, Lorg/brotli/wrapper/enc/Encoder$Parameters;->lgwin:I

    return-object p0
.end method
