.class public Lcom/samsung/android/bbccommon/BiometricsHelper;
.super Ljava/lang/Object;
.source "BiometricsHelper.java"


# static fields
.field private static final FOR_FINGERPRINT_AUTHENITCATION:Ljava/lang/String; = "for_fingerprint_authentication"

.field private static final FOR_IRIS_AUTHENITCATION:Ljava/lang/String; = "for_iris_authentication"

.field private static final KEY_LOCK_SCREEN_FINGERPRINT:Ljava/lang/String; = "lock_screen_fingerprint"

.field private static final KEY_LOCK_SCREEN_IRIS:Ljava/lang/String; = "lock_screen_iris"

.field static final TAG:Ljava/lang/String; = "BiometricsHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static confirmFingerPrint(Landroid/app/Activity;I)V
    .registers 2

    const-string p0, "BiometricsHelper"

    const-string p1, "confirmFingerPrint() - "

    .line 60
    invoke-static {p0, p1}, Lcom/samsung/android/bbccommon/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static confirmIris(Landroid/app/Activity;I)V
    .registers 2

    const-string p0, "BiometricsHelper"

    const-string p1, "confirmIris() - "

    .line 80
    invoke-static {p0, p1}, Lcom/samsung/android/bbccommon/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enrollFingerPrint(Landroid/app/Activity;I)V
    .registers 2

    const-string p0, "BiometricsHelper"

    const-string p1, "enrollFingerPrint() - "

    .line 70
    invoke-static {p0, p1}, Lcom/samsung/android/bbccommon/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enrollIris(Landroid/app/Activity;I)V
    .registers 2

    const-string p0, "BiometricsHelper"

    const-string p1, "enrollIris() - "

    .line 90
    invoke-static {p0, p1}, Lcom/samsung/android/bbccommon/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getEnrolledFingers(Landroid/content/Context;)I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static hasEnrolledIrises(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static supportFingerPrint()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportIris()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method
