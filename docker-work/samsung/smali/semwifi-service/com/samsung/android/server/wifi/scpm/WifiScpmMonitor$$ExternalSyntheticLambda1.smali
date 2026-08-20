.class public final synthetic Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    check-cast p1, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->$r8$lambda$PqDQHI_Gc0AnklaCESW6AlU-AyI(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    return-void
.end method
