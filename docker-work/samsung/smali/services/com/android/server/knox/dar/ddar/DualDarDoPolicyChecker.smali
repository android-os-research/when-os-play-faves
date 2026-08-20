.class public Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;
.super Ljava/lang/Object;
.source "DualDarDoPolicyChecker.java"


# static fields
.field public static final POLICY_SUMMARY:Ljava/lang/String; = "/data/log/ddar_do_policy_summary.txt"

.field public static final SKIPPED_LIST:Ljava/lang/String; = "/data/log/ddar_do_skip_policy.txt"

.field public static final TAG:Ljava/lang/String; = "DualDarDoPolicyChecker"

.field public static sContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;


# instance fields
.field public skippedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->init()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;
    .registers 2

    const-class v0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    monitor-enter v0

    .line 33
    :try_start_3
    sput-object p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->sContext:Landroid/content/Context;

    .line 34
    sget-object p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->sInstance:Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    if-nez p0, :cond_10

    .line 35
    new-instance p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    invoke-direct {p0}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;-><init>()V

    sput-object p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->sInstance:Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    .line 36
    :cond_10
    sget-object p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->sInstance:Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final addPackageToSkipList(Ljava/lang/String;)V
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkDualDarDoPolicy(I)V
    .registers 14

    const-string v0, "============================================"

    .line 121
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v1

    const-string v2, "DualDarDoPolicyChecker"

    if-nez v1, :cond_1f

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not a DualDAR at DO user - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_1f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    sget-object v4, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 131
    :try_start_30
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/user/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4b} :catch_a8

    move v8, v5

    :goto_4c
    if-ge v5, v7, :cond_83

    :try_start_4e
    aget-object v9, v6, v5

    .line 133
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_80

    .line 134
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    .line 136
    invoke-virtual {p0, v10}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->isSkippedPackage(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_80

    .line 137
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_80

    .line 138
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ddar policy mismatch on user directory : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 144
    :cond_83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/Android/data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_ad

    const-string v4, "ddar policy mismatch on media directory"

    .line 145
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_a4} :catch_a5

    goto :goto_ad

    :catch_a5
    move-exception v4

    move v5, v8

    goto :goto_a9

    :catch_a8
    move-exception v4

    .line 148
    :goto_a9
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v8, v5

    :cond_ad
    :goto_ad
    const/4 v4, 0x0

    .line 153
    :try_start_ae
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/log/ddar_do_policy_summary.txt"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_c6

    const-string v6, "Failed to delete the old file."

    .line 156
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_c6
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_d2

    const-string p0, "Already exists or failed to create the summary file."

    .line 160
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_d2
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 165
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_dc} :catch_21d
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_dc} :catch_213
    .catchall {:try_start_ae .. :try_end_dc} :catchall_211

    .line 166
    :try_start_dc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/* Total packages : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " */"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 168
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 169
    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    const-string v2, "-------------- MISMATCH LIST ---------------"

    .line 171
    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    const-string v2, "( Policy not-applied files which should be )"

    .line 173
    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 175
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. User directory (/data/user/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 178
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 179
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_150

    .line 180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_13d

    .line 185
    :cond_150
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2. Media directory (/data/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/Android/data)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    const-string p1, "(Decided not to apply the policy on the files below)"

    .line 188
    invoke-virtual {v5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 190
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 191
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_197

    .line 192
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_184
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_197

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_184

    .line 197
    :cond_197
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    const-string p1, "-----------(END OF MISMTACH LIST)-----------"

    .line 198
    invoke-virtual {v5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 200
    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 202
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 203
    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------- POLICY SKIPPED LIST ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ---------"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 207
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    if-eqz p1, :cond_1f6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1f6

    .line 208
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1f6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 209
    invoke-virtual {v5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1e3

    :cond_1f6
    const-string p0, "-----------(END OF SKIPPED LIST)------------"

    .line 213
    invoke-virtual {v5, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 215
    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_204
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_204} :catch_20e
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_204} :catch_20b
    .catchall {:try_start_dc .. :try_end_204} :catchall_208

    .line 224
    :try_start_204
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_207} :catch_227

    goto :goto_22b

    :catchall_208
    move-exception p0

    move-object v4, v5

    goto :goto_22c

    :catch_20b
    move-exception p0

    move-object v4, v5

    goto :goto_214

    :catch_20e
    move-exception p0

    move-object v4, v5

    goto :goto_21e

    :catchall_211
    move-exception p0

    goto :goto_22c

    :catch_213
    move-exception p0

    .line 220
    :goto_214
    :try_start_214
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_217
    .catchall {:try_start_214 .. :try_end_217} :catchall_211

    if-eqz v4, :cond_22b

    .line 224
    :try_start_219
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_21c
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_21c} :catch_227

    goto :goto_22b

    :catch_21d
    move-exception p0

    .line 218
    :goto_21e
    :try_start_21e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_221
    .catchall {:try_start_21e .. :try_end_221} :catchall_211

    if-eqz v4, :cond_22b

    .line 224
    :try_start_223
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_223 .. :try_end_226} :catch_227

    goto :goto_22b

    :catch_227
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_22b
    :goto_22b
    return-void

    :goto_22c
    if-eqz v4, :cond_236

    .line 224
    :try_start_22e
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_231
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_231} :catch_232

    goto :goto_236

    :catch_232
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    :cond_236
    :goto_236
    throw p0
.end method

.method public final init()V
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->loadPackages()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    return-void
.end method

.method public final isSkippedPackage(Ljava/lang/String;)Z
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_12

    .line 117
    :cond_b
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public final loadPackages()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 47
    :try_start_6
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/ddar_do_skip_policy.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 49
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 50
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1d} :catch_42
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_35
    .catchall {:try_start_6 .. :try_end_1d} :catchall_33

    .line 52
    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 53
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_29
    .catchall {:try_start_1d .. :try_end_26} :catchall_54

    goto :goto_1d

    :cond_27
    move-object v0, v1

    goto :goto_2d

    :catch_29
    move-exception v0

    goto :goto_39

    :catch_2b
    move-exception v0

    goto :goto_46

    :cond_2d
    :goto_2d
    if-eqz v0, :cond_53

    .line 63
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_4f

    goto :goto_53

    :catchall_33
    move-exception p0

    goto :goto_56

    :catch_35
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 59
    :goto_39
    :try_start_39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_54

    if-eqz v1, :cond_53

    .line 63
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4f

    goto :goto_53

    :catch_42
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 57
    :goto_46
    :try_start_46
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_54

    if-eqz v1, :cond_53

    .line 63
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_53
    :goto_53
    return-object p0

    :catchall_54
    move-exception p0

    move-object v0, v1

    :goto_56
    if-eqz v0, :cond_60

    .line 63
    :try_start_58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    :cond_60
    :goto_60
    throw p0
.end method

.method public saveSkippedPackages(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_9

    .line 77
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 80
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->addPackageToSkipList(Ljava/lang/String;)V

    goto :goto_d

    :cond_1d
    const/4 p1, 0x0

    .line 86
    :try_start_1e
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/ddar_do_skip_policy.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_33

    const-string p0, "DualDarDoPolicyChecker"

    const-string v0, "Failed to create a file for ddar policy skipped packages"

    .line 88
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_33
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 93
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3d} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3d} :catch_65
    .catchall {:try_start_1e .. :try_end_3d} :catchall_63

    .line 94
    :try_start_3d
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 95
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_55} :catch_60
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_55} :catch_5d
    .catchall {:try_start_3d .. :try_end_55} :catchall_5a

    goto :goto_43

    .line 105
    :cond_56
    :try_start_56
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_79

    goto :goto_7d

    :catchall_5a
    move-exception p0

    move-object p1, v0

    goto :goto_7e

    :catch_5d
    move-exception p0

    move-object p1, v0

    goto :goto_66

    :catch_60
    move-exception p0

    move-object p1, v0

    goto :goto_70

    :catchall_63
    move-exception p0

    goto :goto_7e

    :catch_65
    move-exception p0

    .line 101
    :goto_66
    :try_start_66
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_63

    if-eqz p1, :cond_7d

    .line 105
    :try_start_6b
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_79

    goto :goto_7d

    :catch_6f
    move-exception p0

    .line 99
    :goto_70
    :try_start_70
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_63

    if-eqz p1, :cond_7d

    .line 105
    :try_start_75
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_7d

    :catch_79
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7d
    :goto_7d
    return-void

    :goto_7e
    if-eqz p1, :cond_88

    .line 105
    :try_start_80
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_88

    :catch_84
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    :cond_88
    :goto_88
    throw p0
.end method
