.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda12;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda12;->f$1:Z

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->$r8$lambda$cUZRkl0DJmVIpUx7a-8qmpNeyd8(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    return-void
.end method
