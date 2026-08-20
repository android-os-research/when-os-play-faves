.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$0:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$0:F

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->$r8$lambda$2HybkWnUz1e0oef28-1QUwVBZHw(FLcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method
