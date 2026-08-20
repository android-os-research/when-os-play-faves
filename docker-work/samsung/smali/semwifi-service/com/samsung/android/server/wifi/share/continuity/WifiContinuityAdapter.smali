.class public Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;
.super Ljava/lang/Object;
.source "WifiContinuityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;
    }
.end annotation


# static fields
.field public static final ACTION_SHARE_PROFILE:Ljava/lang/String; = "com.samsung.android.server.wifi.share.WIFI_PROFILE"

.field private static final APP_ID:I = 0x21

.field public static final KEY_ACTION:Ljava/lang/String; = "ACTION"

.field public static final KEY_APP_ID:Ljava/lang/String; = "APP_ID"

.field public static final KEY_EXTRA:Ljava/lang/String; = "EXTRA"

.field public static final KEY_PACKAGE:Ljava/lang/String; = "PACKAGE"

.field public static final KEY_TYPE:Ljava/lang/String; = "TYPE"

.field private static final TAG:Ljava/lang/String; = "SemWifi.Continuity"


# instance fields
.field private adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

.field private bindResultCallback:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;

.field private final context:Landroid/content/Context;

.field private isBound:Z

.field private final serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbindResultCallback(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->bindResultCallback:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBound(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->isBound:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;-><init>(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private getJsonBytes(Ljava/util/List;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;",
            ">;)[B"
        }
    .end annotation

    .line 155
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;

    .line 157
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 159
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 162
    :cond_1f
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "TYPE"

    const/4 v2, 0x2

    .line 165
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "APP_ID"

    const/16 v2, 0x21

    .line 166
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PACKAGE"

    .line 167
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ACTION"

    const-string v1, "com.samsung.android.server.wifi.share.WIFI_PROFILE"

    .line 168
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "EXTRA"

    .line 169
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_63

    return-object p0

    :catch_63
    const-string p0, "SemWifi.Continuity"

    const-string p1, "failed to generate shared data"

    .line 173
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static parseJson(Landroid/content/Intent;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "EXTRA"

    .line 135
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SemWifi.Continuity"

    if-eqz v1, :cond_19

    const-string p0, "there is no extra data"

    .line 137
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 141
    :cond_19
    :try_start_19
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 142
    :goto_1f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p0, v3, :cond_3e

    .line 143
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 144
    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$Factory;->create(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_32} :catch_35

    add-int/lit8 p0, p0, 0x1

    goto :goto_1f

    :catch_35
    move-exception p0

    const-string v1, "failed to parse json data"

    .line 147
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    return-object v0
.end method


# virtual methods
.method public bind(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;)Z
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    if-nez v0, :cond_c

    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/ContinuityManager;->getContinuityAdapter(Landroid/content/Context;)Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 64
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    const/16 v2, 0x21

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->initialize(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x384

    if-ne v0, v1, :cond_27

    .line 65
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->bindResultCallback:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;

    .line 66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Z

    const/4 p0, 0x1

    return p0

    .line 69
    :cond_27
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;->onFailed()V

    const/4 p0, 0x0

    return p0
.end method

.method public startDiscovery(Ljava/util/List;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 102
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->isBound:Z

    if-nez v0, :cond_5

    return-void

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    const-string v1, "SemWifi.Continuity"

    if-nez v0, :cond_15

    const-string p0, "couldn\'t get discovery manager"

    .line 105
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_15
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->getJsonBytes(Ljava/util/List;)[B

    move-result-object p1

    .line 109
    array-length v2, p1

    if-nez v2, :cond_22

    const-string p0, "shared data is empty"

    .line 110
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_22
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    move-result-object v1

    .line 115
    new-instance v2, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;-><init>(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Landroid/os/Handler;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V

    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->startDiscovery(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)Z

    return-void
.end method

.method public stopDiscovery()V
    .registers 2

    .line 179
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->isBound:Z

    if-nez v0, :cond_5

    return-void

    .line 180
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    invoke-interface {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "SemWifi.Continuity"

    const-string v0, "couldn\'t get discovery manager"

    .line 182
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_15
    invoke-interface {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->stopDiscovery()Z

    return-void
.end method

.method public unbind()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    if-eqz v0, :cond_10

    .line 96
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->unbindService(Landroid/content/Context;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->release(Landroid/content/Context;)V

    :cond_10
    return-void
.end method
