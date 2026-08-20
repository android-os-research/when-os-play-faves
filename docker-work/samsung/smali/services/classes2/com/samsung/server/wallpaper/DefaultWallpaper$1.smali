.class public Lcom/samsung/server/wallpaper/DefaultWallpaper$1;
.super Landroid/os/Handler;
.source "DefaultWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/DefaultWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/DefaultWallpaper;Landroid/os/Looper;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "DefaultWallpaper"

    packed-switch v0, :pswitch_data_b8

    goto/16 :goto_b6

    :pswitch_9
    const-string p1, "msg MSG_UPDATE_DEFAULT_WALLPAPER"

    .line 128
    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->rebindDefaultWallpaperIfNeeded()V

    goto/16 :goto_b6

    .line 120
    :pswitch_19
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$fgetmService(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCurrentUserId()I

    move-result p0

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo p0, "send wallpaperChangedIntent"

    .line 124
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b6

    .line 109
    :pswitch_48
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 111
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v0, "dex_lockscreen_wallpaper_transparency"

    goto :goto_5f

    .line 113
    :cond_53
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    goto :goto_5f

    :cond_5d
    const-string v0, "lockscreen_wallpaper_transparent"

    .line 116
    :goto_5f
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$msetSettingsSystemUiTransparency(Lcom/samsung/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V

    goto :goto_b6

    .line 98
    :pswitch_67
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 99
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v2, -0x2

    if-eqz v1, :cond_86

    and-int/lit8 v0, v0, 0x3c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_86

    .line 100
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v0, "lockscreen_wallpaper_sub"

    invoke-static {p0, v0, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_b6

    .line 103
    :cond_86
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v0, "lockscreen_wallpaper"

    invoke-static {p0, v0, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_b6

    .line 87
    :pswitch_98
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 89
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v1

    if-eqz v1, :cond_a3

    const-string v0, "dex_system_wallpaper_transparency"

    goto :goto_af

    .line 91
    :cond_a3
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    const-string/jumbo v0, "sub_display_system_wallpaper_transparency"

    goto :goto_af

    :cond_ad
    const-string v0, "android.wallpaper.settings_systemui_transparency"

    .line 94
    :goto_af
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$msetSettingsSystemUiTransparency(Lcom/samsung/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V

    :goto_b6
    return-void

    nop

    :pswitch_data_b8
    .packed-switch 0x3ec
        :pswitch_98
        :pswitch_67
        :pswitch_48
        :pswitch_19
        :pswitch_9
    .end packed-switch
.end method
