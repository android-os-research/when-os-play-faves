.class public Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$5;
.super Ljava/lang/Object;
.source "SemWallpaperThemeManager.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;
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

    .line 436
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$5;->this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;)Ljava/lang/Integer;
    .registers 4

    .line 440
    :try_start_0
    iget-object p1, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->theme:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 443
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$5;->this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-static {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->-$$Nest$fgetTAG(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 436
    check-cast p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$5;->apply(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
