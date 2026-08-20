.class public final synthetic Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->$r8$lambda$IEbs-lGFvGomkOVaURxLWmuXzKs(Ljava/lang/StringBuilder;Ljava/lang/Integer;Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    return-void
.end method
