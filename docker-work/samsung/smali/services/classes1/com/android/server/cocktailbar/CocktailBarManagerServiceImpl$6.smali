.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/content/Intent;)V
    .registers 3

    .line 2522
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 2525
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 2528
    :try_start_6
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;->val$intent:Landroid/content/Intent;

    invoke-interface {p2, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDestroy(Landroid/content/Intent;)V

    goto :goto_2e

    .line 2530
    :cond_c
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyRemoteViewsService: IRemoteViewsFactory is null for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_24} :catch_25

    goto :goto_2e

    :catch_25
    move-exception p1

    .line 2535
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 2533
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2537
    :goto_2e
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
