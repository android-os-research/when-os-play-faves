.class public Lcom/android/server/display/WifiDisplayController$33;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$NativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .line 2218
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(ILjava/lang/String;)V
    .registers 12

    const-string/jumbo v0, "isMute"

    const-string v1, "curVol"

    const-string/jumbo v2, "maxVol"

    const-string/jumbo v3, "minVol"

    const/4 v4, 0x1

    const-string v5, "WifiDisplayController"

    if-eq p1, v4, :cond_276

    const/4 v6, 0x2

    if-eq p1, v6, :cond_25e

    const/4 v6, 0x3

    if-eq p1, v6, :cond_246

    const/4 v7, 0x7

    if-eq p1, v7, :cond_212

    const/16 v7, 0x28

    if-eq p1, v7, :cond_1db

    const/16 v7, 0x32

    if-eq p1, v7, :cond_1cf

    const/16 v7, 0x3c

    if-eq p1, v7, :cond_193

    const/16 v7, 0x46

    const/16 v8, 0x9

    if-eq p1, v7, :cond_158

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_13a

    const/16 v0, 0x64

    if-eq p1, v0, :cond_10f

    const/4 v0, 0x0

    if-eq p1, v8, :cond_a6

    const/16 v1, 0xa

    if-eq p1, v1, :cond_51

    .line 2331
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onNotify Error,  msg : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_290

    .line 2272
    :cond_51
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2273
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    onNotify received : NOTIFY_ROTATION_CHANGED = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    if-nez p1, :cond_6f

    const/16 v8, 0x8

    :cond_6f
    const/4 v1, 0x6

    invoke-static {p2, v8, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendRemoteDisplayStateChangeEvent(Lcom/android/server/display/WifiDisplayController;II)V

    .line 2277
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "rotation"

    .line 2278
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2279
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eq p1, v4, :cond_9b

    if-ne p1, v6, :cond_90

    goto :goto_9b

    .line 2284
    :cond_90
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWfdUibcManager(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/wfd/WFDUibcManager;->setPortraitMode(Z)V

    goto/16 :goto_290

    .line 2282
    :cond_9b
    :goto_9b
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWfdUibcManager(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/samsung/android/wfd/WFDUibcManager;->setPortraitMode(Z)V

    goto/16 :goto_290

    .line 2289
    :cond_a6
    :try_start_a6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2290
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v1, "UibcAvailable"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p2, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmIsUibcAvailable(Lcom/android/server/display/WifiDisplayController;Z)V

    const-string p2, "UibcSamsungMobile"

    .line 2291
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 2292
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    onNotify received : NOTIFY_SUPPORT_UIBC = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmIsUibcAvailable(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSamsungMobile = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmIsUibcAvailable(Lcom/android/server/display/WifiDisplayController;)Z

    move-result p2

    if-eqz p2, :cond_fa

    .line 2295
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWfdUibcManager(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/android/wfd/WFDUibcManager;->start(Z)Z

    .line 2296
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWfdUibcManager(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/wfd/WFDUibcManager;->setSinkDevice(Z)V

    goto/16 :goto_290

    .line 2298
    :cond_fa
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWfdUibcManager(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/wfd/WFDUibcManager;->stop(Z)Z
    :try_end_103
    .catch Lorg/json/JSONException; {:try_start_a6 .. :try_end_103} :catch_105

    goto/16 :goto_290

    :catch_105
    move-exception p0

    .line 2301
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_290

    .line 2325
    :cond_10f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    onNotify received : NOTIFY_NOT_DEFINED : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmRemoteDisplayConnected(Lcom/android/server/display/WifiDisplayController;)Z

    move-result p1

    if-eqz p1, :cond_290

    .line 2327
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAdvertisedDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mparseParametersFromEngine(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendWifiDisplayParameterEvent(Lcom/android/server/display/WifiDisplayController;Ljava/util/List;)V

    goto/16 :goto_290

    :cond_13a
    const-string p1, "    onNotify received : NOTIFY_SWTICH_TCP_FOR_DEMO"

    .line 2318
    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmTransportMode(Lcom/android/server/display/WifiDisplayController;)I

    move-result p1

    if-eq p1, v4, :cond_290

    .line 2320
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1, v4}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmTransportMode(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2321
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo p2, "tcp"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_290

    .line 2250
    :cond_158
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2252
    :try_start_15d
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2254
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2255
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2256
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_17e
    .catch Lorg/json/JSONException; {:try_start_15d .. :try_end_17e} :catch_17f

    goto :goto_187

    :catch_17f
    move-exception p2

    .line 2258
    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    :goto_187
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0, v8, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendDeviceVolumeChangedEvent(Lcom/android/server/display/WifiDisplayController;ILandroid/os/Bundle;)V

    const-string p0, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_STATUS"

    .line 2261
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_290

    .line 2241
    :cond_193
    :try_start_193
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2242
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v0, "isSupportDisplayVolumeControl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmIsDisplayVolumeControlSupported(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    onNotify received: [VolumeControl] NOTIFY_DISPLAY_VOLUME_SUPPORT = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmIsDisplayVolumeControlSupported(Lcom/android/server/display/WifiDisplayController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendWifiDisplayVolumeSupportChangedBroadcast(Lcom/android/server/display/WifiDisplayController;)V
    :try_end_1c3
    .catch Lorg/json/JSONException; {:try_start_193 .. :try_end_1c3} :catch_1c5

    goto/16 :goto_290

    :catch_1c5
    move-exception p0

    .line 2246
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_290

    :cond_1cf
    const-string p1, "    onNotify received : NOTIFY_SCREEN_WAKE_UP"

    .line 2314
    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mwakeUpScreen(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_290

    .line 2306
    :cond_1db
    :try_start_1db
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2307
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v0, "isSupportInitiatedMirroring"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmIsSupportInitiateMirroring(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    onNotify received : NOTIFY_SUPPORT_INITIATE_MIRRORING = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmIsSupportInitiateMirroring(Lcom/android/server/display/WifiDisplayController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_206
    .catch Lorg/json/JSONException; {:try_start_1db .. :try_end_206} :catch_208

    goto/16 :goto_290

    :catch_208
    move-exception p0

    .line 2310
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_290

    .line 2231
    :cond_212
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2232
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    rem-int/lit8 v0, p1, 0x2

    invoke-static {p2, v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmTransportMode(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    onNotify received : NOTIFY_TRANSPORT_MODE,  mTransportMode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmTransportMode(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-ne v0, v4, :cond_232

    const-string v0, "TCP"

    goto :goto_234

    :cond_232
    const-string v0, "UDP"

    :goto_234
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gt p1, v4, :cond_290

    .line 2236
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendBroadcastTransportMode(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_290

    :cond_246
    const-string p1, "    onNotify received : NOTIFY_WFD_ENGINE_PAUSE"

    .line 2227
    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.android.smartview.WFD_ENGINE_PAUSE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_290

    :cond_25e
    const-string p1, "    onNotify received : NOTIFY_WFD_ENGINE_RESUME"

    .line 2223
    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.android.smartview.WFD_ENGINE_RESUME"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_290

    .line 2265
    :cond_276
    :try_start_276
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2266
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo p2, "renameAvailable"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmRenameCapablity(Lcom/android/server/display/WifiDisplayController;Z)V
    :try_end_287
    .catch Lorg/json/JSONException; {:try_start_276 .. :try_end_287} :catch_288

    goto :goto_290

    :catch_288
    move-exception p0

    .line 2268
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_290
    :goto_290
    return-void
.end method
