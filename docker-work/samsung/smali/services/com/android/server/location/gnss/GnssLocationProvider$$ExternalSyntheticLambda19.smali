.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:Landroid/location/GnssStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssStatus;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda19;->f$1:Landroid/location/GnssStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda19;->f$1:Landroid/location/GnssStatus;

    invoke-static {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->$r8$lambda$X6jrPaiGMSwBBIDUbUp7YSeMNi8(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssStatus;)V

    return-void
.end method
