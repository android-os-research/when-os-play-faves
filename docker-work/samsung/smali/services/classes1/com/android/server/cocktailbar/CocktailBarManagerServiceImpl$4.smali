.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->disableCocktail(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

.field public final synthetic val$enabledCocktailList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/util/ArrayList;)V
    .registers 3

    .line 2108
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->val$enabledCocktailList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2111
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmSettings(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->val$enabledCocktailList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->setEnabledCocktailsLocked(Ljava/util/ArrayList;)V

    return-void
.end method
