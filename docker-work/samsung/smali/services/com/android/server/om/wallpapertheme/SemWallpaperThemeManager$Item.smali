.class public Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;
.super Ljava/lang/Object;
.source "SemWallpaperThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public opacity:Ljava/lang/Integer;

.field public theme:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
