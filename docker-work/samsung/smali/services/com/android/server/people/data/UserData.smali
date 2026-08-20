.class public Lcom/android/server/people/data/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# static fields
.field public static final CONVERSATIONS_END_TOKEN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "UserData"


# instance fields
.field public mDefaultDialer:Ljava/lang/String;

.field public mDefaultSmsApp:Ljava/lang/String;

.field public mIsUnlocked:Z

.field public mPackageDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/PackageData;",
            ">;"
        }
    .end annotation
.end field

.field public final mPerUserPeopleDataDir:Ljava/io/File;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$6PdLrJGHlGwu_DoqTJnYEj3j0A0(Lcom/android/server/people/data/UserData;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->isDefaultDialer(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$E9kRsu8W7Qd6P0oUxGlw7eA69Og(Lcom/android/server/people/data/UserData;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->isDefaultSmsApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fRv0KWM-vYJR6qhMuctjGxFSiLo(Lcom/android/server/people/data/UserData;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/UserData;->lambda$getOrCreatePackageData$0(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ScheduledExecutorService;)V
    .registers 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 65
    iput p1, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    .line 66
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "people"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    .line 67
    iput-object p2, p0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private synthetic lambda$getOrCreatePackageData$0(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .registers 3

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->createPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .registers 10

    .line 188
    new-instance v7, Lcom/android/server/people/data/PackageData;

    iget v2, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    new-instance v3, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/UserData;)V

    new-instance v4, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/data/UserData;)V

    iget-object v5, p0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/people/data/PackageData;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V

    return-object v7
.end method

.method public deletePackageData(Ljava/lang/String;)V
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/PackageData;

    if-eqz p0, :cond_d

    .line 123
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->onDestroy()V

    :cond_d
    return-void
.end method

.method public dump([Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", mPackageDataMap size : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/PackageData;

    .line 204
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "packageName"

    invoke-virtual {p2, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 205
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/PackageData;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_24

    .line 207
    :cond_3e
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public forAllPackages(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/PackageData;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/PackageData;

    .line 76
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public getBackupPayload()[B
    .registers 7

    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/PackageData;

    .line 152
    :try_start_21
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/people/data/ConversationStore;->getBackupPayload()[B

    move-result-object v4

    .line 153
    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 154
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 155
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_37} :catch_38

    goto :goto_14

    :catch_38
    move-exception p0

    .line 157
    sget-object v0, Lcom/android/server/people/data/UserData;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write conversations to backup payload."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_41
    const/4 p0, -0x1

    .line 162
    :try_start_42
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_4a

    .line 167
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_4a
    move-exception p0

    .line 164
    sget-object v0, Lcom/android/server/people/data/UserData;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write conversations end token to backup payload."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method public getDefaultDialer()Lcom/android/server/people/data/PackageData;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getDefaultSmsApp()Lcom/android/server/people/data/PackageData;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    new-instance v1, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/UserData;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/PackageData;

    return-object p0
.end method

.method public getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/PackageData;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    return p0
.end method

.method public final isDefaultDialer(Ljava/lang/String;)Z
    .registers 2

    .line 193
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isDefaultSmsApp(Ljava/lang/String;)Z
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isUnlocked()Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    return p0
.end method

.method public loadUserData()V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 95
    iget v0, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    new-instance v1, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/UserData;)V

    new-instance v2, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/data/UserData;)V

    iget-object v3, p0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/people/data/PackageData;->packagesDataFromDisk(ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    .line 98
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public restore([B)V
    .registers 5

    .line 171
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 173
    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    :goto_e
    const/4 v1, -0x1

    if-eq p1, v1, :cond_33

    .line 176
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v0, v1, v2, p1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 178
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/people/data/ConversationStore;->restore([B)V

    .line 175
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2a} :catch_2b

    goto :goto_e

    :catch_2b
    move-exception p0

    .line 183
    sget-object p1, Lcom/android/server/people/data/UserData;->TAG:Ljava/lang/String;

    const-string v0, "Failed to restore conversations from backup payload."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    return-void
.end method

.method public setDefaultDialer(Ljava/lang/String;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    return-void
.end method

.method public setDefaultSmsApp(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    return-void
.end method

.method public setUserStopped()V
    .registers 2

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    return-void
.end method

.method public setUserUnlocked()V
    .registers 2

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    return-void
.end method
