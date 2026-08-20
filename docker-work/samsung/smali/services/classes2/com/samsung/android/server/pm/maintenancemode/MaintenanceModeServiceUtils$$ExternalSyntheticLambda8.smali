.class public final synthetic Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

.field public final synthetic f$1:Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;

.field public final synthetic f$2:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;Ljava/util/concurrent/CompletableFuture;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    iput-object p2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;

    iput-object p3, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda8;->f$2:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;

    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda8;->f$2:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->$r8$lambda$F-Etanimc0kQ2BIih5irHaeh9uc(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V

    return-void
.end method
