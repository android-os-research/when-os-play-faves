.class public Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;
.super Ljava/lang/Object;
.source "CocktailBarSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-static {v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->-$$Nest$fgetmCocktailMap(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 150
    :try_start_7
    iget-object p0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-static {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->-$$Nest$mupdateEnabledCocktailListLocked(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    .line 151
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method
