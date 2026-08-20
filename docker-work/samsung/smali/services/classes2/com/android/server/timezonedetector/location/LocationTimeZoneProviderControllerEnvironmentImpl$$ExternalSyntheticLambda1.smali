.class public final synthetic Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/timezonedetector/ConfigurationChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    return-void
.end method


# virtual methods
.method public final onChange()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    invoke-static {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->$r8$lambda$CdJ9kRUZ-Pw-PUZ9u5XvQDqpKLw(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    return-void
.end method
