.class public final Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;
.super Ljava/lang/Object;
.source "CocktailBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TurnOffWakeUpCocktailBarRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 111
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-$$Nest$fgetmCocktailBarService(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->wakeupCocktailBarInternal(ZII)V

    .line 112
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    if-eqz p0, :cond_1a

    const-wide/16 v0, -0x1

    .line 114
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManagerInternal;->setUserActivityTimeoutOverrideFromWindowManager(J)V

    :cond_1a
    return-void
.end method
