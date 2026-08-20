.class public Lcom/android/server/integrity/IntegrityFileManager;
.super Ljava/lang/Object;
.source "IntegrityFileManager.java"


# static fields
.field public static final INDEXING_FILE:Ljava/lang/String; = "indexing"

.field public static final METADATA_FILE:Ljava/lang/String; = "metadata"

.field public static final RULES_FILE:Ljava/lang/String; = "rules"

.field public static final RULES_LOCK:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "IntegrityFileManager"

.field public static sInstance:Lcom/android/server/integrity/IntegrityFileManager;


# instance fields
.field public final mDataDir:Ljava/io/File;

.field public mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;

.field public mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

.field public final mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

.field public final mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

.field public final mRulesDir:Ljava/io/File;

.field public final mStagingDir:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 80
    new-instance v0, Lcom/android/server/integrity/parser/RuleBinaryParser;

    invoke-direct {v0}, Lcom/android/server/integrity/parser/RuleBinaryParser;-><init>()V

    new-instance v1, Lcom/android/server/integrity/serializer/RuleBinarySerializer;

    invoke-direct {v1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;-><init>()V

    .line 83
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    .line 80
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/integrity/IntegrityFileManager;-><init>(Lcom/android/server/integrity/parser/RuleParser;Lcom/android/server/integrity/serializer/RuleSerializer;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/integrity/parser/RuleParser;Lcom/android/server/integrity/serializer/RuleSerializer;Ljava/io/File;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

    .line 89
    iput-object p2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

    .line 90
    iput-object p3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mDataDir:Ljava/io/File;

    .line 92
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "integrity_rules"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 93
    new-instance p2, Ljava/io/File;

    const-string/jumbo v0, "integrity_staging"

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 95
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    const-string p3, "IntegrityFileManager"

    if-eqz p2, :cond_2b

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_30

    :cond_2b
    const-string p2, "Error creating staging and rules directory"

    .line 96
    invoke-static {p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_30
    new-instance p2, Ljava/io/File;

    const-string/jumbo v0, "metadata"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 102
    :try_start_3e
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_57

    .line 103
    :try_start_43
    invoke-static {p1}, Lcom/android/server/integrity/parser/RuleMetadataParser;->parse(Ljava/io/InputStream;)Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_4d

    .line 104
    :try_start_49
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_57

    goto :goto_5d

    :catchall_4d
    move-exception p2

    .line 102
    :try_start_4e
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception p1

    :try_start_53
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw p2
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_57

    :catch_57
    move-exception p1

    const-string p2, "Error reading metadata file."

    .line 105
    invoke-static {p3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :cond_5d
    :goto_5d
    invoke-virtual {p0}, Lcom/android/server/integrity/IntegrityFileManager;->updateRuleIndexingController()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/integrity/IntegrityFileManager;
    .registers 2

    const-class v0, Lcom/android/server/integrity/IntegrityFileManager;

    monitor-enter v0

    .line 73
    :try_start_3
    sget-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    if-nez v1, :cond_e

    .line 74
    new-instance v1, Lcom/android/server/integrity/IntegrityFileManager;

    invoke-direct {v1}, Lcom/android/server/integrity/IntegrityFileManager;-><init>()V

    sput-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    .line 76
    :cond_e
    sget-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public initialized()Z
    .registers 4

    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v2, "rules"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v2, "metadata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v1, "indexing"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    return p0
.end method

.method public readMetadata()Lcom/android/server/integrity/model/RuleMetadata;
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    return-object p0
.end method

.method public readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/integrity/parser/RuleParseException;
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2e

    if-eqz p1, :cond_18

    .line 160
    :try_start_9
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;

    .line 161
    invoke-virtual {v2, p1}, Lcom/android/server/integrity/parser/RuleIndexingController;->identifyRulesToEvaluate(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10
    .catchall {:try_start_9 .. :try_end_f} :catchall_2e

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "IntegrityFileManager"

    const-string v3, "Error identifying the rule indexes. Trying unindexed."

    .line 163
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_18
    :goto_18
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v3, "rules"

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

    .line 170
    invoke-static {p1}, Lcom/android/server/integrity/parser/RandomAccessObject;->ofFile(Ljava/io/File;)Lcom/android/server/integrity/parser/RandomAccessObject;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Lcom/android/server/integrity/parser/RuleParser;->parse(Lcom/android/server/integrity/parser/RandomAccessObject;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 171
    monitor-exit v0

    return-object p0

    :catchall_2e
    move-exception p0

    .line 172
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final switchStagingRulesDir()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mDataDir:Ljava/io/File;

    const-string/jumbo v3, "temp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 186
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 187
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 191
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v1, :cond_39

    aget-object v3, p0, v2

    .line 192
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 194
    :cond_39
    monitor-exit v0

    return-void

    .line 188
    :cond_3b
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Error switching staging/rules directory"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_43
    move-exception p0

    .line 194
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public final updateRuleIndexingController()V
    .registers 4

    .line 198
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v2, "indexing"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 200
    :try_start_10
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_2a

    .line 201
    :try_start_15
    new-instance v0, Lcom/android/server/integrity/parser/RuleIndexingController;

    invoke-direct {v0, v1}, Lcom/android/server/integrity/parser/RuleIndexingController;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_20

    .line 202
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_2a

    goto :goto_32

    :catchall_20
    move-exception p0

    .line 200
    :try_start_21
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v0

    :try_start_26
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception p0

    const-string v0, "IntegrityFileManager"

    const-string v1, "Error parsing the rule indexing file."

    .line 203
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    :goto_32
    return-void
.end method

.method public final writeMetadata(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    new-instance v0, Lcom/android/server/integrity/model/RuleMetadata;

    invoke-direct {v0, p2, p3}, Lcom/android/server/integrity/model/RuleMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    .line 212
    new-instance p2, Ljava/io/File;

    const-string/jumbo p3, "metadata"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    :try_start_14
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    invoke-static {p0, p1}, Lcom/android/server/integrity/serializer/RuleMetadataSerializer;->serialize(Lcom/android/server/integrity/model/RuleMetadata;Ljava/io/OutputStream;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1d

    .line 216
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_1d
    move-exception p0

    .line 214
    :try_start_1e
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw p0
.end method

.method public writeRules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/integrity/serializer/RuleSerializeException;
        }
    .end annotation

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/integrity/IntegrityFileManager;->writeMetadata(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    const-string p2, "IntegrityFileManager"

    const-string v0, "Error writing metadata."

    .line 129
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :goto_e
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    const-string/jumbo v1, "rules"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 135
    :try_start_1d
    new-instance p2, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    const-string/jumbo v2, "indexing"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_4c

    .line 137
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

    .line 138
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .line 137
    invoke-interface {v0, p3, v1, p1, p2}, Lcom/android/server/integrity/serializer/RuleSerializer;->serialize(Ljava/util/List;Ljava/util/Optional;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_42

    .line 139
    :try_start_35
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_4c

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/integrity/IntegrityFileManager;->switchStagingRulesDir()V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/integrity/IntegrityFileManager;->updateRuleIndexingController()V

    return-void

    :catchall_42
    move-exception p0

    .line 133
    :try_start_43
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception p2

    :try_start_48
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4b
    throw p0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p0

    :try_start_4d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p0
.end method
