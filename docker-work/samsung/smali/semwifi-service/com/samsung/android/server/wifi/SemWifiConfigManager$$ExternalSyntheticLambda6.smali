.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->$r8$lambda$q4fnJz6qivAtlrIEq4KM_EKlN6w(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
