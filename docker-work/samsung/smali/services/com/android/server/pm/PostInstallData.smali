.class public final Lcom/android/server/pm/PostInstallData;
.super Ljava/lang/Object;
.source "PostInstallData.java"


# instance fields
.field public final args:Lcom/android/server/pm/InstallArgs;

.field public final mPostInstallRunnable:Ljava/lang/Runnable;

.field public final res:Lcom/android/server/pm/PackageInstalledInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;Ljava/lang/Runnable;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/pm/PostInstallData;->args:Lcom/android/server/pm/InstallArgs;

    .line 37
    iput-object p2, p0, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    .line 38
    iput-object p3, p0, Lcom/android/server/pm/PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    return-void
.end method
