.class public final Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;
.super Ljava/lang/Object;
.source "SemMediaPostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessingFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;
    }
.end annotation


# instance fields
.field private blacklist format:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetformat(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    .line 198
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "format":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    .line 202
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public blacklist getBufferFormat()I
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->BUFFER_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getBufferSize()I
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->BUFFER_SIZE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getColorFormat()Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->-$$Nest$smgetName(I)Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getColorRange()I
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_RANGE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getColorStandard()I
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_STANDARD:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getColorTransfer()I
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_TRANSFER:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getCustomKeyValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 350
    invoke-static {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->-$$Nest$smgetName(Ljava/lang/String;)Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    move-result-object v0

    if-nez v0, :cond_d

    .line 353
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 351
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This key is already reserved."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getElevation()I
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->ELEVATION:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getFilterLevel()I
    .registers 3

    .line 329
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->FILTER_LEVEL:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getFilterName()Ljava/lang/String;
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->FILTER_NAME:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFps()I
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->FPS:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getHeight()I
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->HEIGHT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getInputColorFormat()Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->INPUT_COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->-$$Nest$smgetName(I)Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputColorFormat()Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->OUTPUT_COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->-$$Nest$smgetName(I)Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRotation()I
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->ROTATION:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getStride()I
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->STRIDE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getWidth()I
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->WIDTH:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist setBufferFormat(I)V
    .registers 5
    .param p1, "bufferFormat"    # I

    .line 261
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->BUFFER_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method

.method public blacklist setBufferSize(I)V
    .registers 5
    .param p1, "bufferSize"    # I

    .line 253
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->BUFFER_SIZE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public blacklist setColorFormat(Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;)V
    .registers 4
    .param p1, "colorFormat"    # Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    .line 285
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method public blacklist setColorRange(I)V
    .registers 5
    .param p1, "colorRange"    # I

    .line 293
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_RANGE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void
.end method

.method public blacklist setColorStandard(I)V
    .registers 5
    .param p1, "colorStandard"    # I

    .line 301
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_STANDARD:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    return-void
.end method

.method public blacklist setColorTransfer(I)V
    .registers 5
    .param p1, "colorTransfer"    # I

    .line 309
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_TRANSFER:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void
.end method

.method public blacklist setCustomKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 338
    invoke-static {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->-$$Nest$smgetName(Ljava/lang/String;)Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    move-result-object v0

    if-nez v0, :cond_c

    .line 341
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void

    .line 339
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This key is already reserved."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setElevation(I)V
    .registers 5
    .param p1, "elevation"    # I

    .line 237
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->ELEVATION:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public blacklist setFilterLevel(I)V
    .registers 5
    .param p1, "filterLevel"    # I

    .line 325
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->FILTER_LEVEL:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-void
.end method

.method public blacklist setFilterName(Ljava/lang/String;)V
    .registers 4
    .param p1, "filterName"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->FILTER_NAME:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method public blacklist setFps(I)V
    .registers 5
    .param p1, "fps"    # I

    .line 221
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->FPS:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public blacklist setHeight(I)V
    .registers 5
    .param p1, "height"    # I

    .line 213
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->HEIGHT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method public blacklist setInputColorFormat(Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;)V
    .registers 5
    .param p1, "inputColorFormat"    # Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    .line 269
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->INPUT_COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public blacklist setOutputColorFormat(Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;)V
    .registers 5
    .param p1, "outputColorFormat"    # Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    .line 277
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->OUTPUT_COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void
.end method

.method public blacklist setRotation(I)V
    .registers 5
    .param p1, "rotation"    # I

    .line 245
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->ROTATION:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method public blacklist setStride(I)V
    .registers 5
    .param p1, "stride"    # I

    .line 229
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->STRIDE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method public blacklist setWidth(I)V
    .registers 5
    .param p1, "width"    # I

    .line 205
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->WIDTH:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method
