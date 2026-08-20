.class public Lcom/samsung/android/scloud/lib/platform/api/Registration;
.super Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;
.source "Registration.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    const-string v0, "RegistrationApi"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appSignature"    # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/Registration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :try_start_22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "appId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "appSignature"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "receiverPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "register"

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/platform/api/Registration;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/scloud/lib/platform/api/Registration;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 39
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newScpmDataSet(Landroid/os/Bundle;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    move-result-object v2
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4b} :catch_4c

    return-object v2

    .line 40
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :catch_4c
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/platform/api/Registration;->TAG:Ljava/lang/String;

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

    .line 42
    invoke-static {v0}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newScpmDataSet(Ljava/lang/Throwable;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    move-result-object v1

    return-object v1
.end method

.method public unregister(Ljava/lang/String;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
    .registers 6
    .param p1, "appId"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/Registration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegister : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :try_start_18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "unregister"

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/platform/api/Registration;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/scloud/lib/platform/api/Registration;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 59
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newScpmDataSet(Landroid/os/Bundle;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    move-result-object v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_32} :catch_33

    return-object v2

    .line 60
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :catch_33
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/platform/api/Registration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot unregister package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newScpmDataSet(Ljava/lang/Throwable;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    move-result-object v1

    return-object v1
.end method
