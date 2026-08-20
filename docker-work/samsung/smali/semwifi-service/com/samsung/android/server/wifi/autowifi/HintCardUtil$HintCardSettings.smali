.class Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;
.super Ljava/lang/Object;
.source "HintCardUtil.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HintCardSettings"
.end annotation


# static fields
.field static final INVALID_INDEX:I = -0x1

.field private static final JSON_KEY_ADD_ARRAY:Ljava/lang/String; = "added"

.field private static final JSON_KEY_CONFIG:Ljava/lang/String; = "config"

.field private static final JSON_KEY_REMOVE_ARRAY:Ljava/lang/String; = "removed"


# instance fields
.field final changeToFavoriteNetwork:Lorg/json/JSONArray;

.field final changeToNormalNetwork:Lorg/json/JSONArray;

.field private final settings:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->getHintCardJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->settings:Lorg/json/JSONObject;

    const-string v0, "added"

    .line 104
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->getArrayOrDefault(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    const-string v0, "removed"

    .line 105
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->getArrayOrDefault(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    return-void
.end method

.method private apply()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->settings:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    const-string v2, "added"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->settings:Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    const-string v1, "removed"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static getArrayOrDefault(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 2

    .line 169
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 p0, 0x0

    :goto_6
    if-eqz p0, :cond_9

    goto :goto_e

    .line 172
    :cond_9
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :goto_e
    return-object p0
.end method

.method private static getHintCardJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2

    .line 156
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 158
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_10

    goto :goto_15

    .line 162
    :cond_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_15
    return-object v0
.end method

.method static indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_20

    const/4 v0, 0x0

    .line 178
    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 179
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_1d

    :cond_10
    const-string v2, "config"

    .line 181
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return v0

    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_20
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method addToFavoriteNetwork(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 110
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "config"

    .line 111
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 113
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_2c

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 119
    :cond_2c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->apply()V

    return-void
.end method

.method addToNormalNetwork(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 124
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "config"

    .line 125
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    .line 128
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 130
    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_2c

    .line 131
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 133
    :cond_2c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->apply()V

    return-void
.end method

.method removeNetwork(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 139
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_1b

    .line 143
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 145
    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->apply()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->settings:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
