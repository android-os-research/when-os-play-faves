.class public Lvendor/samsung/frameworks/codecsolution/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CodecSolution_Utils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    const-string v0, "CodecSolution_Utils"

    const-string v1, "getNavigationBarHeight()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "returnValue":I
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, "resourceId":I
    if-lez v2, :cond_21

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_22

    move v1, v3

    .line 91
    .end local v2    # "resourceId":I
    :cond_21
    goto :goto_28

    .line 89
    :catch_22
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Can\'t get navigation_bar_height"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigation_bar_height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v1
.end method

.method public static getPkgName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPid"    # I

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "pkg":Ljava/lang/String;
    nop

    .line 30
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 31
    .local v1, "manager":Landroid/app/ActivityManager;
    nop

    .line 32
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 33
    .local v2, "runningAppProcessInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_29

    .line 34
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 35
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_28

    .line 36
    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 37
    goto :goto_29

    .line 39
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_28
    goto :goto_15

    .line 41
    :cond_29
    :goto_29
    if-nez v0, :cond_2d

    .line 42
    const-string v0, ""

    .line 43
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CodecSolution_Utils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-object v0
.end method

.method public static getTopPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 49
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 51
    .local v1, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v2, ""

    if-eqz v1, :cond_30

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_18

    goto :goto_30

    .line 55
    :cond_18
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "topPackage":Ljava/lang/String;
    if-nez v3, :cond_2f

    .line 57
    const-string v4, "CodecSolution_Utils"

    const-string v5, "getTopPackage : Failed to get top information"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object v2

    .line 60
    :cond_2f
    return-object v3

    .line 52
    .end local v3    # "topPackage":Ljava/lang/String;
    :cond_30
    :goto_30
    return-object v2
.end method

.method public static versionCompare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 64
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "vals1":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "vals2":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 68
    .local v2, "i":I
    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_1e

    array-length v3, v0

    if-ge v2, v3, :cond_1e

    aget-object v3, v1, v2

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 72
    :cond_1e
    array-length v3, v1

    if-ge v2, v3, :cond_39

    array-length v3, v0

    if-ge v2, v3, :cond_39

    .line 73
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    .line 74
    .local v3, "diff":I
    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v4

    return v4

    .line 78
    .end local v3    # "diff":I
    :cond_39
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v3

    return v3
.end method
