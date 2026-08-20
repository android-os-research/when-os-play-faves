.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/PowerManagerService;

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iput-wide p3, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda3;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda3;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->$r8$lambda$cRCVngYLocS7EtX9xK1wHC4TbTE(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;J)V

    return-void
.end method
