.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda26;->f$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda26;->f$1:Z

    iput p3, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda26;->f$2:I

    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda26;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda26;->f$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda26;->f$1:Z

    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda26;->f$2:I

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$$ExternalSyntheticLambda26;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->$r8$lambda$q7GpVYYPk1tLzNFAe4ecoi_UfkI(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZILjava/lang/String;)V

    return-void
.end method
