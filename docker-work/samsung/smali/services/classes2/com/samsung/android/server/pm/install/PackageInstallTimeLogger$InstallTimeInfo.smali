.class public final Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;
.super Ljava/lang/Object;
.source "PackageInstallTimeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallTimeInfo"
.end annotation


# instance fields
.field public mBaseTime:J

.field public final mInfoList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastTime:J

.field public mPkgName:Ljava/lang/String;

.field public mUserId:I

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;-><init>()V

    return-void
.end method
