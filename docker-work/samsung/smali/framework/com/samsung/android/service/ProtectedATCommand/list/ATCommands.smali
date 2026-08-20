.class public Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
.super Ljava/lang/Object;
.source "ATCommands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ATCommands"

.field private static final blacklist mIsTestBinary:Z


# instance fields
.field private blacklist mCmds:[B

.field private blacklist mExtendedAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;

.field private blacklist mFlags:Z

.field private blacklist mHasAttribute:Z

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 24
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mIsTestBinary:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    .line 36
    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "cmd_name"    # Ljava/lang/String;
    .param p2, "cmds"    # [B

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[BZ)V
    .registers 4
    .param p1, "cmd_name"    # Ljava/lang/String;
    .param p2, "cmds"    # [B
    .param p3, "flags"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    .line 47
    iput-boolean p3, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[BZI)V
    .registers 6
    .param p1, "cmd_name"    # Ljava/lang/String;
    .param p2, "cmds"    # [B
    .param p3, "flags"    # Z
    .param p4, "type"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    .line 53
    iput-boolean p3, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    .line 54
    iput p4, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[BZIZ)V
    .registers 8
    .param p1, "cmd_name"    # Ljava/lang/String;
    .param p2, "cmds"    # [B
    .param p3, "flags"    # Z
    .param p4, "type"    # I
    .param p5, "hasAttribute"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    .line 61
    iput-boolean p3, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    .line 62
    iput p4, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    .line 63
    iput-boolean p5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD Name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD Attribute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    if-eqz v0, :cond_71

    .line 70
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;-><init>(Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)V

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mExtendedAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;

    .line 72
    invoke-virtual {v0, p2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->setAttribute([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    .line 74
    :cond_71
    return-void
.end method


# virtual methods
.method public blacklist debugLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 180
    sget-boolean v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mIsTestBinary:Z

    if-eqz v0, :cond_9

    .line 181
    const-string v0, "ATCommands"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_9
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 15
    .param p1, "obj"    # Ljava/lang/Object;

    .line 119
    instance-of v0, p1, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 120
    return v1

    .line 122
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    .line 123
    return v0

    .line 125
    :cond_a
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    .line 127
    .local v2, "cmd1":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getCmdBytes()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 128
    .local v3, "c1":Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 130
    .local v4, "c2":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "splited_cmd1":[Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "splited_cmd2":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x2

    if-lt v8, v9, :cond_9a

    array-length v8, v7

    if-ge v8, v9, :cond_39

    goto :goto_9a

    .line 147
    :cond_39
    aget-object v5, v6, v0

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "raw_c1":[Ljava/lang/String;
    aget-object v9, v7, v0

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "raw_c2":[Ljava/lang/String;
    array-length v9, v8

    array-length v10, v5

    if-le v9, v10, :cond_4d

    array-length v9, v5

    goto :goto_4e

    :cond_4d
    array-length v9, v8

    .line 152
    .local v9, "size":I
    :goto_4e
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4f
    if-ge v10, v9, :cond_94

    .line 154
    :try_start_51
    aget-object v11, v5, v10

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    .line 155
    iget-boolean v11, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    if-nez v11, :cond_65

    invoke-virtual {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getFlags()Z

    move-result v11

    if-eqz v11, :cond_80

    :cond_65
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ltz v11, :cond_80

    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x9

    if-gt v11, v12, :cond_80

    .line 156
    return v1

    .line 158
    :cond_80
    return v0

    .line 161
    :cond_81
    aget-object v11, v5, v10

    aget-object v12, v8, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_89} :catch_8d

    if-nez v11, :cond_8c

    .line 162
    return v1

    .line 165
    :cond_8c
    goto :goto_91

    .line 163
    :catch_8d
    move-exception v11

    .line 164
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_91
    add-int/lit8 v10, v10, 0x1

    goto :goto_4f

    .line 168
    .end local v10    # "i":I
    :cond_94
    array-length v10, v5

    array-length v11, v8

    if-eq v10, v11, :cond_99

    .line 169
    return v1

    .line 171
    :cond_99
    return v0

    .line 135
    .end local v5    # "raw_c1":[Ljava/lang/String;
    .end local v8    # "raw_c2":[Ljava/lang/String;
    .end local v9    # "size":I
    :cond_9a
    :goto_9a
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "=*"

    if-eqz v8, :cond_ba

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ba

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_d7

    .line 137
    :cond_ba
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d7

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d7

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    :cond_d7
    :goto_d7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_de

    .line 142
    return v0

    .line 144
    :cond_de
    return v1
.end method

.method public blacklist getCmdBytes()[B
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    return-object v0
.end method

.method public blacklist getExtendedAttribute()Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mExtendedAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;

    return-object v0
.end method

.method public blacklist getFlags()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    return v0
.end method

.method public blacklist getHasAttribute()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist setCmdBytes([B)V
    .registers 2
    .param p1, "cmds"    # [B

    .line 85
    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    .line 86
    return-void
.end method

.method public blacklist setFlags(Z)V
    .registers 2
    .param p1, "flags"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    .line 94
    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public blacklist setType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 101
    iput p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    .line 102
    return-void
.end method
