.class public final Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;
.super Ljava/lang/Object;
.source "KnoxAnalyticsDataConverter.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "e"

.field public static final EVENT_ID:Ljava/lang/String; = "eID"

.field public static final FEATURE:Ljava/lang/String; = "f"

.field public static final PAYLOAD:Ljava/lang/String; = "p"

.field public static final SCHEMA_VERSION:Ljava/lang/String; = "sV"

.field public static final TAG:Ljava/lang/String;

.field public static final TIMESTAMP:Ljava/lang/String; = "t"

.field public static final VERSIONING_BLOB_EVENT:Ljava/lang/String; = "versioningBlob"

.field public static final VERSIONING_ID_PARAMETER:Ljava/lang/String; = "vId"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 5

    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    :try_start_19
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_2d

    .line 61
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 63
    :cond_2d
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_34} :catch_35

    goto :goto_d

    .line 66
    :catch_35
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->TAG:Ljava/lang/String;

    const-string v3, "convertToJSON(): JSONException"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_3d
    return-object v0
.end method

.method public static formatBulkEvents(JLjava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {p0, p1, v4}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->updateEventId(JLcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0x1

    add-long/2addr p0, v3

    :goto_2d
    const-string v5, ", "

    if-ge v2, v1, :cond_51

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {p0, p1, v5}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->updateEventId(JLcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 95
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->updateEventId(JLcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static generateTimestamp()J
    .registers 4

    const-string v0, "UTC"

    .line 151
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static generateVersioningBlobEvent(Ljava/lang/String;JI)Ljava/lang/String;
    .registers 7

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "eID"

    .line 134
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "f"

    const-string p2, "KNOX_ANALYTICS"

    .line 135
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "sV"

    const/4 p2, 0x1

    .line 136
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "e"

    const-string/jumbo p2, "versioningBlob"

    .line 137
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "t"

    .line 138
    invoke-static {}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->generateTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 140
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "vId"

    .line 141
    invoke-virtual {p1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo p0, "p"

    .line 142
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_3c

    goto :goto_43

    .line 144
    :catch_3c
    sget-object p0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->TAG:Ljava/lang/String;

    const-string p1, "generateVersioningBlobEvent(): JSONException"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_43
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersioningBlobData(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "p"

    .line 113
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_c} :catch_39

    const-string/jumbo v3, "vId"

    if-eqz v2, :cond_2b

    .line 115
    :try_start_11
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 116
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    :cond_22
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_40

    .line 120
    :cond_2b
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 121
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    :cond_34
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_38} :catch_39

    goto :goto_40

    .line 126
    :catch_39
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->TAG:Ljava/lang/String;

    const-string v1, "getVersioningBlobData(): JSONException"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    return-object p0
.end method

.method public static isJSONValid(Ljava/lang/String;)Z
    .registers 2

    .line 74
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public static toJSONObject(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Lorg/json/JSONObject;
    .registers 7

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "eID"

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getEventId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "f"

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "sV"

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getSchemaVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "e"

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "t"

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/os/Bundle;

    if-eqz v4, :cond_65

    .line 42
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_45

    .line 43
    :cond_65
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_84

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->isJSONValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 44
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_45

    .line 46
    :cond_84
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_45

    :cond_8c
    const-string/jumbo p0, "p"

    .line 49
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_92
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_92} :catch_93

    goto :goto_9b

    .line 51
    :catch_93
    sget-object p0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "toJSONObject(): JSONException"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9b
    return-object v0
.end method

.method public static toJSONString(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Ljava/lang/String;
    .registers 1

    .line 82
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->toJSONObject(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updateEventId(JLcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Ljava/lang/String;
    .registers 4

    .line 101
    invoke-static {p2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->toJSONObject(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Lorg/json/JSONObject;

    move-result-object p2

    :try_start_4
    const-string v0, "eID"

    .line 103
    invoke-virtual {p2, v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    .line 105
    :catch_a
    sget-object p0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateEventId(): JSONException"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_12
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
