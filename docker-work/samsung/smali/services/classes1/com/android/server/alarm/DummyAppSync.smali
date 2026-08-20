.class public Lcom/android/server/alarm/DummyAppSync;
.super Lcom/android/server/alarm/AppSyncWrapper;
.source "AppSyncInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1275
    invoke-direct {p0}, Lcom/android/server/alarm/AppSyncWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    const-string p0, "<AppSync Disabled>"

    .line 1285
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getWindowLength()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isAdjustableAlarm(IJJJILjava/lang/String;)Z
    .registers 10

    const/4 p0, 0x0

    return p0
.end method

.method public isSuspiciousAlarm(IJILjava/lang/String;)Z
    .registers 6

    const/4 p0, 0x0

    return p0
.end method

.method public isTargetApplication(ILjava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method
