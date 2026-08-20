.class public final synthetic Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RestartAppPolicy;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/android/server/wm/Task;

.field public final synthetic f$6:Landroid/content/Intent;

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Landroid/app/ActivityOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RestartAppPolicy;Ljava/lang/String;IIILcom/android/server/wm/Task;Landroid/content/Intent;IILandroid/app/ActivityOptions;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RestartAppPolicy;

    iput-object p2, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$5:Lcom/android/server/wm/Task;

    iput-object p7, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$6:Landroid/content/Intent;

    iput p8, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$7:I

    iput p9, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$8:I

    iput-object p10, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$9:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RestartAppPolicy;

    iget-object v1, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$4:I

    iget-object v5, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$5:Lcom/android/server/wm/Task;

    iget-object v6, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$6:Landroid/content/Intent;

    iget v7, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$7:I

    iget v8, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$8:I

    iget-object v9, p0, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;->f$9:Landroid/app/ActivityOptions;

    invoke-static/range {v0 .. v9}, Lcom/android/server/wm/RestartAppPolicy;->$r8$lambda$VPiaLkw0tI6L539GRRwb91s7VY4(Lcom/android/server/wm/RestartAppPolicy;Ljava/lang/String;IIILcom/android/server/wm/Task;Landroid/content/Intent;IILandroid/app/ActivityOptions;)V

    return-void
.end method
