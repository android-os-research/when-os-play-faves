.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceContainer.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->registerTaskSystemBarsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .registers 2

    .line 1427
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransientSystemBarsVisibilityChanged(IZZ)V
    .registers 4

    .line 1431
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmSystemUiVisibilityPolicyController(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->transientChanged(Z)V

    return-void
.end method
