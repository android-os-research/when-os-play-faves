.class public abstract Lcom/android/server/alarm/AppSyncWrapper;
.super Ljava/lang/Object;
.source "AppSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;
    }
.end annotation


# static fields
.field public static final LOG:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1249
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/alarm/AppSyncWrapper;->LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
