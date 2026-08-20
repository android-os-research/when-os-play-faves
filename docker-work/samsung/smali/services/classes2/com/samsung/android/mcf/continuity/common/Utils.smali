.class public Lcom/samsung/android/mcf/continuity/common/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HEX_ARRAY:[C


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/continuity/common/Utils;->HEX_ARRAY:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .registers 7
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    if-nez p0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_2b

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static bytesToInt([B)I
    .registers 4
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_f

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    return v1
.end method

.method public static bytesToLong([B)J
    .registers 8
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x8

    if-ge v2, v3, :cond_12

    shl-long/2addr v0, v3

    aget-byte v3, p0, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return-wide v0
.end method

.method public static createBundle()Landroid/os/Bundle;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public static createIntent()Landroid/content/Intent;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public static createJSONObject()Lorg/json/JSONObject;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    new-array p0, p0, [B

    aput-byte v0, p0, v0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    :goto_11
    if-ge v0, v1, :cond_32

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_11

    :cond_32
    return-object v2
.end method

.method public static intToBytes(I)[B
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    :goto_4
    if-ltz v1, :cond_10

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_10
    return-object v0
.end method

.method public static isMac(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_18

    :cond_9
    const-string v0, "^([0-9a-fA-F][0-9a-fA-F]:){5}([0-9a-fA-F][0-9a-fA-F])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public static longToBytes(J)[B
    .registers 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x7

    :goto_5
    if-ltz v2, :cond_12

    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    shr-long/2addr p0, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_12
    return-object v1
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 7
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_27

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/samsung/android/mcf/continuity/common/Utils;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_27
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
