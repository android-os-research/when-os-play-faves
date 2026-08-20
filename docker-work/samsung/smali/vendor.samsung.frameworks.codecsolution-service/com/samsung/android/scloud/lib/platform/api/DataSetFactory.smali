.class Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;
.super Ljava/lang/Object;
.source "DataSetFactory.java"


# static fields
.field private static final INTERNAL_AGENT_ERROR:I = 0x55d4a80


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newConfigurationDataSet(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;
    .registers 12
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;

    .line 31
    invoke-static {p0}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newScpmDataSet(Landroid/os/Bundle;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    move-result-object v0

    .line 32
    .local v0, "scpmDataSet":Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
    const/4 v1, 0x0

    .line 33
    .local v1, "filterId":Ljava/lang/String;
    if-eqz p0, :cond_e

    .line 34
    const/4 v2, 0x0

    const-string v3, "filterId"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    :cond_e
    new-instance v9, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    iget v3, v0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->result:I

    iget v4, v0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rcode:I

    iget-object v5, v0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rmsg:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->token:Ljava/lang/String;

    move-object v2, v9

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v9
.end method

.method static newConfigurationDataSet(Ljava/lang/Throwable;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;
    .registers 9
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 41
    new-instance v7, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is an exception, please check  { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    const v2, 0x55d4a80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v7
.end method

.method static newScpmDataSet(Landroid/os/Bundle;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
    .registers 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 13
    const/4 v0, 0x2

    .line 14
    .local v0, "result":I
    const/4 v1, 0x0

    .line 15
    .local v1, "token":Ljava/lang/String;
    const v2, 0x55d4a80

    .line 16
    .local v2, "rcode":I
    const-string v3, "The returned value from SCPM is not correct(null or empty)."

    .line 17
    .local v3, "rmsg":Ljava/lang/String;
    if-eqz p0, :cond_26

    .line 18
    const/4 v4, 0x2

    const-string v5, "result"

    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 19
    const-string v4, "token"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    const v4, 0x55d4a80

    const-string v6, "rcode"

    invoke-virtual {p0, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 21
    const-string v4, "rmsg"

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    :cond_26
    new-instance v4, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method static newScpmDataSet(Ljava/lang/Throwable;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
    .registers 6
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 27
    new-instance v0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is an exception, please check  { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0x55d4a80

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
