.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field public final synthetic f$1:Lcom/samsung/android/wifi/SemWifiConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/wifi/SemWifiConfiguration;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->$r8$lambda$0N9nWUUDPBdidebph-Amvrts9P0(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    return-void
.end method
