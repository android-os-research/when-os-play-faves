.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;
.super Ljava/lang/Object;
.source "PackageFeatureShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
    }
.end annotation


# instance fields
.field public final mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    return-void
.end method


# virtual methods
.method public executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    .line 55
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_94

    .line 56
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p3, :cond_49

    array-length p3, p2

    if-lez p3, :cond_49

    sget-object p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    iget-object p3, p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    aget-object v0, p2, v2

    .line 57
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_49

    .line 58
    array-length p3, p2

    if-eq p3, v3, :cond_2b

    aget-object p2, p2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2c

    :cond_2b
    move v2, v3

    .line 59
    :cond_2c
    invoke-static {v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->setShowPackageName(Z)V

    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->dump(Ljava/io/PrintWriter;)V

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ShowPackageName="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 64
    :cond_49
    iget-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p3, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->dump(Ljava/io/PrintWriter;)V

    .line 65
    array-length p3, p2

    if-eq p3, v3, :cond_52

    return v3

    .line 66
    :cond_52
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 67
    aget-object p2, p2, v2

    .line 68
    sget-object p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    iget-object p3, p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_71

    const-string p2, "Started update."

    .line 69
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->initializeGroups()V

    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->updateGroupData(Ljava/lang/String;)V

    return v3

    .line 74
    :cond_71
    sget-object p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    iget-object p3, p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_93

    const-string p2, "Started reset."

    .line 75
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->deleteCacheFiles()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->initializeGroups()V

    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->updateGroupData(Ljava/lang/String;)V

    :cond_93
    return v3

    .line 84
    :cond_94
    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeature;->values()[Lcom/samsung/android/server/packagefeature/PackageFeature;

    move-result-object v0

    array-length v4, v0

    move v5, v2

    :goto_9a
    if-ge v5, v4, :cond_dd

    aget-object v6, v0, v5

    .line 85
    iget-boolean v7, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mEnabled:Z

    if-eqz v7, :cond_da

    iget-object v7, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    if-nez v7, :cond_a7

    goto :goto_da

    .line 89
    :cond_a7
    iget-object v8, v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->mCommands:[Ljava/lang/String;

    array-length v9, v8

    move v10, v2

    :goto_ab
    if-ge v10, v9, :cond_da

    aget-object v11, v8, v10

    .line 90
    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b8

    add-int/lit8 v10, v10, 0x1

    goto :goto_ab

    .line 93
    :cond_b8
    invoke-virtual {v7, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->assertValidOptions(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bf

    return v3

    .line 96
    :cond_bf
    aget-object v0, p2, v2

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    array-length v2, p2

    if-le v2, v3, :cond_cc

    aget-object v1, p2, v3

    .line 97
    :cond_cc
    invoke-virtual {v7, p3, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->adjustExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p0, v6, v0, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->executeDebugMode(Lcom/samsung/android/server/packagefeature/PackageFeature;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_da
    :goto_da
    add-int/lit8 v5, v5, 0x1

    goto :goto_9a

    :cond_dd
    return v2
.end method
