.class public Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AcSettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 1249
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 1250
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final isAirCommandSettingEnabled()Z
    .registers 3

    .line 1284
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "air_button_onoff"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    move v1, v0

    :cond_13
    return v1
.end method

.method public final isFloatingIconEnabled()Z
    .registers 4

    .line 1279
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "air_cmd_use_minimized"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public observe()V
    .registers 7

    .line 1254
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1255
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->isFloatingIconEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->isAirCommandSettingEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    invoke-static {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$monFloatingIconSettingChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    const-string v1, "air_cmd_use_minimized"

    .line 1257
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    .line 1256
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "air_button_onoff"

    .line 1260
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1259
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "pen_digitizer_enabled"

    .line 1263
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;

    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v5}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;Landroid/os/Handler;)V

    .line 1262
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(Z)V
    .registers 3

    .line 1275
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->isFloatingIconEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->isAirCommandSettingEnabled()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    invoke-static {p1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$monFloatingIconSettingChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    return-void
.end method
