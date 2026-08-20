.class public Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverAuthStateFile"
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mExtraData:[B

.field public mId:[B

.field public final mPath:Ljava/lang/String;

.field public final mTmpDir:Ljava/io/File;

.field public mUri:[B

.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPath(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTmpDir(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mTmpDir:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mwriteFile(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;[B[B[B)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->writeFile([B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 3

    .line 1288
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1289
    const-class p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 1290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ANDROID_DATA"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/misc/saccessory_manager/auth_state"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mPath:Ljava/lang/String;

    .line 1291
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mTmpDir:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    return-void
.end method


# virtual methods
.method public readFile()V
    .registers 3

    .line 1366
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;

    const-string v1, "AuthStateReader"

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final writeFile([B[B[B)V
    .registers 13

    if-nez p1, :cond_a

    .line 1299
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    const-string p1, "ID is null.. can not write"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1303
    :cond_a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1304
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "same state.. "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1308
    :cond_2b
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    .line 1309
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    if-eqz p2, :cond_42

    .line 1312
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    .line 1313
    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_44

    .line 1315
    :cond_42
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    :goto_44
    if-eqz p3, :cond_50

    .line 1318
    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    .line 1319
    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_52

    .line 1321
    :cond_50
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    .line 1323
    :goto_52
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;

    const-string v5, "AuthStateUpdater"

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;Ljava/lang/String;[B[B[B)V

    .line 1362
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
