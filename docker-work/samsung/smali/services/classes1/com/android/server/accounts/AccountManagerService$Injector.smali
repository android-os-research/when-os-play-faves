.class Lcom/android/server/accounts/AccountManagerService$Injector;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 6665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6666
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addLocalService(Landroid/accounts/AccountManagerInternal;)V
    .registers 2

    .line 6681
    const-class p0, Landroid/accounts/AccountManagerInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public getAccountAuthenticatorCache()Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .registers 2

    .line 6725
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCeDatabaseName(I)Ljava/lang/String;
    .registers 3

    .line 6691
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "accounts_ce.db"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6693
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 6677
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDeDatabaseName(I)Ljava/lang/String;
    .registers 3

    .line 6685
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "accounts_de.db"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6687
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessageHandlerLooper()Landroid/os/Looper;
    .registers 4

    .line 6670
    new-instance p0, Lcom/android/server/ServiceThread;

    const-string v0, "AccountManagerService"

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 6672
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 6673
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationManager()Landroid/app/INotificationManager;
    .registers 1

    .line 6729
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public getPreNDatabaseName(I)Ljava/lang/String;
    .registers 5

    .line 6697
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    .line 6698
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "accounts.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p1, :cond_68

    .line 6705
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6706
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_68

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_68

    .line 6708
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    .line 6709
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4a

    .line 6710
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_4a

    .line 6711
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User dir cannot be created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6715
    :cond_4a
    :goto_4a
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_51

    goto :goto_68

    .line 6716
    :cond_51
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User dir cannot be migrated: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6721
    :cond_68
    :goto_68
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
