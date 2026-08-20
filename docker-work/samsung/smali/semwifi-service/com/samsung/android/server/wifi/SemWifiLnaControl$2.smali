.class Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;
.super Ljava/lang/Object;
.source "SemWifiLnaControl.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLnaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScpmConfigurationName()Ljava/lang/String;
    .registers 1

    const-string p0, "ELNA_CONTROL"

    return-object p0
.end method

.method public onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 2

    return-void
.end method

.method public onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 2

    return-void
.end method
