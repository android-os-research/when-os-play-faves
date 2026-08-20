.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field public final synthetic f$1:Lcom/android/server/PackageWatchdog$ObserverInternal;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/PackageWatchdog;

    iput-object p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/PackageWatchdog$ObserverInternal;

    iput-object p3, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda10;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/PackageWatchdog;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda10;->f$2:Ljava/util/Set;

    invoke-static {v0, v1, p0}, Lcom/android/server/PackageWatchdog;->$r8$lambda$Rm5KotDfsFJeM-DWJC6nNnoVwuA(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    return-void
.end method
