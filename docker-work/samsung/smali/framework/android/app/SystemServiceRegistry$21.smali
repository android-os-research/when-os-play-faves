.class Landroid/app/SystemServiceRegistry$21;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/location/CountryDetector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 605
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Landroid/location/CountryDetector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 608
    const-string v0, "country_detector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 609
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/location/CountryDetector;

    invoke-static {v0}, Landroid/location/ICountryDetector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ICountryDetector;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/CountryDetector;-><init>(Landroid/location/ICountryDetector;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$21;->createService()Landroid/location/CountryDetector;

    move-result-object v0

    return-object v0
.end method
