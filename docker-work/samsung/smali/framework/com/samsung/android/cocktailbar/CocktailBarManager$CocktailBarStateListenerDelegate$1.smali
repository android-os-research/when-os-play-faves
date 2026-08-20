.class Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;
.super Landroid/os/Handler;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

.field final synthetic blacklist val$this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cocktailbar/CocktailBarManager;)V
    .registers 4
    .param p1, "this$1"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1723
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->val$this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1726
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1727
    return-void

    .line 1729
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_e

    .line 1730
    return-void

    .line 1733
    :cond_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 1734
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-nez v1, :cond_17

    .line 1735
    return-void

    .line 1737
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 1738
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_31

    .line 1740
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;->onCocktailBarVisibilityChanged(I)V

    .line 1742
    :cond_31
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_42

    .line 1744
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;->onCocktailBarPositionChanged(I)V

    .line 1746
    :cond_42
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_53

    .line 1748
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;->onCocktailBarWindowTypeChanged(I)V

    .line 1750
    :cond_53
    return-void
.end method
