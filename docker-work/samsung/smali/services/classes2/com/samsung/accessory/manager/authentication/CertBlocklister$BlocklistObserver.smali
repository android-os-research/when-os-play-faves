.class public Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;
.super Landroid/database/ContentObserver;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/CertBlocklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocklistObserver"
.end annotation


# static fields
.field public static final DBG:Z


# instance fields
.field public mBlocklist:Ljava/lang/String;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mKey:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;

.field public final mTmpDir:Ljava/io/File;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBlocklist(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPath(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTmpDir(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBlocklist(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 80
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 6

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 92
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mName:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    .line 95
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    .line 96
    iput-object p4, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isThisKeyBlocklisted(Ljava/lang/String;)Z
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    monitor-enter v0

    if-eqz p1, :cond_29

    .line 101
    :try_start_5
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    if-eqz v1, :cond_29

    const-string v1, "SAccessoryManager_CertBlocklister"

    const-string v2, "This key is in blocklist"

    .line 102
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 105
    :cond_29
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public onChange(Z)V
    .registers 2

    .line 130
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->writeBlocklist()V

    return-void
.end method

.method public readFile()V
    .registers 3

    .line 110
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;

    const-string v1, "BlocklistReader"

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final writeBlocklist()V
    .registers 3

    .line 139
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;

    const-string v1, "BlocklistUpdater"

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
