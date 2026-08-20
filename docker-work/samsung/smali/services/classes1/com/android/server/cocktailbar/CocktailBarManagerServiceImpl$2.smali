.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .registers 2

    .line 1229
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1232
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmCocktailArr(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1233
    :try_start_7
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$mensureStateLoadedLocked(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Z

    .line 1234
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$msaveStateLocked(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    .line 1235
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method
