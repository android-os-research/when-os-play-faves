.class public final synthetic Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;

    check-cast p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->$r8$lambda$l3njFcxty3kkDqWRndgAaQClisk(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z

    move-result p0

    return p0
.end method
