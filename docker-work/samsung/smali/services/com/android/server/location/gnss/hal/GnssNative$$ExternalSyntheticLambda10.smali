.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$1:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->$r8$lambda$gwFEvHbx0tPHheG56uTmqu3Bbqs(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    return-void
.end method
