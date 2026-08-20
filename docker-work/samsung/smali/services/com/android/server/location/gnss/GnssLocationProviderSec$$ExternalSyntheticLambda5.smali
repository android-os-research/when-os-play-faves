.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

.field public final synthetic f$1:Ljava/io/StringWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/io/StringWriter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda5;->f$1:Ljava/io/StringWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda5;->f$1:Ljava/io/StringWriter;

    invoke-static {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->$r8$lambda$mT8-ERFUlA91JbnU6bbPXdpl-1g(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/io/StringWriter;)V

    return-void
.end method
