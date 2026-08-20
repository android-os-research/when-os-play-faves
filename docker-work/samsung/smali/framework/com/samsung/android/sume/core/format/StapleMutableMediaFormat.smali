.class Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;
.super Ljava/lang/Object;
.source "StapleMutableMediaFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MutableMediaFormat;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

.field protected blacklist dataType:Lcom/samsung/android/sume/core/types/DataType;

.field protected blacklist mediaType:Lcom/samsung/android/sume/core/types/MediaType;

.field protected blacklist shape:Lcom/samsung/android/sume/core/format/MutableShape;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public varargs constructor blacklist <init>(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    .line 34
    sget-object v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$1;->$SwitchMap$com$samsung$android$sume$core$types$MediaType:[I

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    goto :goto_30

    .line 48
    :pswitch_20
    invoke-virtual {p0, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->config([Ljava/lang/Object;)Ljava/util/List;

    goto :goto_30

    .line 44
    :pswitch_24
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->configVideo([Ljava/lang/Object;)V

    .line 45
    goto :goto_30

    .line 40
    :pswitch_28
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->configAudio([Ljava/lang/Object;)V

    .line 41
    goto :goto_30

    .line 36
    :pswitch_2c
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->configImage([Ljava/lang/Object;)V

    .line 37
    nop

    .line 54
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method

.method private varargs blacklist configAudio([Ljava/lang/Object;)V
    .registers 6
    .param p1, "args"    # [Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->config([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, "arg":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2b

    .line 93
    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 94
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2, v3, v3}, Lcom/samsung/android/sume/core/format/Shape;->of(IIII)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 98
    .end local v1    # "arg":Ljava/lang/Object;
    goto :goto_8

    .line 96
    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supported argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_44
    return-void
.end method

.method private varargs blacklist configImage([Ljava/lang/Object;)V
    .registers 8
    .param p1, "args"    # [Ljava/lang/Object;

    .line 73
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->config([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 74
    .local v1, "arg":Ljava/lang/Object;
    instance-of v3, v1, Landroid/graphics/Rect;

    if-eqz v3, :cond_39

    .line 75
    move-object v3, v1

    check-cast v3, Landroid/graphics/Rect;

    .line 76
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    if-nez v4, :cond_26

    .line 77
    new-instance v4, Lcom/samsung/android/sume/core/format/StapleMutableShape;

    const/4 v5, -0x1

    invoke-direct {v4, v2, v5, v5, v5}, Lcom/samsung/android/sume/core/format/StapleMutableShape;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 78
    :cond_26
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 79
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 80
    .end local v3    # "rect":Landroid/graphics/Rect;
    goto :goto_42

    :cond_39
    instance-of v2, v1, Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eqz v2, :cond_43

    .line 81
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 85
    .end local v1    # "arg":Ljava/lang/Object;
    :goto_42
    goto :goto_8

    .line 83
    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_5c
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v3, v0, v1

    const-class v1, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 88
    return-void
.end method

.method private varargs blacklist configVideo([Ljava/lang/Object;)V
    .registers 2
    .param p1, "args"    # [Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private blacklist getColorString()Ljava/lang/String;
    .registers 3

    .line 370
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    .line 371
    :catch_18
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, ""

    return-object v1
.end method

.method static synthetic blacklist lambda$adjustChannels$8(Ljava/lang/Integer;)Z
    .registers 2
    .param p0, "it"    # Ljava/lang/Integer;

    .line 313
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$bytePerSample$3(Lcom/samsung/android/sume/core/types/ColorFormat;)Ljava/lang/Float;
    .registers 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->bytePerPixel()F

    move-result v0

    goto :goto_d

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$bytePerSample$4(Lcom/samsung/android/sume/core/types/DataType;)Ljava/lang/Float;
    .registers 3
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/DataType;

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/DataType;->size()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/DataType;->channels()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$config$0(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "it"    # Ljava/lang/Object;

    .line 59
    instance-of v0, p0, Lcom/samsung/android/sume/core/types/DataType;

    if-nez v0, :cond_b

    instance-of v0, p0, Lcom/samsung/android/sume/core/format/Shape;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static synthetic blacklist lambda$getPlanesFormat$1(Ljava/util/List;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/format/Shape;I)V
    .registers 6
    .param p0, "planes"    # Ljava/util/List;
    .param p1, "depth"    # Lcom/samsung/android/sume/core/types/DataType;
    .param p2, "chromaShape"    # Lcom/samsung/android/sume/core/format/Shape;
    .param p3, "it"    # I

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public varargs blacklist adjustChannels([Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 299
    .local p1, "channelSuppliers":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda14;-><init>()V

    .line 313
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 315
    .local v0, "channel":I
    if-eq v0, v1, :cond_50

    .line 316
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/DataType;->channels()I

    move-result v2

    if-eq v0, v2, :cond_41

    .line 317
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/DataType;->depth()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    .line 318
    :cond_41
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    if-eqz v2, :cond_50

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableShape;->getChannels()I

    move-result v2

    if-eq v0, v2, :cond_50

    .line 319
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v2, v0}, Lcom/samsung/android/sume/core/format/MutableShape;->setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 321
    :cond_50
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    if-eqz v2, :cond_60

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableShape;->getBatch()I

    move-result v2

    if-ne v2, v1, :cond_60

    .line 322
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableShape;->setBatch(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 323
    :cond_60
    return-void
.end method

.method public blacklist bytePerSample()F
    .registers 4

    .line 196
    const-string v0, "color-format"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda8;-><init>()V

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 198
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 199
    .local v0, "bppOfColor":F
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda9;-><init>()V

    .line 200
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 201
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 202
    .local v1, "bppOfDataType":F
    mul-float v2, v0, v1

    return v2
.end method

.method public blacklist checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 227
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method protected varargs blacklist config([Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda2;-><init>()V

    .line 59
    invoke-static {v1}, Ljava/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 61
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Boolean;Ljava/util/List<Ljava/lang/Object;>;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 62
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 63
    .local v2, "arg":Ljava/lang/Object;
    instance-of v3, v2, Lcom/samsung/android/sume/core/types/DataType;

    if-eqz v3, :cond_3c

    .line 64
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/sume/core/types/DataType;

    iput-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    goto :goto_49

    .line 65
    :cond_3c
    instance-of v3, v2, Lcom/samsung/android/sume/core/format/Shape;

    if-eqz v3, :cond_49

    .line 66
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/sume/core/format/Shape;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 67
    .end local v2    # "arg":Ljava/lang/Object;
    :cond_49
    :goto_49
    goto :goto_28

    .line 69
    :cond_4a
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public blacklist contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist containsAllOf([Ljava/lang/String;)Z
    .registers 4
    .param p1, "keys"    # [Ljava/lang/String;

    .line 222
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist containsAnyOf([Ljava/lang/String;)Z
    .registers 4
    .param p1, "keys"    # [Ljava/lang/String;

    .line 217
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .registers 2

    .line 359
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->taglnOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shape="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 378
    invoke-static {v1}, Lcom/samsung/android/sume/core/Def;->contentToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nattributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    .line 383
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    return-object v0
.end method

.method public blacklist copy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3

    .line 390
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 391
    :catch_7
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 393
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic blacklist copy()Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->copy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist deepCopy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 4

    .line 400
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->copy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    .line 401
    .local v0, "copied":Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    if-eqz v1, :cond_12

    .line 402
    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableShape;->deepCopy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableShape;

    iput-object v1, v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 403
    :cond_12
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    .line 404
    return-object v0
.end method

.method public bridge synthetic blacklist deepCopy()Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->deepCopy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :cond_7
    goto :goto_12

    :pswitch_8
    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_13

    :goto_12
    const/4 v0, -0x1

    :goto_13
    packed-switch v0, :pswitch_data_26

    .line 329
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 328
    :pswitch_1d
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0

    :pswitch_data_20
    .packed-switch 0x24a2ada1
        :pswitch_8
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 336
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :cond_7
    goto :goto_12

    :pswitch_8
    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_13

    :goto_12
    const/4 v0, -0x1

    :goto_13
    packed-switch v0, :pswitch_data_26

    .line 338
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 337
    :pswitch_1d
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0

    :pswitch_data_20
    .packed-switch 0x24a2ada1
        :pswitch_8
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist getBatch()I
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getChannels()I
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0
.end method

.method public blacklist getCols()I
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDataType()Lcom/samsung/android/sume/core/types/DataType;
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/DataType;

    return-object v0
.end method

.method public blacklist getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    return-object v0
.end method

.method public blacklist getPlanesFormat()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isImage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_96

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    if-ne v0, v2, :cond_12

    .line 111
    return-object v1

    .line 113
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "planes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/format/MutableMediaFormat;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->isYuv()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/DataType;->depth()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    .line 117
    .local v1, "depth":Lcom/samsung/android/sume/core/types/DataType;
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getRows()I

    move-result v3

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getCols()I

    move-result v3

    shr-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->numberOfChromaChannels()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 122
    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableShape;->toShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    .line 125
    .local v2, "chromaShape":Lcom/samsung/android/sume/core/format/Shape;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v4}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->numberOfPlanes()I

    move-result v3

    invoke-static {v4, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0, v1, v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/format/Shape;)V

    .line 129
    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 130
    .end local v1    # "depth":Lcom/samsung/android/sume/core/types/DataType;
    .end local v2    # "chromaShape":Lcom/samsung/android/sume/core/format/Shape;
    goto :goto_95

    .line 131
    :cond_8a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "not support yet for planar except yuv format"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_92
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :goto_95
    return-object v0

    .line 138
    .end local v0    # "planes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/format/MutableMediaFormat;>;"
    :cond_96
    return-object v1
.end method

.method public blacklist getRows()I
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getShape()Lcom/samsung/android/sume/core/format/Shape;
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/Shape;

    return-object v0
.end method

.method public blacklist getStride()I
    .registers 3

    .line 191
    const-string/jumbo v0, "stride"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$adjustChannels$7$com-samsung-android-sume-core-format-StapleMutableMediaFormat(Ljava/lang/Class;)Ljava/lang/Integer;
    .registers 5
    .param p1, "it"    # Ljava/lang/Class;

    .line 300
    const-class v0, Lcom/samsung/android/sume/core/format/MutableShape;

    const/4 v1, -0x1

    .line 301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 300
    if-eq p1, v0, :cond_5f

    const-class v0, Lcom/samsung/android/sume/core/format/Shape;

    if-ne p1, v0, :cond_e

    goto :goto_5f

    .line 302
    :cond_e
    const-class v0, Lcom/samsung/android/sume/core/types/DataType;

    if-ne p1, v0, :cond_28

    .line 303
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 304
    :cond_28
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne p1, v0, :cond_46

    .line 306
    :try_start_2c
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_43
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2c .. :try_end_43} :catch_44

    return-object v0

    .line 307
    :catch_44
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    return-object v1

    .line 311
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support channel supplier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method synthetic blacklist lambda$containsAllOf$6$com-samsung-android-sume-core-format-StapleMutableMediaFormat(Ljava/lang/String;)Z
    .registers 4
    .param p1, "e"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$containsAnyOf$5$com-samsung-android-sume-core-format-StapleMutableMediaFormat(Ljava/lang/String;)Z
    .registers 4
    .param p1, "e"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$getStride$2$com-samsung-android-sume-core-format-StapleMutableMediaFormat()Ljava/lang/Integer;
    .registers 3

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getCols()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getChannels()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 7
    .param p1, "option"    # Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 409
    sget-object v0, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    .line 410
    .local v0, "splitType":Lcom/samsung/android/sume/core/types/SplitType;
    sget-object v1, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    const/16 v2, 0x8

    if-eq v0, v1, :cond_2d

    .line 411
    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 412
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    const-string/jumbo v3, "split-type"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 413
    :cond_1e
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 414
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    const-string v3, "merge-type"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 418
    .local v1, "pad":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_4e

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 419
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v4, "pad-type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v4, "pad-size"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_4e
    return-object p0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    :cond_7
    goto :goto_12

    :pswitch_8
    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_13

    :goto_12
    const/4 v0, -0x1

    :goto_13
    packed-switch v0, :pswitch_data_2a

    .line 351
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 346
    :pswitch_1c
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 348
    nop

    .line 354
    :goto_22
    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x24a2ada1
        :pswitch_8
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist setChannels(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "channels"    # I

    .line 291
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;-><init>()V

    .line 292
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    .line 293
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableShape;->setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 294
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 295
    return-object p0
.end method

.method public blacklist setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "colorFormat"    # Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 184
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 186
    return-object p0
.end method

.method public blacklist setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "cols"    # I

    .line 282
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;-><init>()V

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    .line 284
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 285
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 286
    return-object p0
.end method

.method public blacklist setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "dataType"    # Lcom/samsung/android/sume/core/types/DataType;

    .line 257
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    .line 258
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 259
    return-object p0
.end method

.method public blacklist setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3
    .param p1, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;

    .line 249
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    .line 250
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne p1, v0, :cond_d

    .line 251
    const/4 v0, 0x1

    invoke-static {v0, v0, v0, v0}, Lcom/samsung/android/sume/core/format/Shape;->mutableOf(IIII)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 252
    :cond_d
    return-object p0
.end method

.method public blacklist setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "rows"    # I

    .line 273
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 274
    invoke-static {}, Lcom/samsung/android/sume/core/format/Shape;->mutableOf()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    .line 275
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 276
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 277
    return-object p0
.end method

.method public blacklist setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "shape"    # Lcom/samsung/android/sume/core/format/Shape;

    .line 266
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 267
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 268
    return-object p0
.end method

.method public blacklist size()J
    .registers 4

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->bytePerSample()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">()TV;"
        }
    .end annotation

    .line 238
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/format/StapleMediaFormat;-><init>(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)V

    return-object v0
.end method

.method public blacklist toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">()TV;"
        }
    .end annotation

    .line 244
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 365
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
