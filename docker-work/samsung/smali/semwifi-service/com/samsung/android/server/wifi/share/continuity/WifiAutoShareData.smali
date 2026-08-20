.class public abstract Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;
.super Ljava/lang/Object;
.source "WifiAutoShareData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$WifiAutoShareDataUnsupported;,
        Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$Factory;
    }
.end annotation


# static fields
.field static final JSON_KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field protected final type:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->type:I

    return-void
.end method


# virtual methods
.method public abstract getData()Ljava/lang/Object;
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->getType()I

    move-result p0

    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getType()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->type:I

    return p0
.end method
