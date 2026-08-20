.class public final synthetic Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist createService()Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/app/tare/EconomyManager;

    invoke-direct {v0}, Landroid/app/tare/EconomyManager;-><init>()V

    return-object v0
.end method
