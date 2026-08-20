.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceConnectionProxy"
.end annotation


# instance fields
.field public final mConnectionCb:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 2842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2843
    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->mConnectionCb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .registers 1

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 2864
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    return-void
.end method
