.class public final synthetic Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    return-void
.end method


# virtual methods
.method public final onScpmPolicyUpdated()V
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateScpmState()V

    return-void
.end method
