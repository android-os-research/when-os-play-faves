.class public Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
.super Ljava/lang/Object;
.source "AmbientBrightnessStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AmbientBrightnessStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AmbientBrightnessStats"
.end annotation


# static fields
.field public static final ATTR_BUCKET_BOUNDARIES:Ljava/lang/String; = "bucket-boundaries"

.field public static final ATTR_BUCKET_STATS:Ljava/lang/String; = "bucket-stats"

.field public static final ATTR_LOCAL_DATE:Ljava/lang/String; = "local-date"

.field public static final ATTR_USER:Ljava/lang/String; = "user"

.field public static final TAG_AMBIENT_BRIGHTNESS_DAY_STATS:Ljava/lang/String; = "ambient-brightness-day-stats"

.field public static final TAG_AMBIENT_BRIGHTNESS_STATS:Ljava/lang/String; = "ambient-brightness-stats"


# instance fields
.field public mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getOrCreateDayStats(Ljava/util/Deque;Ljava/time/LocalDate;)Landroid/hardware/display/AmbientBrightnessDayStats;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;",
            "Ljava/time/LocalDate;",
            ")",
            "Landroid/hardware/display/AmbientBrightnessDayStats;"
        }
    .end annotation

    .line 285
    invoke-interface {p1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/AmbientBrightnessDayStats;

    if-eqz p0, :cond_13

    .line 286
    invoke-virtual {p0}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object p0

    .line 290
    :cond_13
    new-instance p0, Landroid/hardware/display/AmbientBrightnessDayStats;

    sget-object v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

    invoke-direct {p0, p2, v0}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F)V

    .line 292
    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_24

    .line 293
    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 295
    :cond_24
    invoke-interface {p1, p0}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;>;I)",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 277
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    .line 278
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Deque;

    return-object p0
.end method

.method public getUserStats(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public log(ILjava/time/LocalDate;FF)V
    .registers 6

    .line 153
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateDayStats(Ljava/util/Deque;Ljava/time/LocalDate;)Landroid/hardware/display/AmbientBrightnessDayStats;

    move-result-object p0

    .line 155
    invoke-virtual {p0, p3, p4}, Landroid/hardware/display/AmbientBrightnessDayStats;->log(FF)V

    return-void
.end method

.method public readFromXML(Ljava/io/InputStream;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ","

    .line 206
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 207
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p1

    .line 210
    :goto_b
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    const/4 v4, 0x2

    if-eq v2, v4, :cond_16

    goto :goto_b

    .line 213
    :cond_16
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ambient-brightness-stats"

    .line 214
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 219
    iget-object v2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->-$$Nest$fgetmInjector(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    const-wide/16 v4, 0x7

    invoke-virtual {v2, v4, v5}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v2

    .line 220
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 221
    :cond_36
    :goto_36
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_d1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_45

    .line 222
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_d1

    :cond_45
    if-eq v5, v6, :cond_36

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4b

    goto :goto_36

    .line 226
    :cond_4b
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ambient-brightness-day-stats"

    .line 227
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    const-string/jumbo v5, "user"

    const/4 v6, 0x0

    .line 228
    invoke-interface {p1, v6, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v7, "local-date"

    .line 230
    invoke-interface {p1, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-static {v7}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v7

    const-string v8, "bucket-boundaries"

    .line 231
    invoke-interface {p1, v6, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 232
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, "bucket-stats"

    .line 233
    invoke-interface {p1, v6, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 234
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 235
    array-length v9, v8

    array-length v10, v6

    if-ne v9, v10, :cond_c9

    array-length v9, v8

    if-lt v9, v3, :cond_c9

    .line 239
    array-length v9, v8

    new-array v9, v9, [F

    .line 240
    array-length v10, v6

    new-array v10, v10, [F

    const/4 v11, 0x0

    .line 241
    :goto_8c
    array-length v12, v8

    if-ge v11, v12, :cond_a2

    .line 242
    aget-object v12, v8, v11

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    aput v12, v9, v11

    .line 243
    aget-object v12, v6, v11

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_8c

    .line 245
    :cond_a2
    iget-object v6, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v6}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->-$$Nest$fgetmInjector(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v8}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->-$$Nest$fgetmUserManager(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_36

    .line 246
    invoke-virtual {v7, v2}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 247
    invoke-virtual {p0, v1, v5}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;

    move-result-object v5

    .line 249
    new-instance v6, Landroid/hardware/display/AmbientBrightnessDayStats;

    invoke-direct {v6, v7, v9, v10}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F[F)V

    invoke-interface {v5, v6}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_36

    .line 237
    :cond_c9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid brightness stats string."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 255
    :cond_d1
    iput-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    return-void

    .line 215
    :cond_d4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ambient brightness stats not found in tracker file "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_eb
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_eb} :catch_eb
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_eb} :catch_eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_eb} :catch_eb
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2 .. :try_end_eb} :catch_eb
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_eb} :catch_eb

    :catch_eb
    move-exception p0

    .line 258
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to parse brightness stats file."

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/AmbientBrightnessDayStats;

    const-string v4, "  "

    .line 267
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 272
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToXML(Ljava/io/OutputStream;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 168
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    .line 169
    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 171
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->-$$Nest$fgetmInjector(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    const-wide/16 v3, 0x7

    invoke-virtual {v1, v3, v4}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    const-string v3, "ambient-brightness-stats"

    .line 172
    invoke-interface {v0, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    iget-object v4, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_da

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_46
    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 175
    iget-object v8, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v8}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->-$$Nest$fgetmInjector(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v9}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->-$$Nest$fgetmUserManager(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v9

    .line 176
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 175
    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_46

    .line 177
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v9

    if-eqz v9, :cond_46

    const-string v9, "ambient-brightness-day-stats"

    .line 178
    invoke-interface {v0, v2, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "user"

    .line 179
    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "local-date"

    .line 180
    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    .line 184
    :goto_9d
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_c3

    if-lez v11, :cond_ae

    const-string v12, ","

    .line 186
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_ae
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    move-result-object v12

    aget v12, v12, v11

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getStats()[F

    move-result-object v12

    aget v12, v12, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_9d

    .line 193
    :cond_c3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "bucket-boundaries"

    .line 192
    invoke-interface {v0, v2, v8, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "bucket-stats"

    invoke-interface {v0, v2, v8, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    invoke-interface {v0, v2, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_46

    .line 199
    :cond_da
    invoke-interface {v0, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 201
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
