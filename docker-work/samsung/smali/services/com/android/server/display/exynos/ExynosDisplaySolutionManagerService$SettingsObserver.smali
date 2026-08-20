.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ExynosDisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 421
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    .line 422
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 427
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$msettingChanged(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)V

    return-void
.end method
