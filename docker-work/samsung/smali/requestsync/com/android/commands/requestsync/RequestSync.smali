.class public Lcom/android/commands/requestsync/RequestSync;
.super Ljava/lang/Object;
.source "RequestSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/requestsync/RequestSync$Operation;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mArgs:[Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mExemptionFlag:I

.field private mExtras:Landroid/os/Bundle;

.field private mNextArg:I

.field private mOperation:Lcom/android/commands/requestsync/RequestSync$Operation;

.field private mPeriodicIntervalSeconds:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccount(Lcom/android/commands/requestsync/RequestSync;)Landroid/accounts/Account;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/requestsync/RequestSync;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuthority(Lcom/android/commands/requestsync/RequestSync;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExemptionFlag(Lcom/android/commands/requestsync/RequestSync;)I
    .registers 1

    iget p0, p0, Lcom/android/commands/requestsync/RequestSync;->mExemptionFlag:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtras(Lcom/android/commands/requestsync/RequestSync;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPeriodicIntervalSeconds(Lcom/android/commands/requestsync/RequestSync;)I
    .registers 1

    iget p0, p0, Lcom/android/commands/requestsync/RequestSync;->mPeriodicIntervalSeconds:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExemptionFlag:I

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 96
    :try_start_0
    new-instance v0, Lcom/android/commands/requestsync/RequestSync;

    invoke-direct {v0}, Lcom/android/commands/requestsync/RequestSync;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/commands/requestsync/RequestSync;->run([Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_33

    .line 101
    :catch_9
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 103
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_34

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_14
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    .line 99
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 104
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_33
    nop

    .line 105
    :goto_34
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 266
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 267
    .local v0, "arg":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 268
    return-object v0

    .line 269
    .end local v0    # "arg":Ljava/lang/String;
    :cond_a
    iget v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_18

    .line 270
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    aget-object v0, v2, v0

    return-object v0

    .line 272
    :cond_18
    return-object v1
.end method

.method private nextArgRequired()Ljava/lang/String;
    .registers 6

    .line 277
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 282
    return-object v0

    .line 279
    :cond_7
    iget-object v1, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 280
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private nextOption()Ljava/lang/String;
    .registers 6

    .line 236
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_4e

    .line 240
    iget v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_e

    .line 241
    return-object v4

    .line 243
    :cond_e
    aget-object v0, v2, v0

    .line 244
    .local v0, "arg":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 245
    return-object v4

    .line 247
    :cond_19
    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    .line 248
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 249
    return-object v4

    .line 251
    :cond_27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4b

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4b

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_48

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 256
    :cond_48
    iput-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 257
    return-object v0

    .line 260
    :cond_4b
    iput-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 261
    return-object v0

    .line 237
    .end local v0    # "arg":Ljava/lang/String;
    :cond_4e
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    .line 238
    .local v0, "prev":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No argument expected after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseArgs()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/android/commands/requestsync/RequestSync$Operation;->REQUEST_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mOperation:Lcom/android/commands/requestsync/RequestSync$Operation;

    .line 140
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_4a

    .line 141
    aget-object v0, v0, v2

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_33a

    :cond_15
    goto :goto_29

    :sswitch_16
    const-string v4, "remove-periodic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v1, v3

    goto :goto_29

    :sswitch_20
    const-string v4, "add-periodic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v1, v2

    :goto_29
    packed-switch v1, :pswitch_data_344

    goto :goto_4a

    .line 148
    :pswitch_2d
    iget v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    .line 149
    sget-object v0, Lcom/android/commands/requestsync/RequestSync$Operation;->REMOVE_PERIODIC_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mOperation:Lcom/android/commands/requestsync/RequestSync$Operation;

    goto :goto_4a

    .line 143
    :pswitch_37
    iget v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    .line 144
    sget-object v0, Lcom/android/commands/requestsync/RequestSync$Operation;->ADD_PERIODIC_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mOperation:Lcom/android/commands/requestsync/RequestSync$Operation;

    .line 145
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mPeriodicIntervalSeconds:I

    .line 155
    :cond_4a
    :goto_4a
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_32e

    .line 156
    const-string v0, "-h"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32a

    const-string v0, "--help"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto/16 :goto_32a

    .line 159
    :cond_63
    const-string v0, "-n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_322

    const-string v0, "--account-name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    goto/16 :goto_322

    .line 161
    :cond_75
    const-string v0, "-t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31a

    const-string v0, "--account-type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    goto/16 :goto_31a

    .line 163
    :cond_87
    const-string v0, "-a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_312

    const-string v0, "--authority"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    goto/16 :goto_312

    .line 165
    :cond_99
    const-string v0, "--is"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_309

    const-string v0, "--ignore-settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    goto/16 :goto_309

    .line 167
    :cond_ab
    const-string v0, "--ib"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_300

    const-string v0, "--ignore-backoff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    goto/16 :goto_300

    .line 169
    :cond_bd
    const-string v0, "--dd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f7

    const-string v0, "--discard-deletions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    goto/16 :goto_2f7

    .line 171
    :cond_cf
    const-string v0, "--nr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ee

    const-string v0, "--no-retry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    goto/16 :goto_2ee

    .line 173
    :cond_e1
    const-string v0, "--ex"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e5

    const-string v0, "--expedited"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    goto/16 :goto_2e5

    .line 175
    :cond_f3
    const-string v0, "-i"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2dc

    const-string v0, "--initialize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    goto/16 :goto_2dc

    .line 177
    :cond_105
    const-string v0, "-m"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d3

    const-string v0, "--manual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    goto/16 :goto_2d3

    .line 179
    :cond_117
    const-string v0, "--od"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ca

    const-string v0, "--override-deletions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    goto/16 :goto_2ca

    .line 181
    :cond_129
    const-string v0, "-u"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c1

    const-string v0, "--upload-only"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    goto/16 :goto_2c1

    .line 183
    :cond_13b
    const-string v0, "--rc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b8

    const-string v0, "--require-charging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    goto/16 :goto_2b8

    .line 185
    :cond_14d
    const-string v0, "--ej"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2af

    const-string v0, "--schedule-as-ej"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    goto/16 :goto_2af

    .line 187
    :cond_15f
    const-string v0, "-e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a0

    const-string v0, "--es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a0

    const-string v0, "--extra-string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    goto/16 :goto_2a0

    .line 191
    :cond_179
    const-string v0, "--esn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "--extra-string-null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    goto/16 :goto_294

    .line 194
    :cond_18b
    const-string v0, "--ei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27d

    const-string v0, "--extra-int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    goto/16 :goto_27d

    .line 198
    :cond_19d
    const-string v0, "--el"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26a

    const-string v0, "--extra-long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    goto/16 :goto_26a

    .line 202
    :cond_1af
    const-string v0, "--ef"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_256

    const-string v0, "--extra-float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    goto/16 :goto_256

    .line 206
    :cond_1c1
    const-string v0, "--ed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_242

    const-string v0, "--extra-double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d3

    goto/16 :goto_242

    .line 210
    :cond_1d3
    const-string v0, "--ez"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22b

    const-string v0, "--extra-bool"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    goto :goto_22b

    .line 215
    :cond_1e4
    const-string v0, "-f"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_227

    const-string v0, "--foreground"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    goto :goto_227

    .line 218
    :cond_1f5
    const-string v0, "-F"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_222

    const-string v0, "--top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_206

    goto :goto_222

    .line 222
    :cond_206
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    .line 224
    return v2

    .line 219
    :cond_222
    :goto_222
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExemptionFlag:I

    goto/16 :goto_4a

    .line 216
    :cond_227
    :goto_227
    iput v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExemptionFlag:I

    goto/16 :goto_4a

    .line 211
    :cond_22b
    :goto_22b
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_4a

    .line 207
    :cond_242
    :goto_242
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 208
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 209
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 210
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_4a

    .line 203
    :cond_256
    :goto_256
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 205
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 206
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_4a

    .line 199
    :cond_26a
    :goto_26a
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 200
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 201
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 202
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_4a

    .line 195
    :cond_27d
    :goto_27d
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 197
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_4a

    .line 192
    :cond_294
    :goto_294
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v0    # "key":Ljava/lang/String;
    goto/16 :goto_4a

    .line 188
    :cond_2a0
    :goto_2a0
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 189
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 190
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_4a

    .line 186
    :cond_2af
    :goto_2af
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "schedule_as_expedited_job"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4a

    .line 184
    :cond_2b8
    :goto_2b8
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "require_charging"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4a

    .line 182
    :cond_2c1
    :goto_2c1
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "upload"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4a

    .line 180
    :cond_2ca
    :goto_2ca
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "deletions_override"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4a

    .line 178
    :cond_2d3
    :goto_2d3
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "force"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4a

    .line 176
    :cond_2dc
    :goto_2dc
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "initialize"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4a

    .line 174
    :cond_2e5
    :goto_2e5
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "expedited"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4a

    .line 172
    :cond_2ee
    :goto_2ee
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "do_not_retry"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4a

    .line 170
    :cond_2f7
    :goto_2f7
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "discard_deletions"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4a

    .line 168
    :cond_300
    :goto_300
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "ignore_backoff"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4a

    .line 166
    :cond_309
    :goto_309
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v4, "ignore_settings"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4a

    .line 164
    :cond_312
    :goto_312
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    goto/16 :goto_4a

    .line 162
    :cond_31a
    :goto_31a
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    goto/16 :goto_4a

    .line 160
    :cond_322
    :goto_322
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    goto/16 :goto_4a

    .line 157
    :cond_32a
    :goto_32a
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    .line 158
    return v2

    .line 228
    :cond_32e
    iget v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_339

    .line 229
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    .line 230
    return v2

    .line 232
    :cond_339
    return v3

    :sswitch_data_33a
    .sparse-switch
        -0x55c5b9b9 -> :sswitch_20
        0x304ef5c4 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_344
    .packed-switch 0x0
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method

.method private run([Ljava/lang/String;)V
    .registers 12
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    .line 111
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->parseArgs()Z

    move-result v1

    .line 112
    .local v1, "ok":Z
    if-eqz v1, :cond_9a

    .line 113
    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    if-eqz v2, :cond_1d

    .line 114
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 116
    .local v2, "account":Landroid/accounts/Account;
    :goto_1e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "Requesting sync for: \n"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 117
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3d

    .line 118
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v6, v0

    iget-object v7, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v6, v4

    const-string v7, "  Account: %s (%s)\n"

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_46

    .line 120
    :cond_3d
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "  Account: all\n"

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 123
    :goto_46
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    if-eqz v7, :cond_4f

    goto :goto_51

    :cond_4f
    const-string v7, "All"

    :goto_51
    aput-object v7, v6, v0

    const-string v7, "  Authority: %s\n"

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 125
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v5

    if-lez v5, :cond_93

    .line 126
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "  Extras:\n"

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 127
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_73
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 128
    .local v6, "key":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v6, v8, v0

    iget-object v9, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v9, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "    %s: %s\n"

    invoke-virtual {v7, v9, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 129
    .end local v6    # "key":Ljava/lang/String;
    goto :goto_73

    .line 132
    :cond_93
    iput-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mAccount:Landroid/accounts/Account;

    .line 134
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mOperation:Lcom/android/commands/requestsync/RequestSync$Operation;

    invoke-virtual {v0, p0}, Lcom/android/commands/requestsync/RequestSync$Operation;->invoke(Lcom/android/commands/requestsync/RequestSync;)V

    .line 136
    .end local v2    # "account":Landroid/accounts/Account;
    :cond_9a
    return-void
.end method

.method private static showUsage()V
    .registers 2

    .line 286
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage:\n\n  requestsync [options]\n    With no options, a sync will be requested for all account and all sync\n    authorities with no extras.\n    Basic options:\n       -h|--help: Display this message\n       -n|--account-name <ACCOUNT-NAME>\n       -t|--account-type <ACCOUNT-TYPE>\n       -a|--authority <AUTHORITY>\n    App-standby related options\n\n       -f|--foreground (defeat app-standby job throttling, but not battery saver)\n       -F|--top (defeat app-standby job throttling and battery saver)\n    ContentResolver extra options:\n      --is|--ignore-settings: Add SYNC_EXTRAS_IGNORE_SETTINGS\n      --ib|--ignore-backoff: Add SYNC_EXTRAS_IGNORE_BACKOFF\n      --dd|--discard-deletions: Add SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS\n      --nr|--no-retry: Add SYNC_EXTRAS_DO_NOT_RETRY\n      --ex|--expedited: Add SYNC_EXTRAS_EXPEDITED\n      -i|--initialize: Add SYNC_EXTRAS_INITIALIZE\n      --m|--manual: Add SYNC_EXTRAS_MANUAL\n      --od|--override-deletions: Add SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS\n      -u|--upload-only: Add SYNC_EXTRAS_UPLOAD\n      --rc|--require-charging: Add SYNC_EXTRAS_REQUIRE_CHARGING\n    Custom extra options:\n      -e|--es|--extra-string <KEY> <VALUE>\n      --esn|--extra-string-null <KEY>\n      --ei|--extra-int <KEY> <VALUE>\n      --el|--extra-long <KEY> <VALUE>\n      --ef|--extra-float <KEY> <VALUE>\n      --ed|--extra-double <KEY> <VALUE>\n      --ez|--extra-bool <KEY> <VALUE>\n\n  requestsync add-periodic INTERVAL-SECOND [options]\n  requestsync remove-periodic [options]\n    Mandatory options:\n      -n|--account-name <ACCOUNT-NAME>\n      -t|--account-type <ACCOUNT-TYPE>\n      -a|--authority <AUTHORITY>\n    Also takes the above extra options.\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    return-void
.end method
