.class public Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$1;
.super Ljava/lang/Object;
.source "SemWallpaperThemeManager.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$1;->this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;)Ljava/lang/Boolean;
    .registers 3

    .line 344
    iget-object p0, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->theme:Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 345
    :cond_e
    iget-object p0, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->theme:Ljava/lang/String;

    const-string p1, "false"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 341
    check-cast p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$1;->apply(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
