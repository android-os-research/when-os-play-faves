.class public Lcom/samsung/server/wallpaper/CMFWallpaper$1;
.super Landroid/os/Handler;
.source "CMFWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/CMFWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/CMFWallpaper;Landroid/os/Looper;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_7

    goto :goto_1a

    .line 73
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 74
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/CMFWallpaper;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cmf_color_code"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1a
    return-void
.end method
