.class public final synthetic Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;->f$1:Z

    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;->f$1:Z

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Lcom/samsung/android/server/wifi/db/WifiControlListener;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->$r8$lambda$ZPO_q5k2vA3tUXq0AP1mjer0d8Q(Ljava/lang/String;ZZLcom/samsung/android/server/wifi/db/WifiControlListener;)V

    return-void
.end method
