.class public final synthetic Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    return-void
.end method


# virtual methods
.method public final onScreenStateChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setScreenState(Z)V

    return-void
.end method
