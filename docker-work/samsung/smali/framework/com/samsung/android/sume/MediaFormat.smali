.class public Lcom/samsung/android/sume/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "MediaFormat"


# instance fields
.field private blacklist colorFormat:Lcom/samsung/android/sume/ColorFormat;

.field private blacklist dataType:Lcom/samsung/android/sume/DataType;

.field private blacklist mediaType:Lcom/samsung/android/sume/MediaType;

.field private blacklist shape:Lcom/samsung/android/sume/Shape;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Lcom/samsung/android/sume/MediaFormat$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/MediaFormat$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/MediaFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 13
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 14
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 15
    new-instance v0, Lcom/samsung/android/sume/Shape;

    invoke-direct {v0}, Lcom/samsung/android/sume/Shape;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 17
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 13
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 14
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 15
    new-instance v0, Lcom/samsung/android/sume/Shape;

    invoke-direct {v0}, Lcom/samsung/android/sume/Shape;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 74
    const-class v0, Lcom/samsung/android/sume/MediaType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 75
    const-class v0, Lcom/samsung/android/sume/DataType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 76
    const-class v0, Lcom/samsung/android/sume/ColorFormat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 77
    const-class v0, Lcom/samsung/android/sume/Shape;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Shape;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/MediaType;II)V
    .registers 6
    .param p1, "mediaType"    # Lcom/samsung/android/sume/MediaType;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 13
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 14
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 15
    new-instance v0, Lcom/samsung/android/sume/Shape;

    invoke-direct {v0}, Lcom/samsung/android/sume/Shape;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 57
    invoke-virtual {v0, p2}, Lcom/samsung/android/sume/Shape;->setCols(I)Lcom/samsung/android/sume/Shape;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/sume/Shape;->setRows(I)Lcom/samsung/android/sume/Shape;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Shape;->setBatch(I)Lcom/samsung/android/sume/Shape;

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/MediaType;IILcom/samsung/android/sume/ColorFormat;)V
    .registers 7
    .param p1, "mediaType"    # Lcom/samsung/android/sume/MediaType;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "colorFormat"    # Lcom/samsung/android/sume/ColorFormat;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 13
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 14
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 15
    new-instance v0, Lcom/samsung/android/sume/Shape;

    invoke-direct {v0}, Lcom/samsung/android/sume/Shape;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 62
    iput-object p4, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 63
    invoke-virtual {v0, p2}, Lcom/samsung/android/sume/Shape;->setCols(I)Lcom/samsung/android/sume/Shape;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/sume/Shape;->setRows(I)Lcom/samsung/android/sume/Shape;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Shape;->setBatch(I)Lcom/samsung/android/sume/Shape;

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/MediaType;IILcom/samsung/android/sume/DataType;Lcom/samsung/android/sume/ColorFormat;)V
    .registers 8
    .param p1, "mediaType"    # Lcom/samsung/android/sume/MediaType;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dataType"    # Lcom/samsung/android/sume/DataType;
    .param p5, "colorFormat"    # Lcom/samsung/android/sume/ColorFormat;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 13
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 14
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 15
    new-instance v0, Lcom/samsung/android/sume/Shape;

    invoke-direct {v0}, Lcom/samsung/android/sume/Shape;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 68
    iput-object p4, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 69
    iput-object p5, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 70
    invoke-virtual {v0, p2}, Lcom/samsung/android/sume/Shape;->setCols(I)Lcom/samsung/android/sume/Shape;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/sume/Shape;->setRows(I)Lcom/samsung/android/sume/Shape;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Shape;->setBatch(I)Lcom/samsung/android/sume/Shape;

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/MediaType;Lcom/samsung/android/sume/ColorFormat;)V
    .registers 4
    .param p1, "mediaType"    # Lcom/samsung/android/sume/MediaType;
    .param p2, "colorFormat"    # Lcom/samsung/android/sume/ColorFormat;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 13
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 14
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 15
    new-instance v0, Lcom/samsung/android/sume/Shape;

    invoke-direct {v0}, Lcom/samsung/android/sume/Shape;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 40
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/MediaFormat;->getDefaultDataType(Lcom/samsung/android/sume/ColorFormat;)Lcom/samsung/android/sume/DataType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/MediaType;Lcom/samsung/android/sume/DataType;)V
    .registers 4
    .param p1, "mediaType"    # Lcom/samsung/android/sume/MediaType;
    .param p2, "dataType"    # Lcom/samsung/android/sume/DataType;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 13
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 14
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 15
    new-instance v0, Lcom/samsung/android/sume/Shape;

    invoke-direct {v0}, Lcom/samsung/android/sume/Shape;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/MediaType;Lcom/samsung/android/sume/DataType;Lcom/samsung/android/sume/ColorFormat;)V
    .registers 5
    .param p1, "mediaType"    # Lcom/samsung/android/sume/MediaType;
    .param p2, "dataType"    # Lcom/samsung/android/sume/DataType;
    .param p3, "colorFormat"    # Lcom/samsung/android/sume/ColorFormat;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 13
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 14
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 15
    new-instance v0, Lcom/samsung/android/sume/Shape;

    invoke-direct {v0}, Lcom/samsung/android/sume/Shape;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 34
    iput-object p3, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/MediaType;Lcom/samsung/android/sume/DataType;Lcom/samsung/android/sume/ColorFormat;Lcom/samsung/android/sume/Shape;)V
    .registers 6
    .param p1, "mediaType"    # Lcom/samsung/android/sume/MediaType;
    .param p2, "dataType"    # Lcom/samsung/android/sume/DataType;
    .param p3, "colorFormat"    # Lcom/samsung/android/sume/ColorFormat;
    .param p4, "shape"    # Lcom/samsung/android/sume/Shape;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 13
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 14
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 15
    new-instance v0, Lcom/samsung/android/sume/Shape;

    invoke-direct {v0}, Lcom/samsung/android/sume/Shape;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 25
    iput-object p1, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 27
    iput-object p3, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 28
    iput-object p4, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 29
    return-void
.end method

.method public static blacklist bpp(Lcom/samsung/android/sume/ColorFormat;)F
    .registers 3
    .param p0, "cf"    # Lcom/samsung/android/sume/ColorFormat;

    .line 160
    sget-object v0, Lcom/samsung/android/sume/MediaFormat$2;->$SwitchMap$com$samsung$android$sume$ColorFormat:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/ColorFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 165
    :pswitch_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_13
    const/high16 v0, 0x40800000    # 4.0f

    return v0

    .line 163
    :pswitch_16
    const/high16 v0, 0x40400000    # 3.0f

    return v0

    .line 162
    :pswitch_19
    const/high16 v0, 0x3fc00000    # 1.5f

    return v0

    .line 161
    :pswitch_1c
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_16
        :pswitch_16
        :pswitch_b
        :pswitch_b
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public static blacklist bpp(Lcom/samsung/android/sume/DataType;)F
    .registers 4
    .param p0, "dataType"    # Lcom/samsung/android/sume/DataType;

    .line 170
    sget-object v0, Lcom/samsung/android/sume/MediaFormat$2;->$SwitchMap$com$samsung$android$sume$DataSet:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/DataType;->depth()Lcom/samsung/android/sume/DataSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/DataSet;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x40800000    # 4.0f

    packed-switch v0, :pswitch_data_26

    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :pswitch_1b
    return v1

    .line 175
    :pswitch_1c
    return v2

    .line 174
    :pswitch_1d
    return v1

    .line 173
    :pswitch_1e
    return v2

    .line 172
    :pswitch_1f
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    .line 171
    :pswitch_22
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method private blacklist getDefaultDataType(Lcom/samsung/android/sume/ColorFormat;)Lcom/samsung/android/sume/DataType;
    .registers 4
    .param p1, "colorFormat"    # Lcom/samsung/android/sume/ColorFormat;

    .line 44
    sget-object v0, Lcom/samsung/android/sume/MediaFormat$2;->$SwitchMap$com$samsung$android$sume$ColorFormat:[I

    invoke-virtual {p1}, Lcom/samsung/android/sume/ColorFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_13
    sget-object v0, Lcom/samsung/android/sume/DataType;->U8C4:Lcom/samsung/android/sume/DataType;

    return-object v0

    .line 49
    :pswitch_16
    sget-object v0, Lcom/samsung/android/sume/DataType;->U16C3:Lcom/samsung/android/sume/DataType;

    return-object v0

    .line 48
    :pswitch_19
    sget-object v0, Lcom/samsung/android/sume/DataType;->U8C3:Lcom/samsung/android/sume/DataType;

    return-object v0

    .line 47
    :pswitch_1c
    sget-object v0, Lcom/samsung/android/sume/DataType;->U8C2:Lcom/samsung/android/sume/DataType;

    return-object v0

    .line 46
    :pswitch_1f
    sget-object v0, Lcom/samsung/android/sume/DataType;->U8C1:Lcom/samsung/android/sume/DataType;

    return-object v0

    .line 45
    :pswitch_22
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_16
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public final blacklist bpp()F
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    invoke-static {v0}, Lcom/samsung/android/sume/MediaFormat;->bpp(Lcom/samsung/android/sume/ColorFormat;)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    invoke-static {v1}, Lcom/samsung/android/sume/MediaFormat;->bpp(Lcom/samsung/android/sume/DataType;)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method protected whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 87
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaFormat;

    .line 88
    .local v0, "obj":Lcom/samsung/android/sume/MediaFormat;
    iget-object v1, v0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    invoke-virtual {v1}, Lcom/samsung/android/sume/Shape;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/Shape;

    iput-object v1, v0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 89
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist getColorFormat()Lcom/samsung/android/sume/ColorFormat;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    return-object v0
.end method

.method public final blacklist getDataType()Lcom/samsung/android/sume/DataType;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    return-object v0
.end method

.method public final blacklist getMediaType()Lcom/samsung/android/sume/MediaType;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    return-object v0
.end method

.method public final blacklist getShape()Lcom/samsung/android/sume/Shape;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    return-object v0
.end method

.method public blacklist setColorFormat(Lcom/samsung/android/sume/ColorFormat;)V
    .registers 2
    .param p1, "colorFormat"    # Lcom/samsung/android/sume/ColorFormat;

    .line 142
    iput-object p1, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 143
    return-void
.end method

.method public final blacklist setDataType(Lcom/samsung/android/sume/DataType;)Lcom/samsung/android/sume/MediaFormat;
    .registers 4
    .param p1, "dataType"    # Lcom/samsung/android/sume/DataType;

    .line 131
    iput-object p1, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    invoke-virtual {p1}, Lcom/samsung/android/sume/DataType;->channels()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Shape;->setChannels(I)Lcom/samsung/android/sume/Shape;

    .line 133
    return-object p0
.end method

.method public final blacklist setMediaType(Lcom/samsung/android/sume/MediaType;)Lcom/samsung/android/sume/MediaFormat;
    .registers 2
    .param p1, "mediaTyep"    # Lcom/samsung/android/sume/MediaType;

    .line 122
    iput-object p1, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 123
    return-object p0
.end method

.method public final blacklist setShape(Lcom/samsung/android/sume/Shape;)Lcom/samsung/android/sume/MediaFormat;
    .registers 2
    .param p1, "shape"    # Lcom/samsung/android/sume/Shape;

    .line 147
    iput-object p1, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    .line 148
    return-object p0
.end method

.method public blacklist size()J
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Shape;->getBatch()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    invoke-virtual {v1}, Lcom/samsung/android/sume/Shape;->getRows()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    invoke-virtual {v1}, Lcom/samsung/android/sume/Shape;->getCols()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/MediaFormat;->bpp()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public blacklist toMediaFormat()Lcom/samsung/android/sume/MediaFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/sume/MediaFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaFormat;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    iget-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->mediaType:Lcom/samsung/android/sume/MediaType;

    invoke-virtual {v0}, Lcom/samsung/android/sume/MediaType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->dataType:Lcom/samsung/android/sume/DataType;

    invoke-virtual {v0}, Lcom/samsung/android/sume/DataType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/ColorFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/sume/MediaFormat;->shape:Lcom/samsung/android/sume/Shape;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    return-void
.end method
