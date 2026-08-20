.class public final Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;
.super Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CocktalBarLocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;)V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-$$Nest$fgetmCocktailBarService(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->setSystemBarAppearance(I)V

    .line 140
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-$$Nest$fgetmAppearance(Lcom/android/server/cocktailbar/CocktailBarManagerService;)I

    move-result v0

    if-eq v0, p2, :cond_1f

    .line 141
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-$$Nest$fputmAppearance(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)V

    .line 142
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-$$Nest$fgetmCocktailBarService(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;)V

    :cond_1f
    return-void
.end method

.method public topAppWindowChanged(IZZ)V
    .registers 4

    .line 148
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-$$Nest$fgetmCocktailBarService(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->topAppWindowChanged(IZZ)V

    return-void
.end method

.method public turnOffWakupCocktailBarFromPowerManager(ILjava/lang/String;)V
    .registers 3

    .line 123
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-$$Nest$mturnOffWakupCocktailBarFromPowerManagerInternal(Lcom/android/server/cocktailbar/CocktailBarManagerService;ILjava/lang/String;)V

    return-void
.end method

.method public updateSysfsGripDisableFromWindowManager(Z)V
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-$$Nest$mupdateSysfsGripDisableFromWindowManagerInternal(Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V

    return-void
.end method

.method public wakupCocktailBarFromWindowManager(ZII)V
    .registers 4

    .line 128
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-$$Nest$mwakupCocktailBarFromWindowManagerInternal(Lcom/android/server/cocktailbar/CocktailBarManagerService;ZII)V

    return-void
.end method
