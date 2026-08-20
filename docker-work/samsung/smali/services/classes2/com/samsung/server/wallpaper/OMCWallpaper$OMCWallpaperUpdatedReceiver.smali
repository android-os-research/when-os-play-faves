.class public Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OMCWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/OMCWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OMCWallpaperUpdatedReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/OMCWallpaper;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/server/wallpaper/OMCWallpaper;Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;-><init>(Lcom/samsung/server/wallpaper/OMCWallpaper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/OMCWallpaper;->updateOmcWallpaper(Ljava/lang/String;)V

    return-void
.end method
