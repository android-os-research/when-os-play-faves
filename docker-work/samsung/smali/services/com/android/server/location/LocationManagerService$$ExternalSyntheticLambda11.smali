.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/location/injector/AppOpsHelper$MockLocationAppOpListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onMockLocationAppOpsChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {p0}, Lcom/android/server/location/LocationManagerService;->$r8$lambda$o8nCekQ1_LpCRFOkr4k7XC03NPY(Lcom/android/server/location/LocationManagerService;)V

    return-void
.end method
