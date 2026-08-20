.class public final synthetic Lcom/samsung/android/server/wifi/share/WifiContinuityService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    return-void
.end method


# virtual methods
.method public final onNetworkAdded(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->$r8$lambda$f6x53lGLlFtwgY5VWfNwunKiy0g(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
