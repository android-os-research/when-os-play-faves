.class public Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;
.super Lcom/android/server/ssrm/common/AbstractEG;
.source "ResumePackageChangedEG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/AbstractEG<",
        "Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;",
        "Lcom/android/server/ssrm/common/callback/foreground/AResumePackageChangedER;",
        ">;"
    }
.end annotation


# instance fields
.field private mPrevPackageName:Ljava/lang/String;

.field private final mUsageStatsWatcher:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPrevPackageName(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;->mPrevPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPrevPackageName(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;->mPrevPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Lcom/android/server/ssrm/common/AbstractEG;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;->mPrevPackageName:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;-><init>(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher-IA;)V

    iput-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;->mUsageStatsWatcher:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;

    return-void
.end method


# virtual methods
.method public deregister(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    nop

    .line 55
    const-string v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 56
    .local v0, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;->mUsageStatsWatcher:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 57
    return-void
.end method

.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 61
    const-class v0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public register(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    nop

    .line 48
    const-string v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 49
    .local v0, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;->mUsageStatsWatcher:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 50
    return-void
.end method
