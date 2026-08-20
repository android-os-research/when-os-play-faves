.class public Lcom/android/server/pm/PackageManagerShellCommandDataLoader;
.super Landroid/service/dataloader/DataLoaderService;
.source "PackageManagerShellCommandDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;,
        Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    }
.end annotation


# static fields
.field public static final ARGS_DELIM:C = '&'

.field public static final CLASS:Ljava/lang/String;

.field public static final INVALID_SHELL_COMMAND_ID:I = -0x1

.field public static final PACKAGE:Ljava/lang/String; = "android"

.field public static final SHELL_COMMAND_ID_PREFIX:Ljava/lang/String; = "shellCommandId="

.field public static final STDIN_PATH:Ljava/lang/String; = "-"

.field public static final TAG:Ljava/lang/String; = "PackageManagerShellCommandDataLoader"

.field public static final TOO_MANY_PENDING_SHELL_COMMANDS:I = 0xa

.field public static final sRandom:Ljava/security/SecureRandom;

.field public static final sShellCommands:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/ShellCommand;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->CLASS:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sRandom:Ljava/security/SecureRandom;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/service/dataloader/DataLoaderService;-><init>()V

    return-void
.end method

.method public static extractShellCommandId(Ljava/lang/String;)I
    .registers 5

    const-string/jumbo v0, "shellCommandId="

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "PackageManagerShellCommandDataLoader"

    if-gez v0, :cond_12

    const-string p0, "Missing shell command id param."

    .line 103
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_12
    add-int/lit8 v0, v0, 0xf

    const/16 v3, 0x26

    .line 107
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_25

    .line 110
    :try_start_1c
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 112
    :cond_25
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_2d} :catch_2e

    return p0

    :catch_2e
    move-exception p0

    const-string v0, "Incorrect shell command id format."

    .line 115
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static getDataLoaderParamsArgs(Landroid/os/ShellCommand;)Ljava/lang/String;
    .registers 6

    .line 63
    invoke-static {}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->nativeInitialize()V

    .line 66
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    monitor-enter v0

    .line 68
    :try_start_6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_22

    .line 69
    sget-object v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 70
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1f

    .line 71
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 75
    :cond_22
    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_46

    const-string v2, "PackageManagerShellCommandDataLoader"

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many pending shell commands: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_46
    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sRandom:Ljava/security/SecureRandom;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 82
    sget-object v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_46

    .line 84
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_6 .. :try_end_62} :catchall_75

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shellCommandId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_75
    move-exception p0

    .line 85
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public static getIncrementalDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;
    .registers 4

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->CLASS:Ljava/lang/String;

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getDataLoaderParamsArgs(Landroid/os/ShellCommand;)Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {v0, p0}, Landroid/content/pm/DataLoaderParams;->forIncremental(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/DataLoaderParams;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalFile(Landroid/os/ShellCommand;Ljava/lang/String;)I
    .registers 2

    .line 337
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getLocalFilePFD(Landroid/os/ShellCommand;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_c

    .line 338
    :cond_8
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p0

    :goto_c
    return p0
.end method

.method public static getLocalFilePFD(Landroid/os/ShellCommand;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3

    const-string/jumbo v0, "r"

    .line 328
    invoke-virtual {p0, p1, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static getStdIn(Landroid/os/ShellCommand;)I
    .registers 1

    .line 332
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStdInPFD(Landroid/os/ShellCommand;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_c

    .line 333
    :cond_8
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p0

    :goto_c
    return p0
.end method

.method public static getStdInPFD(Landroid/os/ShellCommand;)Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 320
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    const-string v0, "PackageManagerShellCommandDataLoader"

    const-string v1, "Exception while obtaining STDIN fd"

    .line 322
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;
    .registers 4

    .line 91
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->CLASS:Ljava/lang/String;

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getDataLoaderParamsArgs(Landroid/os/ShellCommand;)Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-static {v0, p0}, Landroid/content/pm/DataLoaderParams;->forStreaming(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/DataLoaderParams;

    move-result-object p0

    return-object p0
.end method

.method public static lookupShellCommand(Ljava/lang/String;)Landroid/os/ShellCommand;
    .registers 3

    .line 303
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->extractShellCommandId(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_9

    return-object v0

    .line 309
    :cond_9
    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    monitor-enter v1

    .line 310
    :try_start_c
    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 311
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_1d

    if-eqz p0, :cond_1c

    .line 313
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/ShellCommand;

    :cond_1c
    return-object v0

    :catchall_1d
    move-exception p0

    .line 311
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private static native nativeInitialize()V
.end method


# virtual methods
.method public onCreateDataLoader(Landroid/content/pm/DataLoaderParams;)Landroid/service/dataloader/DataLoaderService$DataLoader;
    .registers 3

    .line 344
    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    .line 346
    new-instance p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;-><init>(Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader-IA;)V

    return-object p0

    :cond_e
    return-object p1
.end method
