.class public Lcom/samsung/server/wallpaper/CMFWallpaper$2;
.super Landroid/database/ContentObserver;
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
.method public constructor <init>(Lcom/samsung/server/wallpaper/CMFWallpaper;Landroid/os/Handler;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 84
    iget-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$mgetCmfColorCodeFromSettingsDB(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmDeviceColor(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmDeviceColor(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeviceColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMFWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v0, p1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setDeviceColor(Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmService(Lcom/samsung/server/wallpaper/CMFWallpaper;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->updateDefaultWallpaper()V

    :cond_45
    return-void
.end method
