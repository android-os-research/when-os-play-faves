.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->$r8$lambda$F2qAGs0vbC1iicGUxy3oWpgdN1A(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/lang/String;)V

    return-void
.end method
