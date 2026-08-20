.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;
.super Landroid/os/Handler;
.source "CocktailBarManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EdgeStartHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/Looper;)V
    .registers 3

    .line 2971
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 2972
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 2977
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x1000020

    .line 2978
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2980
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
