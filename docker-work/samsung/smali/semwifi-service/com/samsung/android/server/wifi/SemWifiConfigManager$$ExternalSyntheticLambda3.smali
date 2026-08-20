.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

.field public final synthetic f$1:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;Landroid/net/wifi/WifiConfiguration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda3;->f$1:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda3;->f$1:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->$r8$lambda$jDgXgfZMW0SbGYiS7eouSGy1Mag(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
