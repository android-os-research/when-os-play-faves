.class public final synthetic Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Landroid/location/util/identity/CallerIdentity;


# direct methods
.method public synthetic constructor <init>(Landroid/location/util/identity/CallerIdentity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;->f$0:Landroid/location/util/identity/CallerIdentity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;->f$0:Landroid/location/util/identity/CallerIdentity;

    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-static {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->$r8$lambda$BMAKdrr3U7kK018-vHLG2KNRWNg(Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method
