.class public Lcom/samsung/android/knox/analytics/model/EventList;
.super Lorg/json/JSONArray;
.source "EventList.java"


# instance fields
.field public mTotalEventsCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/samsung/android/knox/analytics/model/EventList;->mTotalEventsCount:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTotalEventsCount()I
    .registers 1

    .line 29
    iget p0, p0, Lcom/samsung/android/knox/analytics/model/EventList;->mTotalEventsCount:I

    return p0
.end method

.method public put(Lcom/samsung/android/knox/analytics/model/Event;)V
    .registers 3

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 21
    iget v0, p0, Lcom/samsung/android/knox/analytics/model/EventList;->mTotalEventsCount:I

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/model/Event;->getBulk()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/knox/analytics/model/EventList;->mTotalEventsCount:I

    return-void
.end method

.method public toByteArray()[B
    .registers 2

    .line 25
    invoke-super {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method
