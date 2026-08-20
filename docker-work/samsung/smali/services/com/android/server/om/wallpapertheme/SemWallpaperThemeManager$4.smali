.class public Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$4;
.super Ljava/lang/Object;
.source "SemWallpaperThemeManager.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getColor(Ljava/lang/String;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V
    .registers 2

    .line 406
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$4;->this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;)Ljava/lang/Integer;
    .registers 3

    .line 409
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$4;->this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    iget-object v0, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->theme:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->-$$Nest$mgetColorFromTheme(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 410
    iget-object p1, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->opacity:Ljava/lang/Integer;

    if-eqz p1, :cond_1e

    if-eqz p0, :cond_1e

    .line 411
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    move-result-object p0

    :cond_1e
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 406
    check-cast p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$4;->apply(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
