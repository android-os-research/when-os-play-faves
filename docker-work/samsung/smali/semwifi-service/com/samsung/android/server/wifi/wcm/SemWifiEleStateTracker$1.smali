.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;
.super Ljava/lang/Object;
.source "SemWifiEleStateTracker.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEleDetect()V
    .registers 2

    .line 151
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmGeomagneticEleState(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Z)V

    const-string p0, "SemWifiEleStateTracker"

    const-string v0, " GEO Ele TRUE"

    .line 152
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEleNotDetect()V
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmGeomagneticEleState(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Z)V

    const-string p0, "SemWifiEleStateTracker"

    const-string v0, " GEO Ele FALSE"

    .line 158
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
