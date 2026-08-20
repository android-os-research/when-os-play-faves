.class public Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;
.super Ljava/lang/Object;
.source "MediaStatisticsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Label;,
        Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;,
        Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;,
        Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CodecSolution_MediaStatisticsData"


# instance fields
.field private mAction:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

.field private mCategory:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

.field private mLabel:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Label;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smgetFourCCNumber(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->getFourCCNumber(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "param"    # Ljava/lang/String;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaStatisticsData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecSolution_MediaStatisticsData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0, p1}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->unflatten(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    const-string v2, "category"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 274
    .local v0, "category":I
    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->valueOf(I)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mCategory:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 276
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 277
    .local v2, "action":I
    invoke-static {v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->valueOf(I)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    move-result-object v3

    iput-object v3, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mAction:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 279
    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    const-string v4, "label"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 280
    .local v3, "label":I
    invoke-static {v3}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Label;->valueOf(I)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Label;

    move-result-object v4

    iput-object v4, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mLabel:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Label;

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mCategory:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mAction:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "label: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mLabel:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Label;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method private static getFourCCNumber(Ljava/lang/String;)I
    .registers 4
    .param p0, "val"    # Ljava/lang/String;

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_f

    .line 251
    shl-int/lit8 v0, v0, 0x8

    .line 252
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v0, v2

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 254
    .end local v1    # "i":I
    :cond_f
    return v0
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .registers 7

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v0, "flattened":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 290
    .local v2, "k":Ljava/lang/String;
    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 291
    .local v3, "val":Ljava/lang/Object;
    if-nez v3, :cond_24

    .line 292
    goto :goto_f

    .line 295
    :cond_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    instance-of v4, v3, Ljava/lang/Integer;

    const-string v5, "@"

    if-eqz v4, :cond_54

    .line 299
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->INT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e1

    .line 301
    :cond_54
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_79

    .line 302
    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->LONG:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e1

    .line 304
    :cond_79
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_9e

    .line 305
    move-object v4, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->FLOAT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e1

    .line 307
    :cond_9e
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_bf

    .line 308
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->STRING:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e1

    .line 310
    :cond_bf
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_c9

    .line 312
    const-string v4, "@a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e1

    .line 314
    :cond_c9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CodecSolution_MediaStatisticsData"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_e1
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/Object;
    goto/16 :goto_f

    .line 320
    :cond_e8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mAction:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mCategory:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .line 266
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mLabel:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Label;

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Label;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 360
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 361
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .registers 12
    .param p1, "flattened"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 327
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 328
    .local v0, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 329
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 330
    .local v2, "kv":Ljava/lang/String;
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 331
    .local v3, "eqPos":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_29

    .line 332
    goto :goto_13

    .line 334
    :cond_29
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "k":Ljava/lang/String;
    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 337
    .local v5, "tpPos":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->valueOf(I)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    move-result-object v6

    .line 339
    .local v6, "t":Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
    const/4 v7, 0x0

    .line 340
    .local v7, "val":Ljava/lang/Object;
    sget-object v8, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->INT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    if-ne v6, v8, :cond_56

    .line 341
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_86

    .line 342
    :cond_56
    sget-object v8, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->LONG:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    if-ne v6, v8, :cond_69

    .line 343
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_86

    .line 344
    :cond_69
    sget-object v8, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->FLOAT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    if-ne v6, v8, :cond_7c

    .line 345
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_86

    .line 346
    :cond_7c
    sget-object v8, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->STRING:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    if-ne v6, v8, :cond_86

    .line 347
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 351
    :cond_86
    :goto_86
    iget-object v8, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .end local v2    # "kv":Ljava/lang/String;
    .end local v3    # "eqPos":I
    .end local v4    # "k":Ljava/lang/String;
    .end local v5    # "tpPos":I
    .end local v6    # "t":Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
    .end local v7    # "val":Ljava/lang/Object;
    goto :goto_13

    .line 353
    :cond_8c
    return-void
.end method
