.class public Landroid/text/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# static fields
.field public static greylist-max-o CANCEL_TAG:I

.field public static greylist-max-o COMBINING_ENCLOSING_KEYCAP:I

.field public static greylist-max-o VARIATION_SELECTOR_16:I

.field public static greylist-max-o ZERO_WIDTH_JOINER:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    const/16 v0, 0x20e3

    sput v0, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    .line 29
    const/16 v0, 0x200d

    sput v0, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    .line 31
    const v0, 0xfe0f

    sput v0, Landroid/text/Emoji;->VARIATION_SELECTOR_16:I

    .line 33
    const v0, 0xe007f

    sput v0, Landroid/text/Emoji;->CANCEL_TAG:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o isEmoji(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 85
    invoke-static {p0}, Landroid/text/Emoji;->isNewEmoji(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x39

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public static greylist-max-o isEmojiModifier(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 46
    const/16 v0, 0x3b

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isEmojiModifierBase(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 60
    const v0, 0x1f91d

    if-eq p0, v0, :cond_12

    const v0, 0x1f93c

    if-ne p0, v0, :cond_b

    goto :goto_12

    .line 65
    :cond_b
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0

    .line 61
    :cond_12
    :goto_12
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist-max-o isKeycapBase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 90
    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_13

    :cond_8
    const/16 v0, 0x23

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static greylist-max-o isNewEmoji(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 75
    const v0, 0x1f6dc

    if-eq p0, v0, :cond_58

    const v0, 0x1fa75

    if-gt v0, p0, :cond_f

    const v0, 0x1fa77

    if-le p0, v0, :cond_58

    :cond_f
    const v0, 0x1fa87

    if-gt v0, p0, :cond_19

    const v0, 0x1fa88

    if-le p0, v0, :cond_58

    :cond_19
    const v0, 0x1faad

    if-gt v0, p0, :cond_23

    const v0, 0x1faaf

    if-le p0, v0, :cond_58

    :cond_23
    const v0, 0x1fabb

    if-gt v0, p0, :cond_2d

    const v0, 0x1fabd

    if-le p0, v0, :cond_58

    :cond_2d
    const v0, 0x1fabf

    if-eq p0, v0, :cond_58

    const v0, 0x1face

    if-gt v0, p0, :cond_3c

    const v0, 0x1facf

    if-le p0, v0, :cond_58

    :cond_3c
    const v0, 0x1fada

    if-gt v0, p0, :cond_46

    const v0, 0x1fadb

    if-le p0, v0, :cond_58

    :cond_46
    const v0, 0x1fae8

    if-eq p0, v0, :cond_58

    const v0, 0x1faf7

    if-gt v0, p0, :cond_56

    const v0, 0x1faf8

    if-gt p0, v0, :cond_56

    goto :goto_58

    :cond_56
    const/4 v0, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v0, 0x1

    :goto_59
    return v0
.end method

.method public static greylist-max-o isRegionalIndicatorSymbol(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 39
    const v0, 0x1f1e6

    if-gt v0, p0, :cond_c

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static greylist-max-o isTagSpecChar(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 99
    const v0, 0xe0020

    if-gt v0, p0, :cond_c

    const v0, 0xe007e

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
