.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    move-result-object p0

    return-object p0
.end method
