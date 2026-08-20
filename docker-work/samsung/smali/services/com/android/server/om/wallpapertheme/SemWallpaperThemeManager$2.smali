.class public Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$2;
.super Ljava/lang/Object;
.source "SemWallpaperThemeManager.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getColorResId(Ljava/lang/String;I)Ljava/lang/Integer;
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

.field public final synthetic val$uidOpacity:I


# direct methods
.method public constructor <init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;I)V
    .registers 3

    .line 352
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$2;->this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    iput p2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$2;->val$uidOpacity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;)Ljava/lang/Integer;
    .registers 5

    .line 355
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$2;->this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    iget v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$2;->val$uidOpacity:I

    iget-object v2, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->opacity:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->-$$Nest$mfindBestOpacity(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;II)I

    move-result v0

    .line 356
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$2;->this$0:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    iget-object p1, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->theme:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->-$$Nest$mgetColorResIdFromTheme(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 352
    check-cast p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$2;->apply(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
