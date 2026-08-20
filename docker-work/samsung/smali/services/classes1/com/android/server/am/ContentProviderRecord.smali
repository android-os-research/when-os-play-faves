.class public final Lcom/android/server/am/ContentProviderRecord;
.super Ljava/lang/Object;
.source "ContentProviderRecord.java"

# interfaces
.implements Landroid/content/ComponentName$WithComponentName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    }
.end annotation


# static fields
.field public static final MAX_RETRY_COUNT:I = 0x3


# instance fields
.field public final appInfo:Landroid/content/pm/ApplicationInfo;

.field public final connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field public externalProcessNoHandleCount:I

.field public externalProcessTokenToHandle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final info:Landroid/content/pm/ProviderInfo;

.field public launchingApp:Lcom/android/server/am/ProcessRecord;

.field public mRestartCount:I

.field public final name:Landroid/content/ComponentName;

.field public noReleaseNeeded:Z

.field public proc:Lcom/android/server/am/ProcessRecord;

.field public provider:Landroid/content/IContentProvider;

.field public final service:Lcom/android/server/am/ActivityManagerService;

.field public shortStringName:Ljava/lang/String;

.field public final singleton:Z

.field public stringName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public static bridge synthetic -$$Nest$mremoveExternalProcessHandleInternalLocked(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    .registers 7

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 74
    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 75
    iget p1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 76
    iput-object p3, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 77
    iput-object p4, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 78
    iput-boolean p5, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 93
    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo p2, "system"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;)V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 102
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 103
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 104
    iget v0, p1, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 105
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 106
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 107
    iget-boolean v0, p1, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 108
    iget-boolean p1, p1, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    iput-boolean p1, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    return-void
.end method


# virtual methods
.method public addExternalProcessHandleLocked(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 5

    if-nez p1, :cond_9

    .line 151
    iget p1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    goto :goto_31

    .line 153
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    if-nez v0, :cond_14

    .line 154
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 156
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    if-nez v0, :cond_2b

    .line 158
    new-instance v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;-><init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {v0, p0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->startAssociationIfNeeded(Lcom/android/server/am/ContentProviderRecord;)V

    .line 162
    :cond_2b
    iget p0, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    :goto_31
    return-void
.end method

.method public canRunHere(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v1, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v1, :cond_10

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_10
    iget p0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p0, p1, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6

    if-eqz p3, :cond_20

    .line 252
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "package="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " process="

    .line 254
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "proc="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_40

    .line 258
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "launchingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_40
    if-eqz p3, :cond_5a

    .line 261
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " provider="

    .line 262
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 264
    :cond_5a
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v0, :cond_6c

    .line 265
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "singleton="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 267
    :cond_6c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "authority="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_b3

    .line 269
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v1, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    if-nez v1, :cond_8b

    iget-boolean v1, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v1, :cond_8b

    iget v0, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    if-eqz v0, :cond_b3

    .line 270
    :cond_8b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isSyncable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " multiprocess="

    .line 271
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " initOrder="

    .line 272
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget v0, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b3
    if-eqz p3, :cond_e7

    .line 276
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 277
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "externals:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    if-eqz v0, :cond_d5

    const-string v0, " w/token="

    .line 279
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 282
    :cond_d5
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v0, :cond_e3

    const-string v0, " notoken="

    .line 283
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 286
    :cond_e3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_10e

    .line 289
    :cond_e7
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_f3

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v0, :cond_10e

    .line 290
    :cond_f3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " connections, "

    .line 291
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " external handles"

    .line 292
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    :cond_10e
    :goto_10e
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_154

    if-eqz p3, :cond_120

    .line 297
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Connections:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_120
    const/4 p3, 0x0

    .line 299
    :goto_121
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_154

    .line 300
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 301
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  -> "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    iget-object v1, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eq v1, p0, :cond_151

    .line 303
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    *** WRONG PROVIDER: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget-object v0, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_151
    add-int/lit8 p3, p3, 0x1

    goto :goto_121

    :cond_154
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 410
    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    return-object p0
.end method

.method public hasConnectionOrHandle()Z
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public hasExternalProcessHandles()Z
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    iget p0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;
    .registers 5

    .line 112
    new-instance v0, Landroid/app/ContentProviderHolder;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 113
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    iput-object v1, v0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 114
    iget-boolean p0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    iput-boolean p0, v0, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 115
    iput-object p1, v0, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 116
    iput-boolean p2, v0, Landroid/app/ContentProviderHolder;->mLocal:Z

    return-object v0
.end method

.method public onProviderPublishStatusLocked(Z)V
    .registers 12

    .line 213
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_bf

    .line 215
    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderConnection;

    .line 216
    iget-boolean v4, v3, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v4, :cond_b9

    iget-object v4, v3, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_b9

    if-nez p1, :cond_a1

    .line 219
    iget-object v5, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    const-string v6, " for provider "

    const-string v7, "/"

    const-string v8, "ActivityManager"

    if-nez v5, :cond_6d

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to launch app "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": launching app became null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v5, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 225
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 224
    invoke-static {v5, v7, v6, v8}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_a1

    .line 229
    :cond_6d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timeout waiting for provider "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_a1
    :goto_a1
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_b9

    if-eqz p1, :cond_ab

    move-object v5, v3

    goto :goto_ac

    :cond_ab
    const/4 v5, 0x0

    .line 240
    :goto_ac
    :try_start_ac
    invoke-virtual {p0, v5, v1}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/ContentProviderConnection;->mExpectedUserId:I

    .line 239
    invoke-interface {v4, v5, v6, v7, p1}, Landroid/app/IApplicationThread;->notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_b9} :catch_b9

    .line 246
    :catch_b9
    :cond_b9
    iput-boolean v1, v3, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_bf
    return-void
.end method

.method public final removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 190
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->unlinkFromOwnDeathLocked()V

    .line 191
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->stopAssociation()V

    .line 192
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_1e

    const/4 p1, 0x0

    .line 194
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    :cond_1e
    return-void
.end method

.method public removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z
    .registers 6

    .line 167
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 169
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    .line 170
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    if-eqz v0, :cond_21

    .line 173
    iget v3, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    if-nez v3, :cond_1f

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    return v2

    :cond_1f
    move p1, v2

    goto :goto_22

    :cond_21
    move p1, v1

    :goto_22
    if-nez p1, :cond_2a

    .line 181
    iget p1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    return v2

    :cond_2a
    return v1
.end method

.method public setProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 121
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 123
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_20

    .line 124
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;

    if-eqz p1, :cond_1a

    .line 126
    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderConnection;->startAssociationIfNeeded()V

    goto :goto_1d

    .line 128
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderConnection;->stopAssociation()V

    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 131
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    if-eqz v0, :cond_40

    .line 132
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2a
    if-ltz v0, :cond_40

    .line 133
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    if-eqz p1, :cond_3a

    .line 135
    invoke-virtual {v1, p0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->startAssociationIfNeeded(Lcom/android/server/am/ContentProviderRecord;)V

    goto :goto_3d

    .line 137
    :cond_3a
    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->stopAssociation()V

    :goto_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    :cond_40
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 330
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 331
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 315
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentProviderRecord{"

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method
