.class public final synthetic Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    iput p2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    iget v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda0;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->$r8$lambda$JPrthkpaylgQj3Hdrmq5PWxfRNk(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;IJ)V

    return-void
.end method
