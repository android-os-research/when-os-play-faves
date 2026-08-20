.class public Lcom/samsung/android/cocktailbar/ICocktailHost$Default;
.super Ljava/lang/Object;
.source "ICocktailHost.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/ICocktailHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/ICocktailHost;
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

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeVisibleEdgeService(ZI)V
    .registers 3
    .param p1, "visible"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist closeCocktail(III)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist notePauseComponent(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "pauseComponentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist noteResumeComponent(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "resumeComponentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist notifyKeyguardState(ZI)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist notifyWakeUpState(ZII)V
    .registers 4
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist partiallyUpdateHelpView(ILandroid/widget/RemoteViews;I)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "helpView"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist removeCocktail(II)V
    .registers 3
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist sendExtraData(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "extraData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist setDisableTickerView(II)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist setPullToRefresh(IILandroid/app/PendingIntent;I)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist showCocktail(II)V
    .registers 3
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist switchDefaultCocktail(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist updateToolLauncher(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist viewDataChanged(III)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
