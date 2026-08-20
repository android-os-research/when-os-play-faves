.class public abstract Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;
.super Ljava/lang/Object;
.source "AbstractApi.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field protected final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Argument : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/scloud/lib/platform/api/ScpmApiContract;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    return-object v0

    .line 27
    :catchall_35
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->TAG:Ljava/lang/String;

    const-string v2, "Unknown exception"

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    return-object v1
.end method

.method protected openFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "configurationName"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.android.scpm.policy/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 37
    .local v0, "uri":Landroid/net/Uri;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_4c

    .line 38
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_4b
    .catchall {:try_start_18 .. :try_end_4b} :catchall_4d

    return-object v1

    .line 42
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_4c
    goto :goto_6a

    .line 40
    :catchall_4d
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6a
    const/4 v0, 0x0

    return-object v0
.end method
