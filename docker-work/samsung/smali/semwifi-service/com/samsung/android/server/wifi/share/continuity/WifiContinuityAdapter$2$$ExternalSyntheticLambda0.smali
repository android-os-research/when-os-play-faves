.class public final synthetic Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;ILcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    iput p2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    iput-object p4, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$3:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    iget v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$3:[B

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->$r8$lambda$izK3Tnq5LfJTf4pH5LSt5YwJ6yg(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;ILcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V

    return-void
.end method
