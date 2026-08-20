.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$4;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
.source "SemWifiApContinuityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerMessageListener()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$4;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/lang/String;[B)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deviceId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":message:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MHSMcf:Adapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :try_start_25
    new-instance p0, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "messagetype"

    .line 281
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_50

    .line 283
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 285
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->onReceived(Ljava/lang/String;Lorg/json/JSONObject;I)V

    goto :goto_97

    :cond_50
    const/4 v0, 0x2

    if-ne p2, v0, :cond_61

    .line 289
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object p2

    if-eqz p2, :cond_97

    .line 291
    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->onReceived(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_97

    :cond_61
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7a

    .line 294
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 296
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->onReceived(Ljava/lang/String;Lorg/json/JSONObject;I)V

    goto :goto_97

    :cond_7a
    const/4 v0, 0x4

    if-ne p2, v0, :cond_97

    .line 299
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClientSession()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    move-result-object p2

    if-eqz p2, :cond_97

    .line 301
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClientSession()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->onReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_92} :catch_93

    goto :goto_97

    :catch_93
    move-exception p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_97
    :goto_97
    return-void
.end method
