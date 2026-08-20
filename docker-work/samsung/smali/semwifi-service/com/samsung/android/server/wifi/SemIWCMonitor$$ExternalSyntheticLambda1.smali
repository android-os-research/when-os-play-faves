.class public final synthetic Lcom/samsung/android/server/wifi/SemIWCMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    return-void
.end method


# virtual methods
.method public final onWifiStateChanged(II)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->$r8$lambda$x6u1McPeq4uLtTIdhEB819Bys1E(Lcom/samsung/android/server/wifi/SemIWCMonitor;II)V

    return-void
.end method
