.class Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;
.super Ljava/lang/Object;
.source "FormatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipartKey"
.end annotation


# instance fields
.field private hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>([Ljava/lang/Object;)V
    .registers 2

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 243
    iget-object p0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    check-cast p1, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;

    iget-object p1, p1, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 6

    .line 251
    iget v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    if-nez v0, :cond_1b

    .line 253
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v2, v1, :cond_19

    aget-object v4, v0, v2

    if-eqz v4, :cond_16

    mul-int/lit8 v3, v3, 0x7

    .line 255
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 258
    :cond_19
    iput v3, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    .line 260
    :cond_1b
    iget p0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    return p0
.end method
