.class public Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "NativeDaemonEvent.java"


# static fields
.field public static final SENSITIVE_MARKER:Ljava/lang/String; = "{{sensitive}}"


# instance fields
.field public final mCmdNumber:I

.field public final mCode:I

.field public mFdList:[Ljava/io/FileDescriptor;

.field public final mLogMessage:Ljava/lang/String;

.field public final mMessage:Ljava/lang/String;

.field public mParsed:[Ljava/lang/String;

.field public final mRawEvent:Ljava/lang/String;

.field public final mResponseCode:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V
    .registers 8

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCmdNumber:I

    .line 41
    iput p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    .line 42
    iput p3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mResponseCode:I

    .line 43
    iput-object p4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    return-void
.end method

.method public static filterMessageList([Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;I)[Ljava/lang/String;
    .registers 7

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1b

    aget-object v3, p0, v2

    .line 195
    invoke-virtual {v3}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getCode()I

    move-result v4

    if-ne v4, p1, :cond_18

    .line 196
    invoke-virtual {v3}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 199
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static isClassUnsolicited(I)Z
    .registers 2

    const/16 v0, 0x258

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
    .registers 15

    const-string v0, " "

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 139
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_b2

    const/4 v2, 0x0

    .line 147
    :try_start_b
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 148
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_17} :catch_a8

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 155
    invoke-static {v7}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v6

    const/4 v8, -0x1

    const/4 v9, 0x3

    if-nez v6, :cond_66

    .line 156
    array-length v6, v1

    const-string v8, "Insufficient arguemnts"

    if-lt v6, v3, :cond_60

    .line 160
    :try_start_26
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 161
    aget-object v10, v1, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_32} :catch_56

    add-int/2addr v10, v5

    add-int/2addr v4, v10

    .line 166
    array-length v10, v1

    if-lt v10, v9, :cond_50

    .line 170
    :try_start_37
    aget-object v8, v1, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 171
    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_43} :catch_46

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    goto :goto_67

    :catch_46
    move-exception p0

    .line 173
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "problem parsing responseCode"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 167
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_56
    move-exception p0

    .line 163
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "problem parsing cmdNumber"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 157
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    move v6, v8

    .line 178
    :goto_67
    array-length v3, v1

    if-le v3, v9, :cond_9a

    aget-object v3, v1, v9

    const-string/jumbo v10, "{{sensitive}}"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 179
    aget-object v3, v1, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_9b

    :cond_9a
    move-object v11, p0

    .line 183
    :goto_9b
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 185
    new-instance v0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-object v5, v0

    move-object v10, p0

    move-object v12, p1

    invoke-direct/range {v5 .. v12}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V

    return-object v0

    :catch_a8
    move-exception p0

    .line 150
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "problem parsing code"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 140
    :cond_b2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v3, v4, :cond_15

    move v3, v5

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    move v6, v3

    :goto_17
    if-ge v3, v1, :cond_78

    const/16 v7, 0x20

    if-eqz v6, :cond_1f

    move v8, v4

    goto :goto_20

    :cond_1f
    move v8, v7

    :goto_20
    move v9, v3

    :goto_21
    if-ge v9, v1, :cond_35

    .line 235
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v8, :cond_35

    .line 236
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_33

    add-int/lit8 v9, v9, 0x1

    :cond_33
    add-int/2addr v9, v5

    goto :goto_21

    :cond_35
    if-le v9, v1, :cond_38

    move v9, v1

    .line 243
    :cond_38
    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 244
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v3, v9

    if-nez v6, :cond_48

    .line 246
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_4a

    :cond_48
    add-int/lit8 v3, v3, 0x1

    :goto_4a
    const-string v6, "\\\\"

    const-string v9, "\\"

    .line 251
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\\""

    const-string v9, "\""

    .line 252
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const-string v7, " \""

    .line 259
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_71

    if-gt v7, v6, :cond_71

    add-int/lit8 v7, v7, 0x2

    move v6, v5

    move v3, v7

    goto :goto_17

    :cond_71
    if-le v6, v8, :cond_76

    add-int/lit8 v6, v6, 0x1

    move v3, v6

    :cond_76
    move v6, v2

    goto :goto_17

    .line 277
    :cond_78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public checkCode(I)V
    .registers 5

    .line 126
    iget v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    if-ne v0, p1, :cond_5

    return-void

    .line 127
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but was: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCmdNumber()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCmdNumber:I

    return p0
.end method

.method public getCode()I
    .registers 1

    .line 57
    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    return p0
.end method

.method public getField(I)Ljava/lang/String;
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 210
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    :cond_c
    add-int/lit8 p1, p1, 0x2

    .line 213
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    array-length v0, p0

    if-le p1, v0, :cond_15

    const/4 p0, 0x0

    return-object p0

    .line 214
    :cond_15
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getFileDescriptors()[Ljava/io/FileDescriptor;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getRawEvent()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseCode()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mResponseCode:I

    return p0
.end method

.method public isClassClientError()Z
    .registers 2

    .line 106
    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_c

    const/16 v0, 0x258

    if-ge p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isClassContinue()Z
    .registers 2

    .line 85
    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v0, 0x64

    if-lt p0, v0, :cond_c

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isClassOk()Z
    .registers 2

    .line 92
    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_c

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isClassServerError()Z
    .registers 2

    .line 99
    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v0, 0x190

    if-lt p0, v0, :cond_c

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isClassUnsolicited()Z
    .registers 1

    .line 113
    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    return-object p0
.end method
