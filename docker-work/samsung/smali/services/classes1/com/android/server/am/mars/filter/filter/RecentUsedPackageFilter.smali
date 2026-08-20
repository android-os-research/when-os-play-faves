.class public Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;
.super Ljava/lang/Object;
.source "RecentUsedPackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public RogueApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mUnUsedTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mContext:Landroid/content/Context;

    const-wide/32 v0, 0xdbba0

    .line 18
    iput-wide v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.codoon.gps"

    const-string v2, "com.traffic.panda"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->RogueApp:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;
    .registers 1

    .line 28
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 7

    const/4 p3, 0x4

    if-ne p4, p3, :cond_9

    const-wide/32 p3, 0xea60

    .line 48
    iput-wide p3, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    goto :goto_26

    .line 49
    :cond_9
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    if-eqz p3, :cond_21

    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->RogueApp:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_21

    const-wide/32 p3, 0x493e0

    .line 50
    iput-wide p3, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    goto :goto_26

    :cond_21
    const-wide/32 p3, 0xdbba0

    .line 52
    iput-wide p3, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    .line 55
    :goto_26
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getLastUsedTime(Ljava/lang/String;I)J

    move-result-wide p1

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    sub-long/2addr p3, v0

    cmp-long p0, p3, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-lez p0, :cond_3d

    move p0, p1

    goto :goto_3e

    :cond_3d
    move p0, p2

    :goto_3e
    if-nez p0, :cond_41

    return p1

    :cond_41
    return p2
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mContext:Landroid/content/Context;

    return-void
.end method
