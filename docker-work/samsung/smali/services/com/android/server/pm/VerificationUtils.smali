.class public final Lcom/android/server/pm/VerificationUtils;
.super Ljava/lang/Object;
.source "VerificationUtils.java"


# static fields
.field public static final DEFAULT_STREAMING_VERIFICATION_TIMEOUT:J = 0xbb8L

.field public static final DEFAULT_VERIFICATION_TIMEOUT:J = 0x2710L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V
    .registers 9

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_VERIFIED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.android.package-archive"

    .line 82
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 83
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.content.pm.extra.VERIFICATION_ID"

    .line 84
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "android.content.pm.extra.VERIFICATION_RESULT"

    .line 85
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_21

    const-string p0, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    .line 87
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_21
    const-string p0, "android.content.pm.extra.DATA_LOADER_TYPE"

    .line 89
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 91
    invoke-virtual {p6, v0, p5, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultStreamingVerificationTimeout(Landroid/content/Context;)J
    .registers 6

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "streaming_verifier_timeout"

    const-wide/16 v1, 0xbb8

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 75
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultVerificationTimeout(Landroid/content/Context;)J
    .registers 6

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "verifier_timeout"

    const-wide/16 v1, 0x2710

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 61
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVerificationTimeout(Landroid/content/Context;Z)J
    .registers 2

    if-eqz p1, :cond_7

    .line 45
    invoke-static {p0}, Lcom/android/server/pm/VerificationUtils;->getDefaultStreamingVerificationTimeout(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0

    .line 47
    :cond_7
    invoke-static {p0}, Lcom/android/server/pm/VerificationUtils;->getDefaultVerificationTimeout(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method
