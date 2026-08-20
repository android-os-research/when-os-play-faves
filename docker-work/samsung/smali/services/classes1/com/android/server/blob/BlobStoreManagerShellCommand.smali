.class public Lcom/android/server/blob/BlobStoreManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "BlobStoreManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;
    }
.end annotation


# instance fields
.field public final mService:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 39
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_6e

    goto :goto_4d

    :sswitch_15
    const-string/jumbo v2, "idle-maintenance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_4d

    :cond_1f
    const/4 v1, 0x4

    goto :goto_4d

    :sswitch_21
    const-string/jumbo v2, "query-blob-existence"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_4d

    :cond_2b
    const/4 v1, 0x3

    goto :goto_4d

    :sswitch_2d
    const-string v2, "clear-all-blobs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_4d

    :cond_36
    const/4 v1, 0x2

    goto :goto_4d

    :sswitch_38
    const-string v2, "clear-all-sessions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_4d

    :cond_41
    const/4 v1, 0x1

    goto :goto_4d

    :sswitch_43
    const-string v2, "delete-blob"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    packed-switch v1, :pswitch_data_84

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 48
    :pswitch_55
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 50
    :pswitch_5a
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runQueryBlobExistence(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 44
    :pswitch_5f
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runClearAllBlobs(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 42
    :pswitch_64
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runClearAllSessions(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 46
    :pswitch_69
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runDeleteBlob(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :sswitch_data_6e
    .sparse-switch
        -0x45a66181 -> :sswitch_43
        -0x39e20d37 -> :sswitch_38
        -0xf634e36 -> :sswitch_2d
        0x2a7987b7 -> :sswitch_21
        0x6ef5269a -> :sswitch_15
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 108
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "BlobStore service (blob_store) commands:"

    .line 109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "help"

    .line 110
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 111
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "clear-all-sessions [-u | --user USER_ID]"

    .line 113
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Remove all sessions."

    .line 114
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Options:"

    .line 115
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      -u or --user: specify which user\'s sessions to be removed."

    .line 116
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "                    If not specified, sessions in all users are removed."

    .line 117
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v1, "clear-all-blobs [-u | --user USER_ID]"

    .line 119
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Remove all blobs."

    .line 120
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      -u or --user: specify which user\'s blobs to be removed."

    .line 122
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "                    If not specified, blobs in all users are removed."

    .line 123
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "delete-blob [-u | --user USER_ID] [--digest DIGEST] [--expiry EXPIRY_TIME] [--label LABEL] [--tag TAG]"

    .line 124
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Delete a blob."

    .line 126
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      -u or --user: specify which user\'s blobs to be removed;"

    .line 128
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --digest: Base64 encoded digest of the blob to delete."

    .line 130
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --expiry: Expiry time of the blob to delete, in milliseconds."

    .line 131
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --label: Label of the blob to delete."

    .line 132
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --tag: Tag of the blob to delete."

    .line 133
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "idle-maintenance"

    .line 134
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Run idle maintenance which takes care of removing stale data."

    .line 135
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "query-blob-existence [-b BLOB_ID]"

    .line 136
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints 1 if blob exists, otherwise 0."

    .line 137
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I
    .registers 7

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_dc

    :goto_f
    move v1, v3

    goto :goto_67

    :sswitch_11
    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v1, 0x7

    goto :goto_67

    :sswitch_1c
    const-string v1, "--algo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_f

    :cond_25
    const/4 v1, 0x6

    goto :goto_67

    :sswitch_27
    const-string v1, "--expiry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_f

    :cond_30
    const/4 v1, 0x5

    goto :goto_67

    :sswitch_32
    const-string v1, "--digest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_f

    :cond_3b
    const/4 v1, 0x4

    goto :goto_67

    :sswitch_3d
    const-string v1, "--tag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_f

    :cond_46
    const/4 v1, 0x3

    goto :goto_67

    :sswitch_48
    const-string v1, "-u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    goto :goto_f

    :cond_51
    const/4 v1, 0x2

    goto :goto_67

    :sswitch_53
    const-string v1, "-b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_f

    :cond_5c
    const/4 v1, 0x1

    goto :goto_67

    :sswitch_5e
    const-string v2, "--label"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    goto :goto_f

    :cond_67
    :goto_67
    packed-switch v1, :pswitch_data_fe

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error: unknown option \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 150
    :pswitch_84
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    goto/16 :goto_0

    .line 159
    :pswitch_8c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->expiryTimeMillis:J

    goto/16 :goto_0

    .line 153
    :pswitch_98
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->digest:[B

    goto/16 :goto_0

    .line 162
    :pswitch_a8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->tag:Ljava/lang/String;

    goto/16 :goto_0

    .line 147
    :pswitch_b0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    goto/16 :goto_0

    .line 165
    :pswitch_bc
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->blobId:J

    goto/16 :goto_0

    .line 156
    :pswitch_c8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 172
    :cond_d0
    iget p0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    const/4 p1, -0x2

    if-ne p0, p1, :cond_db

    .line 173
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    iput p0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    :cond_db
    return v1

    :sswitch_data_dc
    .sparse-switch
        -0x609e02ac -> :sswitch_5e
        0x5d5 -> :sswitch_53
        0x5e8 -> :sswitch_48
        0x29055fa -> :sswitch_3d
        0x3fa9eb64 -> :sswitch_32
        0x42364ad3 -> :sswitch_27
        0x4f71eff3 -> :sswitch_1c
        0x4f7b216b -> :sswitch_11
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_bc
        :pswitch_b0
        :pswitch_a8
        :pswitch_98
        :pswitch_8c
        :pswitch_84
        :pswitch_b0
    .end packed-switch
.end method

.method public final runClearAllBlobs(Ljava/io/PrintWriter;)I
    .registers 4

    .line 69
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs-IA;)V

    const/4 v1, -0x1

    .line 70
    iput v1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result p1

    if-gez p1, :cond_10

    return v1

    .line 76
    :cond_10
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    iget p1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->runClearAllBlobs(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runClearAllSessions(Ljava/io/PrintWriter;)I
    .registers 4

    .line 57
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs-IA;)V

    const/4 v1, -0x1

    .line 58
    iput v1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result p1

    if-gez p1, :cond_10

    return v1

    .line 64
    :cond_10
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    iget p1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->runClearAllSessions(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runDeleteBlob(Ljava/io/PrintWriter;)I
    .registers 4

    .line 81
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs-IA;)V

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result p1

    if-gez p1, :cond_e

    const/4 p0, -0x1

    return p0

    .line 87
    :cond_e
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object p1

    iget v0, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlob(Landroid/app/blob/BlobHandle;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIdleMaintenance(Ljava/io/PrintWriter;)I
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->runIdleMaintenance()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runQueryBlobExistence(Ljava/io/PrintWriter;)I
    .registers 5

    .line 97
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs-IA;)V

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result v1

    if-gez v1, :cond_e

    const/4 p0, -0x1

    return p0

    .line 102
    :cond_e
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    iget-wide v1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->blobId:J

    iget v0, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/blob/BlobStoreManagerService;->isBlobAvailable(JI)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method
