.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field public final synthetic f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/PackageWatchdog;

    iput-object p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/PackageWatchdog;

    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    invoke-static {v0, p0}, Lcom/android/server/PackageWatchdog;->$r8$lambda$Ub0Cl7quFe7Vn-PJKB0T0AdAjd4(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    return-void
.end method
