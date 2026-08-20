.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:[Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;[Landroid/location/Location;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda23;->f$1:[Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda23;->f$1:[Landroid/location/Location;

    invoke-static {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->$r8$lambda$Qkc1m1tjsrmTltXLUWHxLouLa9w(Lcom/android/server/location/gnss/hal/GnssNative;[Landroid/location/Location;)V

    return-void
.end method
