.class public final synthetic Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->$r8$lambda$PJ5p0lKwodOuUlHxSWfdgGw4hLg(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;Landroid/content/Intent;)V

    return-void
.end method
