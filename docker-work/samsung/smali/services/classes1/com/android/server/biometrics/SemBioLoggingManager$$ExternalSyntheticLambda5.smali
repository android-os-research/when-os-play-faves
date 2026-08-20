.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJILandroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iput p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$1:I

    iput-wide p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$2:J

    iput p5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$3:I

    iput-object p6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$4:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$1:I

    iget-wide v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$2:J

    iget v4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$3:I

    iget-object v5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;->f$4:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/SemBioLoggingManager;->$r8$lambda$0ATshPbwyQ6E-ILAaVpxdQFzARA(Lcom/android/server/biometrics/SemBioLoggingManager;IJILandroid/content/Context;)V

    return-void
.end method
