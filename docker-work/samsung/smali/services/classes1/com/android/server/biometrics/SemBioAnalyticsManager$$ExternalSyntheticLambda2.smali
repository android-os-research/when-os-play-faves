.class public final synthetic Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioAnalyticsManager;

.field public final synthetic f$1:Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioAnalyticsManager;Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    iput-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->$r8$lambda$3eM2p-7RKBGGUEJky9ezDzhBEqA(Lcom/android/server/biometrics/SemBioAnalyticsManager;Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    return-void
.end method
