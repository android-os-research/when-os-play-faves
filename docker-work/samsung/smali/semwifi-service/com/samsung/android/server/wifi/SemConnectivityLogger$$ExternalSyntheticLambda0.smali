.class public final synthetic Lcom/samsung/android/server/wifi/SemConnectivityLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemConnectivityLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemConnectivityLogger;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    return-void
.end method


# virtual methods
.method public final onScreenStateChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->$r8$lambda$PDc5yx2PqlRG83eD1GgL3ih8NJc(Lcom/samsung/android/server/wifi/SemConnectivityLogger;Z)V

    return-void
.end method
