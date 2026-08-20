.class public Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdaptiveBrightnessStats"
.end annotation


# static fields
.field public static final ATTR_BUCKET_BOUNDARIES:Ljava/lang/String; = "bucket-boundaries"

.field public static final ATTR_BUCKET_LAST_USER_BRIGHTNESS_TIME:Ljava/lang/String; = "last-user-brighntess-time"

.field public static final ATTR_BUCKET_LUX:Ljava/lang/String; = "lux"

.field public static final ATTR_BUCKET_STATS:Ljava/lang/String; = "bucket-stats"

.field public static final ATTR_BUCKET_WEIGHT:Ljava/lang/String; = "weight"

.field public static final ATTR_LEARNED_BRIGHTNESS:Ljava/lang/String; = "brightness-learned"

.field public static final ATTR_LOCAL_DATE:Ljava/lang/String; = "local-date"

.field public static final ATTR_USER:Ljava/lang/String; = "user"

.field public static final TAG_ADAPTIVE_BRIGHTNESS_STATS:Ljava/lang/String; = "SBS-stats"

.field public static final TAG_ADAPTIVE_BRIGHTNESS_WEIGHT_STATS:Ljava/lang/String; = "adaptive-brightness-weight-stats"

.field public static final TAG_END_STATS:Ljava/lang/String; = "END"

.field public static final TAG_LUX_STATS:Ljava/lang/String; = "fixed-lux-zone"


# instance fields
.field public mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 3

    .line 228
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 230
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-void
.end method


# virtual methods
.method public final getOrCreateUserStats(Ljava/util/Map;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;",
            ">;I)",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;"
        }
    .end annotation

    .line 435
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 436
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-static {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->-$$Nest$fgetmBucketBoundariesForStats(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)[F

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {v1, v2, p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>([FLcom/android/server/display/BrightnessMappingStrategy;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_1e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    return-object p0
.end method

.method public final getOrCreateUserStats(Ljava/util/Map;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;",
            ">;[",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;",
            "I)",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;"
        }
    .end annotation

    .line 443
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 444
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-static {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->-$$Nest$fgetmBucketBoundariesForStats(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)[F

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {v1, v2, p2, p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>([F[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/BrightnessMappingStrategy;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_1e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    return-object p0
.end method

.method public getUserStats(I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 248
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public log(ILjava/time/LocalDate;FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V
    .registers 20

    move-object v0, p0

    .line 237
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    move v2, p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object v2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 239
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->log(FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V

    return-void
.end method

.method public readFromXML(Ljava/io/InputStream;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "]["

    .line 334
    :try_start_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 335
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 336
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 339
    :goto_18
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_23

    const/4 v7, 0x2

    if-eq v5, v7, :cond_23

    goto :goto_18

    .line 342
    :cond_23
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SBS-stats"

    .line 343
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_189

    .line 350
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 358
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const/4 v7, -0x1

    const/4 v9, 0x0

    move v13, v7

    move-object v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 359
    :goto_3c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    if-eq v14, v6, :cond_186

    const/4 v15, 0x3

    if-ne v14, v15, :cond_4b

    .line 360
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v5, :cond_186

    :cond_4b
    if-eq v14, v15, :cond_178

    const/4 v6, 0x4

    if-ne v14, v6, :cond_52

    goto/16 :goto_178

    .line 364
    :cond_52
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v14, "fixed-lux-zone"

    .line 367
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_5c
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_5c} :catch_1a0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_5c} :catch_1a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_5c} :catch_1a0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_4 .. :try_end_5c} :catch_1a0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_5c} :catch_1a0

    const-string v15, "AdaptiveBrightnessStatsTracker"

    if-eqz v14, :cond_cb

    :try_start_60
    const-string/jumbo v14, "user"

    .line 368
    invoke-interface {v4, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "bucket-boundaries"

    .line 369
    invoke-interface {v4, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_cb

    .line 371
    array-length v8, v8

    .line 372
    iget-object v9, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-static {v9}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->-$$Nest$fgetmInjector(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    move-result-object v9

    iget-object v12, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-static {v12}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->-$$Nest$fgetmUserManager(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v12

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v9

    .line 373
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TAG_LUX_STATS ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-static {v13}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->-$$Nest$fgetmBucketBoundariesForStats(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)[F

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v15, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_c9

    if-eq v9, v7, :cond_c9

    .line 375
    iget-object v12, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-static {v12}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->-$$Nest$fgetmBucketBoundariesForStats(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)[F

    move-result-object v12

    array-length v12, v12

    if-ne v8, v12, :cond_c9

    .line 378
    new-array v10, v8, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move v12, v8

    move v13, v9

    const/4 v11, 0x0

    goto :goto_cb

    :cond_c9
    move v12, v8

    move v13, v9

    :cond_cb
    :goto_cb
    const-string v8, "adaptive-brightness-weight-stats"

    .line 385
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_153

    const-string/jumbo v8, "lux"

    const/4 v9, 0x0

    .line 386
    invoke-interface {v4, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v14, "brightness-learned"

    .line 387
    invoke-interface {v4, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v7, "weight"

    .line 388
    invoke-interface {v4, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v2

    const-string/jumbo v2, "last-user-brighntess-time"

    .line 389
    invoke-interface {v4, v9, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 392
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 393
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move-object/from16 v23, v10

    .line 394
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    const-string/jumbo v4, "readFromXML: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] l = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", br = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", w = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", t = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v23, :cond_159

    if-ge v11, v12, :cond_159

    add-int/lit8 v2, v11, 0x1

    .line 400
    new-instance v4, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-object/from16 v17, v4

    move/from16 v18, v8

    move/from16 v19, v14

    move/from16 v20, v7

    move-wide/from16 v21, v9

    invoke-direct/range {v17 .. v22}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;-><init>(FFFJ)V

    aput-object v4, v23, v11

    move v11, v2

    goto :goto_159

    :cond_153
    move-object/from16 v16, v2

    move-object/from16 v24, v4

    move-object/from16 v23, v10

    :cond_159
    :goto_159
    const-string v2, "END"

    .line 405
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_174

    const/4 v2, -0x1

    if-eq v13, v2, :cond_171

    if-eqz v23, :cond_171

    const-string v4, "getOrCreateUserStats from xml"

    .line 407
    invoke-static {v15, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, v23

    .line 408
    invoke-virtual {v1, v3, v10, v13}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    goto :goto_17d

    :cond_171
    move-object/from16 v10, v23

    goto :goto_17d

    :cond_174
    move-object/from16 v10, v23

    const/4 v2, -0x1

    goto :goto_17d

    :cond_178
    :goto_178
    move-object/from16 v16, v2

    move-object/from16 v24, v4

    move v2, v7

    :goto_17d
    move v7, v2

    move-object/from16 v2, v16

    move-object/from16 v4, v24

    const/4 v6, 0x1

    const/4 v9, 0x0

    goto/16 :goto_3c

    .line 413
    :cond_186
    iput-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    return-void

    .line 344
    :cond_189
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ambient brightness stats not found in tracker file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1a0
    .catch Ljava/lang/NullPointerException; {:try_start_60 .. :try_end_1a0} :catch_1a0
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_1a0} :catch_1a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_1a0} :catch_1a0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_60 .. :try_end_1a0} :catch_1a0
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_1a0} :catch_1a0

    :catch_1a0
    move-exception v0

    move-object v1, v0

    .line 417
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse brightness stats file."

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMaxWeight(I)V
    .registers 3

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getUserStats(I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object v0

    if-nez v0, :cond_10

    .line 256
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->setMaxWeight()V

    goto :goto_18

    :cond_10
    const-string p0, "AdaptiveBrightnessStatsTracker"

    const-string/jumbo p1, "setMaxWeight: shoudn\'t be here"

    .line 261
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return-void
.end method

.method public summarizeStats(ILjava/time/LocalDate;)V
    .registers 3

    .line 266
    iget-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->summarizeStats()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 425
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    const-string v3, "  "

    .line 426
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 430
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToXML(Ljava/io/OutputStream;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 272
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 273
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    .line 274
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "AdaptiveBrightnessStatsTracker"

    const-string/jumbo v3, "writeToXML start"

    .line 275
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SBS-stats"

    .line 276
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_32
    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_189

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 278
    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-static {v6}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->-$$Nest$fgetmInjector(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->this$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-static {v7}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->-$$Nest$fgetmUserManager(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v7, v5}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v5

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userSerialNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_32

    .line 281
    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    const-string v7, "fixed-lux-zone"

    .line 284
    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "user"

    invoke-interface {v0, v2, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move v9, v8

    .line 287
    :goto_92
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketBoundaries()[F

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_ac

    if-lez v9, :cond_a0

    const-string v10, ","

    .line 289
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_a0
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketBoundaries()[F

    move-result-object v10

    aget v10, v10, v9

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_92

    .line 293
    :cond_ac
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "bucket-boundaries"

    invoke-interface {v0, v2, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    :goto_b8
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v5

    array-length v5, v5

    if-ge v8, v5, :cond_17f

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adaptive-brightness-weight-stats"

    .line 303
    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v12

    aget-object v12, v12, v8

    invoke-virtual {v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v12

    aget-object v12, v12, v8

    invoke-virtual {v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v12

    aget-object v12, v12, v8

    invoke-virtual {v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v12

    aget-object v12, v12, v8

    invoke-virtual {v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLastUserBrightnessTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "lux"

    invoke-interface {v0, v2, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "brightness-learned"

    invoke-interface {v0, v2, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "weight"

    invoke-interface {v0, v2, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "last-user-brighntess-time"

    invoke-interface {v0, v2, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "writeToXML: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] l="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", br="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", w="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", t="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b8

    :cond_17f
    const-string v5, "END"

    .line 322
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_32

    .line 326
    :cond_189
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    const-string/jumbo p0, "writeToXML done"

    .line 328
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
