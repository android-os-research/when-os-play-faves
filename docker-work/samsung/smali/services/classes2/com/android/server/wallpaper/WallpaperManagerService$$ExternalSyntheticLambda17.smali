.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->$r8$lambda$WHhkTkWG_SLbtvKPJE7gaEz5r0s(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
