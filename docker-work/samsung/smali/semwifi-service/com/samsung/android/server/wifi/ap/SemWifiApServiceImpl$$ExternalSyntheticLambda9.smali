.class public final synthetic Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda9;->f$2:Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda9;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda9;->f$2:Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->$r8$lambda$lB_eF9n9gn3phqfZIAtFpZt-_8k(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V

    return-void
.end method
