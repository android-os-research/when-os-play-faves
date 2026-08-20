.class public Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$Factory;
.super Ljava/lang/Object;
.source "WifiAutoShareData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "type"

    .line 43
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 45
    new-instance v0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 47
    :cond_f
    new-instance p0, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$WifiAutoShareDataUnsupported;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$WifiAutoShareDataUnsupported;-><init>(I)V

    return-object p0
.end method
