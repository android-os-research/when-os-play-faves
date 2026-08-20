.class public Lcom/mediatek/search/ISearchEngineManagerService$Default;
.super Ljava/lang/Object;
.source "ISearchEngineManagerService.java"

# interfaces
.implements Lcom/mediatek/search/ISearchEngineManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/search/ISearchEngineManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAvailables()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/common/search/SearchEngine;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "favicon"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefault()Lcom/mediatek/common/search/SearchEngine;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 4
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setDefault(Lcom/mediatek/common/search/SearchEngine;)Z
    .registers 3
    .param p1, "engine"    # Lcom/mediatek/common/search/SearchEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method
