.class public Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;
.super Ljava/lang/Object;
.source "PackageManagerShellCommandDataLoader.java"

# interfaces
.implements Landroid/service/dataloader/DataLoaderService$DataLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommandDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataLoader"
.end annotation


# instance fields
.field public mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

.field public mParams:Landroid/content/pm/DataLoaderParams;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    .line 247
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/pm/DataLoaderParams;Landroid/service/dataloader/DataLoaderService$FileSystemConnector;)Z
    .registers 3

    .line 252
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    .line 253
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    const/4 p0, 0x1

    return p0
.end method

.method public onPrepareImage(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/InstallationFile;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 260
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {p2}, Landroid/content/pm/DataLoaderParams;->getArguments()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->lookupShellCommand(Ljava/lang/String;)Landroid/os/ShellCommand;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "PackageManagerShellCommandDataLoader"

    if-nez p2, :cond_15

    const-string p0, "Missing shell command."

    .line 262
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 266
    :cond_15
    :try_start_15
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/InstallationFile;

    .line 267
    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v4

    if-nez v4, :cond_49

    .line 269
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid metadata for file: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 272
    :cond_49
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getMode()B

    move-result v5

    if-eqz v5, :cond_8c

    if-eq v5, v3, :cond_6a

    .line 290
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported metadata mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getMode()B

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_69} :catch_a6

    return v0

    :cond_6a
    const/4 v3, 0x0

    .line 281
    :try_start_6b
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getLocalFilePFD(Landroid/os/ShellCommand;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 282
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v9

    move-object v11, v3

    invoke-virtual/range {v5 .. v11}, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_83
    .catchall {:try_start_6b .. :try_end_83} :catchall_87

    .line 285
    :try_start_83
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_19

    :catchall_87
    move-exception p0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 286
    throw p0

    .line 274
    :cond_8c
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStdInPFD(Landroid/os/ShellCommand;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 275
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getLengthBytes()J

    move-result-wide v9

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v9

    invoke-virtual/range {v2 .. v8}, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_a3} :catch_a6

    goto/16 :goto_19

    :cond_a5
    return v3

    :catch_a6
    move-exception p0

    const-string p1, "Exception while streaming files"

    .line 296
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
