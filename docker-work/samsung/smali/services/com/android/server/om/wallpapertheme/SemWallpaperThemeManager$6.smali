.class public Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$6;
.super Ljava/lang/Object;
.source "SemWallpaperThemeManager.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getString(Ljava/lang/String;)Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V
    .registers 2

    .line 451
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$6;->this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 451
    check-cast p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$6;->apply(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;)Ljava/lang/String;
    .registers 4

    .line 454
    iget-object p0, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->theme:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    const-string v1, "@"

    .line 455
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    iget-object p0, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->theme:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method
