.class public Lcom/samsung/android/psitrackersdk/framework/PSITrackerServiceSDK;
.super Ljava/lang/Object;
.source "PSITrackerServiceSDK.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PSITrackerServiceSDK"

.field public static final VERSION:Ljava/lang/String; = "1.0.4"


# instance fields
.field public mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "PkgPredictorService"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/ipm/SecIpmManager;

    iput-object p1, p0, Lcom/samsung/android/psitrackersdk/framework/PSITrackerServiceSDK;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :goto_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "after check pts: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/psitrackersdk/framework/PSITrackerServiceSDK;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PSITrackerServiceSDK"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "1.0.4"

    return-object v0
.end method

.method public static isSupported()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getAvailableMemInfo(JJ)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/psitrackersdk/framework/PSITrackerServiceSDK;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/ipm/SecIpmManager;->getAvailableMemInfo(JJ)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 48
    :goto_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_46

    .line 49
    new-instance p2, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;

    .line 50
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/ipm/PSIAvailableMem;

    invoke-virtual {p3}, Lcom/samsung/android/ipm/PSIAvailableMem;->getAvailMem()J

    move-result-wide v2

    .line 51
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/ipm/PSIAvailableMem;

    invoke-virtual {p3}, Lcom/samsung/android/ipm/PSIAvailableMem;->getRunning()J

    move-result-wide v4

    .line 52
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/ipm/PSIAvailableMem;

    invoke-virtual {p3}, Lcom/samsung/android/ipm/PSIAvailableMem;->getCached()J

    move-result-wide v6

    .line 53
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/ipm/PSIAvailableMem;

    invoke-virtual {p3}, Lcom/samsung/android/ipm/PSIAvailableMem;->getCheckTime()J

    move-result-wide v8

    move-object v1, p2

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;-><init>(JJJJ)V

    .line 54
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_43} :catch_46

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :catch_46
    :cond_46
    return-object v0
.end method
