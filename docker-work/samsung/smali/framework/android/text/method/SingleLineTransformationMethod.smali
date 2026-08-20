.class public Landroid/text/method/SingleLineTransformationMethod;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "SingleLineTransformationMethod.java"


# static fields
.field private static greylist-max-o ORIGINAL:[C

.field private static greylist-max-o REPLACEMENT:[C

.field private static greylist-max-o sInstance:Landroid/text/method/SingleLineTransformationMethod;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 26
    const/4 v0, 0x2

    new-array v1, v0, [C

    fill-array-data v1, :array_10

    sput-object v1, Landroid/text/method/SingleLineTransformationMethod;->ORIGINAL:[C

    .line 27
    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Landroid/text/method/SingleLineTransformationMethod;->REPLACEMENT:[C

    return-void

    :array_10
    .array-data 2
        0xas
        0xds
    .end array-data

    :array_16
    .array-data 2
        0x20s
        -0x101s
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/SingleLineTransformationMethod;
    .registers 1

    .line 45
    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->sInstance:Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v0, :cond_5

    .line 46
    return-object v0

    .line 48
    :cond_5
    new-instance v0, Landroid/text/method/SingleLineTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/SingleLineTransformationMethod;->sInstance:Landroid/text/method/SingleLineTransformationMethod;

    .line 49
    return-object v0
.end method


# virtual methods
.method protected whitelist getOriginal()[C
    .registers 2

    .line 33
    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->ORIGINAL:[C

    return-object v0
.end method

.method protected whitelist getReplacement()[C
    .registers 2

    .line 41
    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->REPLACEMENT:[C

    return-object v0
.end method
