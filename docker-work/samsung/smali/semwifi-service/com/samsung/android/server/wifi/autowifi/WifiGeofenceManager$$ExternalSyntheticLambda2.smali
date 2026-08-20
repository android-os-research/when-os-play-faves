.class public final synthetic Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->$r8$lambda$B4wQgu2JxhbRCbNEh9m8aysngNY(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    return-void
.end method
