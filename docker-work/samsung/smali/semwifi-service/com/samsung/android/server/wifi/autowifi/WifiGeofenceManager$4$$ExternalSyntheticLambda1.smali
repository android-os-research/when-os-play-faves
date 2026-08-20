.class public final synthetic Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;

    iput p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;

    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->$r8$lambda$KRHkuJpnDe6--FHXg7OrV-I0370(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;ILcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    return-void
.end method
