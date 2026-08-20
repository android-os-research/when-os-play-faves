.class public Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->readFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$fgetmTmpDir(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    .line 113
    :try_start_7
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "SAccessoryManager_CertBlocklister"

    const-string v2, "Read a blocklist from file.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_54

    .line 115
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    sget-object v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$fputmBlocklist(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1f} :catch_29
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_20
    .catchall {:try_start_14 .. :try_end_1f} :catchall_54

    goto :goto_30

    :catch_20
    move-exception v1

    :try_start_21
    const-string v2, "SAccessoryManager_CertBlocklister"

    const-string v3, "Failed to read list"

    .line 119
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    :catch_29
    const-string v1, "SAccessoryManager_CertBlocklister"

    const-string v2, "File does not exist"

    .line 117
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_30
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v1, "SAccessoryManager_CertBlocklister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBlocklist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$fgetmBlocklist(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_52
    monitor-exit v0

    return-void

    :catchall_54
    move-exception p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_21 .. :try_end_56} :catchall_54

    throw p0
.end method
