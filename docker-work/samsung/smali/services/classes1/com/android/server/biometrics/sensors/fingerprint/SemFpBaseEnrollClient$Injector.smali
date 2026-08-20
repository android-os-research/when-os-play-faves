.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;
.super Ljava/lang/Object;
.source "SemFpBaseEnrollClient.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createUdfpsSysUiImpl(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;
    .registers 5

    .line 70
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;-><init>(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public sendBigDataForEnrollSuccess(I)V
    .registers 5

    .line 51
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FPEN"

    const/4 v1, -0x1

    const/4 v2, 0x3

    .line 51
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public startLogging(ILjava/lang/String;)V
    .registers 4

    .line 58
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    const-string v0, "E"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpStart(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopLogging(ILjava/lang/String;III)V
    .registers 13

    .line 64
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    int-to-long v3, p5

    move v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpStop(ILjava/lang/String;JII)V

    return-void
.end method
