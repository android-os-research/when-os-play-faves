.class final Lorg/brotli/dec/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field static final LOOKUP:[I

.field private static final UTF_MAP:Ljava/lang/String; = "         !!  !                  \"#$##%#$&\'##(#)#++++++++++((&*\'##,---,---,-----,-----,-----&#\'###.///.///./////./////./////&#\'# "

.field private static final UTF_RLE:Ljava/lang/String; = "A/*  \':  & : $  \u0081 @"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x800

    new-array v0, v0, [I

    .line 14
    sput-object v0, Lorg/brotli/dec/Context;->LOOKUP:[I

    const-string v1, "         !!  !                  \"#$##%#$&\'##(#)#++++++++++((&*\'##,---,---,-----,-----,-----&#\'###.///.///./////./////./////&#\'# "

    const-string v2, "A/*  \':  & : $  \u0081 @"

    .line 56
    invoke-static {v0, v1, v2}, Lorg/brotli/dec/Context;->unpackLookupTable([ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static unpackLookupTable([ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x100

    if-ge v1, v2, :cond_1b

    and-int/lit8 v2, v1, 0x3f

    .line 23
    aput v2, p0, v1

    add-int/lit16 v2, v1, 0x200

    shr-int/lit8 v3, v1, 0x2

    .line 24
    aput v3, p0, v2

    add-int/lit16 v2, v1, 0x700

    shr-int/lit8 v3, v1, 0x6

    add-int/lit8 v3, v3, 0x2

    .line 25
    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    move v1, v0

    :goto_1c
    const/16 v3, 0x80

    if-ge v1, v3, :cond_2f

    add-int/lit16 v3, v1, 0x400

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    mul-int/lit8 v4, v4, 0x4

    aput v4, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2f
    move p1, v0

    :goto_30
    const/16 v1, 0x40

    if-ge p1, v1, :cond_43

    add-int/lit16 v1, p1, 0x480

    and-int/lit8 v3, p1, 0x1

    .line 32
    aput v3, p0, v1

    add-int/lit16 v1, p1, 0x4c0

    add-int/lit8 v3, v3, 0x2

    .line 33
    aput v3, p0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    :cond_43
    const/16 p1, 0x500

    move v1, v0

    :goto_46
    const/16 v3, 0x13

    if-ge v1, v3, :cond_60

    and-int/lit8 v3, v1, 0x3

    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    move v5, v0

    :goto_53
    if-ge v5, v4, :cond_5d

    add-int/lit8 v6, p1, 0x1

    .line 40
    aput v3, p0, p1

    add-int/lit8 v5, v5, 0x1

    move p1, v6

    goto :goto_53

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_60
    move p1, v0

    :goto_61
    const/16 p2, 0x10

    if-ge p1, p2, :cond_72

    add-int/lit16 p2, p1, 0x700

    const/4 v1, 0x1

    .line 45
    aput v1, p0, p2

    add-int/lit16 p2, p1, 0x7f0

    const/4 v1, 0x6

    .line 46
    aput v1, p0, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_61

    :cond_72
    const/16 p1, 0x700

    .line 48
    aput v0, p0, p1

    const/16 p1, 0x7ff

    const/4 p2, 0x7

    .line 49
    aput p2, p0, p1

    :goto_7b
    if-ge v0, v2, :cond_8a

    add-int/lit16 p1, v0, 0x600

    add-int/lit16 p2, v0, 0x700

    .line 51
    aget p2, p0, p2

    shl-int/lit8 p2, p2, 0x3

    aput p2, p0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    :cond_8a
    return-void
.end method
