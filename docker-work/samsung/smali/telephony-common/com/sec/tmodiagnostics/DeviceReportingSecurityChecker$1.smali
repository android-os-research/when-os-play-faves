.class Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceReportingSecurityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string p0, "DeviceReportingSecurityChecker"

    if-eqz p2, :cond_20

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive mSimStateReceiver intent = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_20
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfgetmTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    .line 159
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfgetmTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive mSimStateReceiver simState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_5b

    if-ne v0, v2, :cond_4c

    goto :goto_5b

    .line 169
    :cond_4c
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_57

    const-string p1, "SIM state is not ready!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_57
    invoke-static {p2}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfputmIsSim(Z)V

    goto :goto_7a

    .line 162
    :cond_5b
    :goto_5b
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$smisTMOSIM()Z

    move-result p1

    if-nez p1, :cond_77

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$smisSPRSIM()Z

    move-result p1

    if-eqz p1, :cond_68

    goto :goto_77

    .line 165
    :cond_68
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_73

    const-string p1, "SIM card is not TMO\'s Or SPR\'s SIM!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_73
    invoke-static {p2}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfputmIsSim(Z)V

    goto :goto_7a

    .line 163
    :cond_77
    :goto_77
    invoke-static {v1}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfputmIsSim(Z)V

    .line 172
    :goto_7a
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_98

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsSim: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->-$$Nest$sfgetmIsSim()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    return-void
.end method
