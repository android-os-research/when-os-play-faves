.class public Landroid/database/sqlite/SQLitePragma;
.super Ljava/lang/Object;
.source "SQLitePragma.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SQLitePragma"

.field private static final blacklist mJournalPattern:Ljava/util/regex/Pattern;

.field private static final blacklist mNumberPattern:Ljava/util/regex/Pattern;

.field private static final blacklist mPragmaPattern:Ljava/util/regex/Pattern;

.field private static final blacklist mTurnOnPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final blacklist mSql:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 28
    const-string v0, "^pragma\\s+(main\\.)?(case_sensitive_like|cache_size|automatic_index|busy_timeout|journal_mode)\\s*(=|\\()(.*)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mPragmaPattern:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "(on|yes|1|true)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mTurnOnPattern:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, "\\s*[`\"\'\\[\\s]*\\s*(\\+|-)?\\s*(0x)?([0-9a-f]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mNumberPattern:Ljava/util/regex/Pattern;

    .line 34
    const-string v0, "\\s*[`\"\'\\[\\s]*\\s*(DELETE|TUNCATE|PERSIST|MEMORY|WAL|OFF)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mJournalPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    iput-object p2, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private blacklist checkAndSetSpecialPragma()V
    .registers 5

    .line 64
    sget-object v0, Landroid/database/sqlite/SQLitePragma;->mPragmaPattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 65
    .local v0, "sqlMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_f

    .line 66
    return-void

    .line 69
    :cond_f
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_22

    goto :goto_5e

    .line 75
    :cond_22
    const-string v3, "automatic_index"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 76
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateAutomaticIndex(Ljava/lang/String;)V

    goto :goto_5d

    .line 77
    :cond_2e
    const-string v3, "case_sensitive_like"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 78
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateCaseSensitveLike(Ljava/lang/String;)V

    goto :goto_5d

    .line 79
    :cond_3a
    const-string v3, "cache_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 80
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateCacheSize(Ljava/lang/String;)V

    goto :goto_5d

    .line 81
    :cond_46
    const-string v3, "busy_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 82
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateBusyTimeout(Ljava/lang/String;)V

    goto :goto_5d

    .line 83
    :cond_52
    const-string v3, "journal_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 84
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateJournalMode(Ljava/lang/String;)V

    .line 86
    :cond_5d
    :goto_5d
    return-void

    .line 72
    :cond_5e
    :goto_5e
    return-void
.end method

.method public static blacklist checkAndSetSpecialPragma(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 48
    if-eqz p2, :cond_5

    .line 49
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 53
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getMaxConnectionPoolSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 54
    return-void

    .line 56
    :cond_d
    new-instance v0, Landroid/database/sqlite/SQLitePragma;

    invoke-direct {v0, p0, p1}, Landroid/database/sqlite/SQLitePragma;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 57
    .local v0, "pragma":Landroid/database/sqlite/SQLitePragma;
    invoke-direct {v0}, Landroid/database/sqlite/SQLitePragma;->checkAndSetSpecialPragma()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    .line 60
    .end local v0    # "pragma":Landroid/database/sqlite/SQLitePragma;
    goto :goto_2f

    .line 58
    :catch_16
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndSetSpecialPragma failed from this sql : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLitePragma"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method private blacklist extractIntFromValue(Ljava/lang/String;)I
    .registers 8
    .param p1, "value"    # Ljava/lang/String;

    .line 89
    sget-object v0, Landroid/database/sqlite/SQLitePragma;->mNumberPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 90
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "sign":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "scale":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "number":Ljava/lang/String;
    if-eqz v2, :cond_20

    const/16 v4, 0x10

    goto :goto_22

    :cond_20
    const/16 v4, 0xa

    :goto_22
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    .line 103
    .local v4, "int_value":Ljava/lang/Integer;
    if-eqz v1, :cond_39

    const-string v5, "-"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 104
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 106
    :cond_39
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    .line 91
    .end local v1    # "sign":Ljava/lang/String;
    .end local v2    # "scale":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "int_value":Ljava/lang/Integer;
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not extract int value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist extractJournalModeFromValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 110
    sget-object v0, Landroid/database/sqlite/SQLitePragma;->mJournalPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 111
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_e

    .line 112
    const/4 v1, 0x0

    return-object v1

    .line 114
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist updateAutomaticIndex(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 120
    :try_start_0
    sget-object v0, Landroid/database/sqlite/SQLitePragma;->mTurnOnPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_11

    .line 124
    .local v0, "enable":Z
    nop

    .line 125
    iget-object v1, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setAutomaticIndexEnabled(Z)V

    .line 126
    return-void

    .line 121
    .end local v0    # "enable":Z
    :catch_11
    move-exception v0

    .line 122
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get automatic_index value from this sql : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLitePragma"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    return-void
.end method

.method private blacklist updateBusyTimeout(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 155
    const/4 v0, -0x1

    .line 157
    .local v0, "time":I
    :try_start_1
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLitePragma;->extractIntFromValue(Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_e

    move v0, v1

    .line 161
    nop

    .line 162
    iget-object v1, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setBusyTimeout(J)V

    .line 163
    return-void

    .line 158
    :catch_e
    move-exception v1

    .line 159
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get busy_timeout value from this sql : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SQLitePragma"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    return-void
.end method

.method private blacklist updateCacheSize(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;

    .line 140
    const-string v0, "SQLitePragma"

    const v1, 0x7fffffff

    .line 142
    .local v1, "size":I
    :try_start_5
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLitePragma;->extractIntFromValue(Ljava/lang/String;)I

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_3b

    move v1, v2

    .line 146
    nop

    .line 147
    if-ltz v1, :cond_35

    const/16 v2, 0xa

    if-lt v1, v2, :cond_12

    goto :goto_35

    .line 150
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalied cache size (under 10) \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', ignore sql : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 148
    :cond_35
    :goto_35
    iget-object v0, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setCacheSize(I)V

    .line 152
    :goto_3a
    return-void

    .line 143
    :catch_3b
    move-exception v2

    .line 144
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get cache_size value from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return-void
.end method

.method private blacklist updateCaseSensitveLike(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 131
    :try_start_0
    sget-object v0, Landroid/database/sqlite/SQLitePragma;->mTurnOnPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_11

    .line 135
    .local v0, "enable":Z
    nop

    .line 136
    iget-object v1, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setCaseSensitiveLikeEnabled(Z)V

    .line 137
    return-void

    .line 132
    .end local v0    # "enable":Z
    :catch_11
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get case_sensitive_like value from this sql : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLitePragma"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    return-void
.end method

.method private blacklist updateJournalMode(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;

    .line 166
    const-string v0, "SQLitePragma"

    const/4 v1, 0x0

    .line 168
    .local v1, "journalMode":Ljava/lang/String;
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLitePragma;->extractJournalModeFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_9

    move-object v1, v2

    .line 171
    goto :goto_22

    .line 169
    :catch_9
    move-exception v2

    .line 170
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get journal_mode value from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_22
    if-eqz v1, :cond_70

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_70

    .line 176
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA journal_mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is executed, and it is not recommended"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string/jumbo v2, "wal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 180
    :try_start_50
    iget-object v2, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_56

    .line 183
    goto :goto_6f

    .line 181
    :catch_56
    move-exception v2

    .line 182
    .restart local v2    # "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableWriteAheadLogging failed from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_6f
    :goto_6f
    return-void

    .line 174
    :cond_70
    :goto_70
    return-void
.end method
