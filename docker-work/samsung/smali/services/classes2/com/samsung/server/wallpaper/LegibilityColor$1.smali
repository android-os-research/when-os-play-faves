.class public Lcom/samsung/server/wallpaper/LegibilityColor$1;
.super Landroid/os/Handler;
.source "LegibilityColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/LegibilityColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/LegibilityColor;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/LegibilityColor;Landroid/os/Looper;)V
    .registers 3

    .line 85
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$1;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f7

    if-eq v0, v1, :cond_8

    goto/16 :goto_c7

    :cond_8
    const-string v0, "need_dark_statusbar"

    const-string v1, "need_dark_font"

    const-string v2, "need_dark_navigationbar"

    .line 91
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    .line 96
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LegibilityColor"

    invoke-static {v3, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const-string/jumbo v4, "setWhiteBgSettings"

    move v5, v2

    move v6, v5

    .line 100
    :goto_35
    :try_start_35
    array-length v7, v1

    if-ge v5, v7, :cond_b7

    .line 101
    aget v7, v1, v5

    .line 102
    iget-object v8, p0, Lcom/samsung/server/wallpaper/LegibilityColor$1;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-static {v8}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aget-object v9, v0, v5

    invoke-static {v8, v9, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", area["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] oldVal = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " newVal = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eq v8, v7, :cond_9f

    .line 108
    iget-object v8, p0, Lcom/samsung/server/wallpaper/LegibilityColor$1;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-static {v8}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aget-object v9, v0, v5

    invoke-static {v8, v9, v7, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "set "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v0, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_9e} :catch_a2

    const/4 v6, 0x1

    :cond_9f
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :catch_a2
    move-exception p1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get/put "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_b7
    invoke-static {v3, v4}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_c7

    .line 120
    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$1;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$fgetmService(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->sendWallpaperChangeIntent()V

    :cond_c7
    :goto_c7
    return-void
.end method
