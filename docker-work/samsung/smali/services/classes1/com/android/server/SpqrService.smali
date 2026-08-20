.class public Lcom/android/server/SpqrService;
.super Lcom/android/server/SystemService;
.source "SpqrService.java"


# static fields
.field public static final SPQR_BLOCK_LIST_PATH:Ljava/lang/String; = "/system/etc/spqr-package-blocklist.conf"

.field public static final TAG:Ljava/lang/String; = "SpqrService"


# instance fields
.field public volatile mService:Landroid/os/ISpqrService;

.field public packageBlockList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$csVC-rmR10KtAUK1fjk17ALcE5M(Lcom/android/server/SpqrService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/SpqrService;->lambda$findSpqrNativeService$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/SpqrService;Landroid/os/ISpqrService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindSpqrNativeService(Lcom/android/server/SpqrService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/SpqrService;->findSpqrNativeService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const-string p1, "/system/etc/spqr-package-blocklist.conf"

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/SpqrService;->initPackageBlockList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/SpqrService;->packageBlockList:Ljava/util/Set;

    return-void
.end method

.method private synthetic lambda$findSpqrNativeService$0()V
    .registers 1

    .line 132
    invoke-virtual {p0}, Lcom/android/server/SpqrService;->findSpqrNativeService()V

    return-void
.end method


# virtual methods
.method public final checkUserAndService(II)Z
    .registers 5

    .line 138
    iget-object p0, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    const/4 v0, 0x0

    const-string v1, "SpqrService"

    if-nez p0, :cond_e

    const-string/jumbo p0, "spqr_service is not initialized"

    .line 139
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_e
    if-gez p1, :cond_25

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid user id: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_25
    if-gez p2, :cond_3c

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid app id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3c
    const/4 p0, 0x1

    return p0
.end method

.method public createInvariantProfileLI(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "SpqrService"

    move v5, p3

    move/from16 v6, p4

    .line 167
    invoke-virtual {p0, p3, v6}, Lcom/android/server/SpqrService;->checkUserAndService(II)Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_e

    return v11

    .line 171
    :cond_e
    :try_start_e
    iget-object v2, v0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Landroid/os/ISpqrService;->createInvariantProfile(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    return v0

    .line 175
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to prepare new profile for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_3b} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_3b} :catch_3c

    goto :goto_55

    :catch_3c
    move-exception v0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create invariant profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return v11
.end method

.method public final findSpqrNativeService()V
    .registers 5

    const-string/jumbo v0, "spqr_service"

    .line 110
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 113
    :try_start_9
    new-instance v1, Lcom/android/server/SpqrService$1;

    invoke-direct {v1, p0}, Lcom/android/server/SpqrService$1;-><init>(Lcom/android/server/SpqrService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 v0, 0x0

    :cond_14
    :goto_14
    const-string v1, "SpqrService"

    if-eqz v0, :cond_24

    .line 127
    invoke-static {v0}, Landroid/os/ISpqrService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISpqrService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    const-string p0, "SPQR native service found successfully"

    .line 128
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :cond_24
    const-string v0, "SPQR native service not found; trying again"

    .line 130
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/SpqrService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/SpqrService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SpqrService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_37
    return-void
.end method

.method public final initPackageBlockList(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 60
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/spqr-package-blocklist.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "SpqrService"

    if-eqz v0, :cond_5b

    .line 61
    :try_start_14
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_25} :catch_46

    .line 65
    :goto_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    const-string v3, "#"

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_25

    .line 70
    :cond_34
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_3c

    goto :goto_25

    .line 72
    :cond_38
    :try_start_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_46

    goto :goto_74

    :catchall_3c
    move-exception v1

    .line 61
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v0

    :try_start_42
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw v1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_46

    .line 73
    :catch_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception caught while reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 76
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocklist file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    return-object p0
.end method

.method public isInBlockList(Ljava/lang/String;)Z
    .registers 8

    .line 87
    iget-object v0, p0, Lcom/android/server/SpqrService;->packageBlockList:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 90
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    return v2

    .line 93
    :cond_e
    iget-object p0, p0, Lcom/android/server/SpqrService;->packageBlockList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "*"

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_14

    :cond_29
    const-string v4, "\\S+"

    .line 97
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    const-string v5, "\\."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 99
    :try_start_37
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0
    :try_end_3b
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_37 .. :try_end_3b} :catch_3e

    if-eqz v0, :cond_14

    return v2

    .line 103
    :catch_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid regular expressions\'s syntax: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SpqrService"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_55
    return v1
.end method

.method public onStart()V
    .registers 1

    .line 155
    invoke-virtual {p0}, Lcom/android/server/SpqrService;->findSpqrNativeService()V

    return-void
.end method
