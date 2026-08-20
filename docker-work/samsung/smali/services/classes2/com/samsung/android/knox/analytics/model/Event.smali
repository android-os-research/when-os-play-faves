.class public Lcom/samsung/android/knox/analytics/model/Event;
.super Lorg/json/JSONObject;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/model/Event$Fields;
    }
.end annotation


# static fields
.field public static final DEFAULT_BULK_VALUE:I = 0x1


# instance fields
.field public bulk:I

.field public data:Ljava/lang/String;

.field public id:I

.field public vid:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    .line 21
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo p1, "vid"

    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "bulk"

    .line 23
    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 24
    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBulk()I
    .registers 2

    :try_start_0
    const-string v0, "bulk"

    .line 51
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception p0

    .line 53
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "data"

    .line 61
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception p0

    .line 63
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getId()I
    .registers 2

    :try_start_0
    const-string v0, "id"

    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception p0

    .line 33
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "bulk"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 73
    :cond_10
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVid()I
    .registers 2

    :try_start_0
    const-string/jumbo v0, "vid"

    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_d

    :catch_8
    move-exception p0

    .line 43
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_d
    return p0
.end method
