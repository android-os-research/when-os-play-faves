.class public Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;
.super Ljava/lang/Object;
.source "JobSchedulerPackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;
    .registers 1

    .line 21
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 5

    .line 41
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isInRunningJobList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0x13

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->mContext:Landroid/content/Context;

    return-void
.end method
