.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field public final synthetic f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-static {v0, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->$r8$lambda$3RwVwgg4X4NLHci5RwxlGGvEkuA(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method
