.class public Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;
.super Ljava/lang/Object;
.source "ActiveSensorFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter$ActiveSensorFilterHolder;
    }
.end annotation


# static fields
.field public static final SPLIT_TOKEN_LINE:Ljava/lang/String; = ":"

.field public static final SPLIT_TOKEN_TYPE_UID:Ljava/lang/String; = " "


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mFilterTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->mFilterTypeList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;
    .registers 1

    .line 35
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter$ActiveSensorFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

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

    .line 49
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_27

    .line 50
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_27

    .line 53
    :cond_16
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->mSensorList:Ljava/util/List;

    if-eqz p0, :cond_27

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/16 p0, 0x18

    return p0

    :cond_27
    :goto_27
    return p2
.end method

.method public getActiveSensorList()V
    .registers 4

    const-string/jumbo v0, "sdhms"

    .line 60
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 62
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 65
    :try_start_f
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->parseActiveSensor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->mSensorList:Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_31

    :catch_1a
    move-exception v0

    .line 68
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception at getActiveSensorList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public final isTarget(II)Z
    .registers 3

    .line 94
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->mFilterTypeList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final parseActiveSensor(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, ":"

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 80
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_3c

    aget-object v4, p1, v3

    const-string v5, " "

    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_39

    .line 83
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 84
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 85
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->isTarget(II)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 90
    :cond_3c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method
