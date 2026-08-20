.class public abstract Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.super Ljava/lang/Object;
.source "ICmdList.java"


# static fields
.field public static final blacklist ALLOWED_DATA_0_TO_9:Z = false

.field public static final blacklist NOT_ALLOWED_DATA_0_TO_9:Z = true


# instance fields
.field protected blacklist cmdType:I

.field private blacklist mCmdList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;->mCmdList:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method protected abstract blacklist addATCommands()V
.end method

.method public final blacklist getCmdSet()Ljava/util/LinkedHashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;->mCmdList:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final blacklist getList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;->mCmdList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected final blacklist putAtCommands(Ljava/lang/String;I)V
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cmd_type"    # I

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;->putAtCommands(Ljava/lang/String;IZ)V

    .line 58
    return-void
.end method

.method protected final blacklist putAtCommands(Ljava/lang/String;IZ)V
    .registers 13
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cmd_type"    # I
    .param p3, "check_data_0_to_9"    # Z

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "cmdName":Ljava/lang/String;
    const-string v1, "+"

    const-string v2, "$"

    const-string v3, "^"

    const-string v4, "#"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, v2, :cond_3f

    aget-object v5, v1, v4

    .line 35
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v0, v2, v4

    .line 37
    goto :goto_3f

    .line 34
    .end local v5    # "token":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 41
    :cond_3f
    :goto_3f
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v3

    .line 45
    :cond_4d
    :try_start_4d
    const-string/jumbo v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_7f

    const-string v3, "UTF-8"

    if-eqz v2, :cond_6c

    .line 46
    :try_start_58
    new-instance v8, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, v0

    move v5, p3

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;-><init>(Ljava/lang/String;[BZIZ)V

    move-object v2, v8

    .local v2, "atCmd":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    goto :goto_79

    .line 48
    .end local v2    # "atCmd":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    :cond_6c
    new-instance v2, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3, p3, p2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;-><init>(Ljava/lang/String;[BZI)V

    .line 50
    .restart local v2    # "atCmd":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    :goto_79
    iget-object v3, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;->mCmdList:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_7e} :catch_7f

    .line 53
    goto :goto_83

    .line 51
    .end local v2    # "atCmd":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    :catch_7f
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_83
    return-void
.end method
