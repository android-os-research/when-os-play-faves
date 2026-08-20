.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/content/Context;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iput p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$2:J

    iput p5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$3:I

    iput p6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$4:I

    iput-object p7, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$5:Landroid/content/Context;

    iput p8, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$2:J

    iget v4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$3:I

    iget v5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$4:I

    iget-object v6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$5:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$6:I

    invoke-static/range {v0 .. v7}, Lcom/android/server/biometrics/SemBioLoggingManager;->$r8$lambda$Fcb3mMQwClaBl_fy5C6o7TNAe_Y(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;I)V

    return-void
.end method
