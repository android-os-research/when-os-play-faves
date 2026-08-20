.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->$r8$lambda$xQpnL-bNw83w_3HLNIRJXGdpL3k(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    return-void
.end method
