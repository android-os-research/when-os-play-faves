.class public Lcom/android/server/updates/EmergencyNumberDbInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "EmergencyNumberDbInstallReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EmergencyNumberDbInstallReceiver"


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "/data/misc/emergencynumberdb"

    const-string v1, "emergency_number_db"

    const-string v2, "metadata/"

    const-string/jumbo v3, "version"

    .line 32
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p0, "EmergencyNumberDbInstallReceiver"

    const-string p2, "Emergency number database is updated in file partition"

    .line 37
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "phone"

    .line 40
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 42
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->notifyOtaEmergencyNumberDbInstalled()V

    return-void
.end method
