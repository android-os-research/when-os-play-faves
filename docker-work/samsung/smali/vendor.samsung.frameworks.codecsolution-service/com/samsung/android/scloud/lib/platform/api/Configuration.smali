.class public Lcom/samsung/android/scloud/lib/platform/api/Configuration;
.super Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;
    }
.end annotation


# static fields
.field private static final SCPM_PACKAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    const-string v0, "com.samsung.android.scpm"

    const-string v1, "com.samsung.android.sm.policy"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->SCPM_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const-string v0, "ConfigurationApi"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method static synthetic lambda$isAvailable$0(Landroid/content/pm/ProviderInfo;)Z
    .registers 3
    .param p0, "p"    # Landroid/content/pm/ProviderInfo;

    .line 105
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, "com.samsung.android.scpm.policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isAvailable$1(Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;Landroid/content/pm/ProviderInfo;)V
    .registers 4
    .param p0, "booleanHolder"    # Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;
    .param p1, "p"    # Landroid/content/pm/ProviderInfo;

    .line 107
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;->value:Z

    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;
    .registers 10
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "configurationName"    # Ljava/lang/String;

    .line 69
    const-string v0, "cannot get new policy : "

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :try_start_3a
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->openFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 74
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "token"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-nez v1, :cond_88

    .line 78
    const-string v3, "getLastError"

    iget-object v4, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 79
    .local v3, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "rcode"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "rmsg"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newConfigurationDataSet(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object v0

    return-object v0

    .line 82
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_88
    const-string v3, "getStatus"

    iget-object v4, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 83
    .restart local v3    # "bundle":Landroid/os/Bundle;
    invoke-static {v3, v1}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newConfigurationDataSet(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object v0
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_98} :catch_99

    return-object v0

    .line 86
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :catch_99
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newConfigurationDataSet(Ljava/lang/Throwable;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;
    .registers 6
    .param p1, "configurationVo"    # Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "token"

    iget-object v2, p1, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "appId"

    iget-object v2, p1, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "version"

    iget-object v2, p1, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "receiverPackageName"

    iget-object v2, p1, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->receiverPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "initialize"

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 54
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newConfigurationDataSet(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object v2
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_58} :catch_59

    return-object v2

    .line 55
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :catch_59
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot register package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newConfigurationDataSet(Ljava/lang/Throwable;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object v1

    return-object v1
.end method

.method public isAvailable()Z
    .registers 10

    .line 99
    new-instance v0, Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;-><init>(Lcom/samsung/android/scloud/lib/platform/api/Configuration$1;)V

    .line 100
    .local v0, "booleanHolder":Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;
    sget-object v1, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->SCPM_PACKAGES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_73

    aget-object v4, v1, v3

    .line 102
    .local v4, "scpm":Ljava/lang/String;
    :try_start_e
    iget-object v5, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 103
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v6, :cond_39

    .line 104
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/scloud/lib/platform/api/Configuration$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/samsung/android/scloud/lib/platform/api/Configuration$$ExternalSyntheticLambda0;-><init>()V

    .line 105
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 106
    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/scloud/lib/platform/api/Configuration$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lcom/samsung/android/scloud/lib/platform/api/Configuration$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;)V

    .line 107
    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 109
    :cond_39
    iget-boolean v6, v0, Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;->value:Z

    if-eqz v6, :cond_56

    .line 110
    iget-object v6, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "V2 interface is found from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_55} :catch_57

    .line 111
    goto :goto_73

    .line 115
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_56
    goto :goto_70

    .line 113
    :catch_57
    move-exception v5

    .line 114
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "V2 interface is not found from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v4    # "scpm":Ljava/lang/String;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 118
    :cond_73
    :goto_73
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V2 interface is available : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;->value:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-boolean v1, v0, Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;->value:Z

    return v1
.end method
