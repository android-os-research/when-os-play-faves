.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageFormat$Format;
    }
.end annotation


# static fields
.field public static final whitelist DEPTH16:I = 0x44363159

.field public static final whitelist DEPTH_JPEG:I = 0x69656963

.field public static final whitelist DEPTH_POINT_CLOUD:I = 0x101

.field public static final whitelist FLEX_RGBA_8888:I = 0x2a

.field public static final whitelist FLEX_RGB_888:I = 0x29

.field public static final whitelist HEIC:I = 0x48454946

.field public static final whitelist JPEG:I = 0x100

.field public static final whitelist NV16:I = 0x10

.field public static final whitelist NV21:I = 0x11

.field public static final whitelist PRIVATE:I = 0x22

.field public static final whitelist RAW10:I = 0x25

.field public static final whitelist RAW12:I = 0x26

.field public static final greylist-max-o RAW_DEPTH:I = 0x1002

.field public static final blacklist RAW_DEPTH10:I = 0x1003

.field public static final whitelist RAW_PRIVATE:I = 0x24

.field public static final whitelist RAW_SENSOR:I = 0x20

.field public static final whitelist RGB_565:I = 0x4

.field public static final whitelist UNKNOWN:I = 0x0

.field public static final greylist-max-o Y16:I = 0x20363159

.field public static final whitelist Y8:I = 0x20203859

.field public static final whitelist YCBCR_P010:I = 0x36

.field public static final whitelist YUV_420_888:I = 0x23

.field public static final whitelist YUV_422_888:I = 0x27

.field public static final whitelist YUV_444_888:I = 0x28

.field public static final whitelist YUY2:I = 0x14

.field public static final whitelist YV12:I = 0x32315659


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getBitsPerPixel(I)I
    .registers 4
    .param p0, "format"    # I

    .line 800
    const/16 v0, 0x18

    const/16 v1, 0xc

    const/16 v2, 0x10

    sparse-switch p0, :sswitch_data_22

    .line 837
    const/4 v0, -0x1

    return v0

    .line 808
    :sswitch_b
    return v1

    .line 813
    :sswitch_c
    return v2

    .line 810
    :sswitch_d
    const/16 v0, 0x8

    return v0

    .line 830
    :sswitch_10
    return v0

    .line 825
    :sswitch_11
    const/16 v0, 0x20

    return v0

    .line 823
    :sswitch_14
    return v0

    .line 821
    :sswitch_15
    return v0

    .line 819
    :sswitch_16
    return v2

    .line 835
    :sswitch_17
    return v1

    .line 833
    :sswitch_18
    const/16 v0, 0xa

    return v0

    .line 817
    :sswitch_1b
    return v1

    .line 828
    :sswitch_1c
    return v2

    .line 806
    :sswitch_1d
    return v2

    .line 815
    :sswitch_1e
    return v1

    .line 804
    :sswitch_1f
    return v2

    .line 802
    :sswitch_20
    return v2

    nop

    :sswitch_data_22
    .sparse-switch
        0x4 -> :sswitch_20
        0x10 -> :sswitch_1f
        0x11 -> :sswitch_1e
        0x14 -> :sswitch_1d
        0x20 -> :sswitch_1c
        0x23 -> :sswitch_1b
        0x25 -> :sswitch_18
        0x26 -> :sswitch_17
        0x27 -> :sswitch_16
        0x28 -> :sswitch_15
        0x29 -> :sswitch_14
        0x2a -> :sswitch_11
        0x36 -> :sswitch_10
        0x1002 -> :sswitch_1c
        0x1003 -> :sswitch_18
        0x20203859 -> :sswitch_d
        0x20363159 -> :sswitch_c
        0x32315659 -> :sswitch_b
        0x44363159 -> :sswitch_c
    .end sparse-switch
.end method

.method public static greylist-max-o isPublicFormat(I)Z
    .registers 2
    .param p0, "format"    # I

    .line 853
    sparse-switch p0, :sswitch_data_8

    .line 881
    const/4 v0, 0x0

    return v0

    .line 878
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x4 -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x14 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_5
        0x23 -> :sswitch_5
        0x24 -> :sswitch_5
        0x25 -> :sswitch_5
        0x26 -> :sswitch_5
        0x27 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2a -> :sswitch_5
        0x36 -> :sswitch_5
        0x100 -> :sswitch_5
        0x101 -> :sswitch_5
        0x1002 -> :sswitch_5
        0x1003 -> :sswitch_5
        0x20203859 -> :sswitch_5
        0x32315659 -> :sswitch_5
        0x44363159 -> :sswitch_5
        0x48454946 -> :sswitch_5
        0x69656963 -> :sswitch_5
    .end sparse-switch
.end method
