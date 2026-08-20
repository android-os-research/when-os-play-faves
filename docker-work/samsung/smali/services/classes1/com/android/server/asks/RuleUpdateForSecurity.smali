.class public Lcom/android/server/asks/RuleUpdateForSecurity;
.super Ljava/lang/Object;
.source "RuleUpdateForSecurity.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field public device_basePath:Ljava/lang/String;

.field public device_policyCopyPath:Ljava/lang/String;

.field public device_policyUnzipPath:Ljava/lang/String;

.field public device_policyVersionPath:Ljava/lang/String;

.field public mContainer:Lcom/android/server/asks/RUFSContainer;

.field public mVersionFromDevice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/asks/RUFSContainer;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AASA_RuleUpdateForSecurity_RUFS"

    .line 38
    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    const-string v1, "/data/system/.aasa"

    .line 41
    iput-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyVersionPath:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    return-void
.end method

.method public static writeFile([BLjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 417
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 419
    :cond_1c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 421
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public applyPolicies(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    if-eqz v0, :cond_24

    .line 284
    invoke-virtual {v0}, Lcom/android/server/asks/RUFSContainer;->getADPModels()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v1}, Lcom/android/server/asks/RUFSContainer;->getADPCarriers()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADP.xml"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcom/android/server/asks/RuleUpdateForSecurity;->checkTargetAndRemoveIfNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v0}, Lcom/android/server/asks/RUFSContainer;->getASKSRNEWModels()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v1}, Lcom/android/server/asks/RUFSContainer;->getASKSRNEWCarriers()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASKSRNEW.xml"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcom/android/server/asks/RuleUpdateForSecurity;->checkTargetAndRemoveIfNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_bc

    .line 291
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_b5

    .line 295
    array-length v2, p3

    move v3, v0

    :goto_35
    if-ge v3, v2, :cond_bc

    aget-object v4, p3, v3

    .line 298
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 299
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 301
    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "same file exist "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    goto :goto_6d

    :cond_6c
    move v5, v1

    :goto_6d
    if-eqz v5, :cond_b2

    .line 307
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    const-string v6, "delete unused file : "

    if-eqz v5, :cond_95

    .line 308
    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 310
    :cond_95
    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fail"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    :goto_b2
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 316
    :cond_b5
    iget-object p3, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string p4, "File list is null !!"

    invoke-static {p3, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_bc
    new-instance p3, Ljava/io/File;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AASApolicy"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p4

    if-eqz p4, :cond_115

    move v3, v0

    .line 327
    :goto_e0
    array-length v4, p4

    if-ge v3, v4, :cond_115

    .line 328
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p4, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_112

    .line 331
    aget-object v5, p4, v3

    invoke-virtual {p0, v5, v4}, Lcom/android/server/asks/RuleUpdateForSecurity;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_112

    move p4, v1

    goto :goto_116

    :cond_112
    add-int/lit8 v3, v3, 0x1

    goto :goto_e0

    :cond_115
    move p4, v0

    :goto_116
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p4, v1, :cond_1a3

    .line 339
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_18b

    .line 341
    iget-object p3, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AASApolicy folder is changed into old version: "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    new-instance p4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_182

    .line 346
    iget-object p3, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string p4, " new policy folder is changed into AASApolicy"

    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p4, v3

    goto :goto_1a3

    .line 350
    :cond_182
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "Fail changeD"

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move p4, v4

    goto :goto_1a3

    .line 354
    :cond_18b
    iget-object p3, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Fail changed into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a3
    :goto_1a3
    if-eq p4, v4, :cond_1aa

    if-eq p4, v3, :cond_1a8

    goto :goto_1cd

    :cond_1a8
    move v0, v1

    goto :goto_1cd

    .line 364
    :cond_1aa
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    new-instance p4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 373
    :goto_1cd
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDir(Ljava/io/File;)V

    .line 374
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDir(Ljava/io/File;)V

    .line 375
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDir(Ljava/io/File;)V

    return v0
.end method

.method public final checkTargetAndRemoveIfNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    if-eqz p3, :cond_74

    if-eqz p4, :cond_74

    const-string v0, ","

    .line 241
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 242
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_23

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    .line 249
    :goto_18
    array-length v4, p3

    if-ge v3, v4, :cond_24

    .line 250
    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_23
    move-object v2, v1

    :cond_24
    if-eqz p4, :cond_36

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    :goto_2b
    array-length p3, p4

    if-ge v0, p3, :cond_36

    .line 257
    aget-object p3, p4, v0

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 261
    :cond_36
    invoke-virtual {p0, v2, v1}, Lcom/android/server/asks/RuleUpdateForSecurity;->checkTargetModelAndCarrier(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p3

    if-nez p3, :cond_74

    .line 263
    new-instance p3, Ljava/io/File;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 265
    iget-object p0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not target here"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_74
    return-void
.end method

.method public final checkTargetModelAndCarrier(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "ro.product.model"

    .line 215
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.csc.sales_code"

    .line 216
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ALL"

    .line 220
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_30

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_30

    .line 221
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, v4, :cond_4a

    .line 222
    :cond_29
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    goto :goto_4a

    .line 225
    :cond_30
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 226
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, v4, :cond_4a

    .line 227
    :cond_42
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v4, 0x0

    .line 232
    :cond_4a
    :goto_4a
    iget-object p0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkTargetModelAndCarrier() : result = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public final compSizeofUncompressFiles(Ljava/lang/String;)Z
    .registers 8

    .line 586
    iget-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 589
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/asks/RUFSContainer;->getSizeofFiles()J

    move-result-wide v2

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->getSizeofFiles(Ljava/lang/String;)J

    move-result-wide v4

    .line 591
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    if-nez p1, :cond_16

    const/4 p0, 0x1

    move v1, p0

    goto :goto_35

    .line 596
    :cond_16
    iget-object p0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "size of all files   token:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " device:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    :goto_35
    return v1
.end method

.method public final convertToHex([B)Ljava/lang/String;
    .registers 10

    .line 567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2e

    aget-byte v3, p1, v2

    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    move v5, v1

    :goto_11
    if-ltz v4, :cond_1a

    const/16 v6, 0x9

    if-gt v4, v6, :cond_1a

    add-int/lit8 v4, v4, 0x30

    goto :goto_1e

    :cond_1a
    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v4, v4, 0x61

    :goto_1e
    int-to-char v4, v4

    .line 574
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v3, 0xf

    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-lt v5, v7, :cond_2c

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2c
    move v5, v6

    goto :goto_11

    .line 579
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final copyFileUsingStream(Ljava/io/File;Ljava/io/File;)Z
    .registers 6

    const-string p0, ""

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 182
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_6e
    .catchall {:try_start_4 .. :try_end_9} :catchall_46

    .line 183
    :try_start_9
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_43
    .catchall {:try_start_9 .. :try_end_e} :catchall_3f

    const/16 p2, 0x1000

    :try_start_10
    new-array p2, p2, [B

    .line 186
    :goto_12
    invoke-virtual {v2, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1c

    .line 187
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1b} :catch_44
    .catchall {:try_start_10 .. :try_end_1b} :catchall_3d

    goto :goto_12

    .line 197
    :cond_1c
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 201
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_3b

    :catch_23
    move-exception p1

    .line 206
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3b
    const/4 v0, 0x1

    goto :goto_94

    :catchall_3d
    move-exception p2

    goto :goto_41

    :catchall_3f
    move-exception p2

    move-object p1, v1

    :goto_41
    move-object v1, v2

    goto :goto_48

    :catch_43
    move-object p1, v1

    :catch_44
    move-object v1, v2

    goto :goto_6f

    :catchall_46
    move-exception p2

    move-object p1, v1

    :goto_48
    if-eqz v1, :cond_50

    .line 197
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_50

    :catch_4e
    move-exception p1

    goto :goto_56

    :cond_50
    :goto_50
    if-eqz p1, :cond_6d

    .line 201
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_55} :catch_4e

    goto :goto_6d

    .line 206
    :goto_56
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    :cond_6d
    :goto_6d
    throw p2

    :catch_6e
    move-object p1, v1

    :goto_6f
    if-eqz v1, :cond_77

    .line 197
    :try_start_71
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_77

    :catch_75
    move-exception p1

    goto :goto_7d

    :cond_77
    :goto_77
    if-eqz p1, :cond_94

    .line 201
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7c} :catch_75

    goto :goto_94

    .line 206
    :goto_7d
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_94
    :goto_94
    return v0
.end method

.method public final deleteDir(Ljava/io/File;)V
    .registers 6

    if-eqz p1, :cond_1d

    .line 384
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 386
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 387
    invoke-virtual {p0, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDir(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 390
    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 391
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1d
    return-void
.end method

.method public final descramble([BLjava/lang/String;)[B
    .registers 7

    .line 396
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 398
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 399
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int v2, v1, v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 400
    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 401
    aget-byte v3, p1, v1

    invoke-virtual {p0, v3, v2}, Lcom/android/server/asks/RuleUpdateForSecurity;->inverseEachBit(BI)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_20
    return-object v0
.end method

.method public final digest(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SHA-1"

    .line 466
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_d

    :catch_8
    move-exception v1

    .line 468
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v1, v0

    :goto_d
    if-nez p2, :cond_10

    return-object v0

    .line 475
    :cond_10
    :try_start_10
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    const/16 p1, 0x1000

    new-array p2, p1, [B

    if-eqz v0, :cond_6b

    :goto_1a
    const/4 v2, 0x0

    .line 479
    invoke-virtual {v0, p2, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    .line 480
    invoke-virtual {v1, p2, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1a

    .line 482
    :cond_26
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_29} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_29} :catch_2a

    goto :goto_6b

    :catch_2a
    move-exception p1

    .line 494
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " + No RUN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_6b

    .line 497
    :try_start_47
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_6b

    goto :goto_6b

    :catch_4b
    move-exception p1

    .line 485
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " + No IO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_6b

    .line 488
    :try_start_68
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6b

    .line 503
    :catch_6b
    :cond_6b
    :goto_6b
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->convertToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final enforcePermissionCheckForASKS()Z
    .registers 2

    .line 629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public getDevice_policyUnzipPath()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    return-object p0
.end method

.method public getDevice_policyVersionPath()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyVersionPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getSizeofFiles(Ljava/lang/String;)J
    .registers 8

    const-wide/16 v0, 0x0

    .line 609
    :try_start_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 612
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    move-wide v2, v0

    .line 613
    :goto_13
    array-length v4, p0

    if-ge p1, v4, :cond_20

    .line 616
    aget-object v4, p0, p1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_22

    add-long/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_20
    move-wide v0, v2

    goto :goto_39

    :catch_22
    move-exception p0

    .line 621
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_39
    :goto_39
    return-wide v0
.end method

.method public final inverseEachBit(BI)B
    .registers 4

    shr-int p0, p1, p2

    const/4 v0, 0x1

    and-int/2addr p0, v0

    int-to-byte p0, p0

    if-nez p0, :cond_b

    shl-int p0, v0, p2

    or-int/2addr p0, p1

    goto :goto_f

    :cond_b
    shl-int p0, v0, p2

    not-int p0, p0

    and-int/2addr p0, p1

    :goto_f
    int-to-byte p0, p0

    return p0
.end method

.method public isUpdatePolicy(Ljava/lang/String;)Z
    .registers 7

    .line 62
    iget-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 63
    invoke-virtual {v0}, Lcom/android/server/asks/RUFSContainer;->getPolicyVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_45

    .line 67
    :try_start_11
    iget-object v2, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_38} :catch_45

    if-le v0, v2, :cond_45

    const/4 v0, 0x1

    .line 70
    :try_start_3b
    iput-object p1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    .line 71
    iget-object p0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string p1, " Now try to update"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_44} :catch_44

    :catch_44
    move v1, v0

    :catch_45
    :cond_45
    return v1
.end method

.method public final readFile(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[B
    .registers 6

    .line 428
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 v0, 0x100000

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 432
    :try_start_a
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_51
    .catchall {:try_start_a .. :try_end_e} :catchall_3a

    .line 433
    :try_start_e
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_37
    .catchall {:try_start_e .. :try_end_13} :catchall_33

    .line 435
    :goto_13
    :try_start_13
    invoke-virtual {p2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1e

    const/4 v2, 0x0

    .line 436
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_38
    .catchall {:try_start_13 .. :try_end_1d} :catchall_31

    goto :goto_13

    :cond_1e
    if-eqz p1, :cond_28

    .line 443
    :try_start_20
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_61

    goto :goto_28

    :catch_24
    move-exception p1

    .line 445
    :try_start_25
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_61

    .line 450
    :cond_28
    :goto_28
    :try_start_28
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_61

    goto :goto_61

    :catch_2c
    move-exception p1

    .line 452
    :try_start_2d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_61

    goto :goto_61

    :catchall_31
    move-exception p0

    goto :goto_35

    :catchall_33
    move-exception p0

    move-object p2, v1

    :goto_35
    move-object v1, p1

    goto :goto_3c

    :catch_37
    move-object p2, v1

    :catch_38
    move-object v1, p1

    goto :goto_52

    :catchall_3a
    move-exception p0

    move-object p2, v1

    :goto_3c
    if-eqz v1, :cond_46

    .line 443
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_50

    goto :goto_46

    :catch_42
    move-exception p1

    .line 445
    :try_start_43
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_50

    :cond_46
    :goto_46
    if-eqz p2, :cond_50

    .line 450
    :try_start_48
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_50

    goto :goto_50

    :catch_4c
    move-exception p1

    .line 452
    :try_start_4d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_50

    .line 457
    :catch_50
    :cond_50
    :goto_50
    throw p0

    :catch_51
    move-object p2, v1

    :goto_52
    if-eqz v1, :cond_5c

    .line 443
    :try_start_54
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_61

    goto :goto_5c

    :catch_58
    move-exception p1

    .line 445
    :try_start_59
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_61

    :cond_5c
    :goto_5c
    if-eqz p2, :cond_61

    .line 450
    :try_start_5e
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_61

    .line 458
    :catch_61
    :cond_61
    :goto_61
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final setDevice_policyVersionPath(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyVersionPath:Ljava/lang/String;

    return-void
.end method

.method public final unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 510
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_e
    const/16 p0, 0x1000

    new-array p0, p0, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 521
    :try_start_14
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_85
    .catchall {:try_start_14 .. :try_end_19} :catchall_81

    .line 522
    :try_start_19
    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_7e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_7b

    .line 523
    :try_start_1e
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    :goto_22
    if-eqz v3, :cond_6e

    .line 525
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 526
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 530
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_52} :catch_79
    .catchall {:try_start_1e .. :try_end_52} :catchall_9e

    .line 532
    :goto_52
    :try_start_52
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_5c

    .line 533
    invoke-virtual {v3, p0, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_52

    .line 536
    :cond_5c
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 537
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 538
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_66} :catch_6b
    .catchall {:try_start_52 .. :try_end_66} :catchall_68

    move-object v3, v4

    goto :goto_22

    :catchall_68
    move-exception p0

    move-object v1, v3

    goto :goto_9f

    :catch_6b
    move-exception p0

    move-object v1, v3

    goto :goto_88

    .line 553
    :cond_6e
    :try_start_6e
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 554
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_74} :catch_74

    .line 560
    :catch_74
    :try_start_74
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_77

    :catch_77
    const/4 v0, 0x1

    goto :goto_9d

    :catch_79
    move-exception p0

    goto :goto_88

    :catchall_7b
    move-exception p0

    move-object p1, v1

    goto :goto_9f

    :catch_7e
    move-exception p0

    move-object p1, v1

    goto :goto_88

    :catchall_81
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    goto :goto_9f

    :catch_85
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    .line 543
    :goto_88
    :try_start_88
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_9e

    if-eqz v1, :cond_90

    .line 548
    :try_start_8d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_90

    :catch_90
    :cond_90
    if-eqz p1, :cond_98

    .line 553
    :try_start_92
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 554
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_98} :catch_98

    :catch_98
    :cond_98
    if-eqz v2, :cond_9d

    .line 560
    :try_start_9a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9d

    :catch_9d
    :cond_9d
    :goto_9d
    return v0

    :catchall_9e
    move-exception p0

    :goto_9f
    if-eqz v1, :cond_a4

    .line 548
    :try_start_a1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a4

    :catch_a4
    :cond_a4
    if-eqz p1, :cond_ac

    .line 553
    :try_start_a6
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 554
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ac} :catch_ac

    :catch_ac
    :cond_ac
    if-eqz v2, :cond_b1

    .line 560
    :try_start_ae
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b1

    .line 562
    :catch_b1
    :cond_b1
    throw p0
.end method

.method public updatePolicy(Ljava/lang/String;Z)Z
    .registers 11

    .line 90
    invoke-virtual {p0}, Lcom/android/server/asks/RuleUpdateForSecurity;->enforcePermissionCheckForASKS()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 91
    iget-object p0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updatePolicy: enforced fail"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 98
    :cond_10
    iget-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    if-eqz v0, :cond_1d0

    .line 101
    iget-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TRY::::::::::::::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 105
    :try_start_2b
    new-instance v2, Landroid/util/jar/StrictJarFile;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v1, v3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_1cd
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_31} :catch_1c7
    .catchall {:try_start_2b .. :try_end_31} :catchall_1c0

    if-eqz p2, :cond_42

    :try_start_33
    const-string p1, "SEC-INF/targetinfo"

    .line 109
    invoke-virtual {v2, p1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-nez p1, :cond_49

    const-string p1, "META-INF/SEC-INF/targetinfo"

    .line 111
    invoke-virtual {v2, p1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    goto :goto_49

    :cond_42
    const-string/jumbo p1, "targetinfo"

    .line 114
    invoke-virtual {v2, p1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    :cond_49
    :goto_49
    if-eqz p1, :cond_1ae

    .line 118
    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string v5, "Target Info exists"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_a6

    if-eqz p2, :cond_67

    .line 120
    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v4}, Lcom/android/server/asks/RUFSContainer;->getSizeofzip()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Long;->compare(JJ)I

    move-result v4

    if-nez v4, :cond_67

    goto :goto_a6

    .line 150
    :cond_67
    iget-object p2, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string v0, "Fail"

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p2, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ticke size "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v3}, Lcom/android/server/asks/RUFSContainer;->getSizeofzip()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Token size "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b5

    .line 121
    :cond_a6
    :goto_a6
    invoke-virtual {p0, v2, p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->digest(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v4

    .line 122
    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "digestFromFile  :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "digestFromtoken :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v7}, Lcom/android/server/asks/RUFSContainer;->getDigest()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_ec

    if-eqz p2, :cond_1b5

    .line 124
    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v5}, Lcom/android/server/asks/RUFSContainer;->getDigest()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b5

    .line 125
    :cond_ec
    invoke-virtual {p0, v2, p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->readFile(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[B

    move-result-object p1

    if-eqz p1, :cond_1b5

    const-string v5, "ASKSRUFS!!"

    .line 127
    invoke-virtual {p0, p1, v5}, Lcom/android/server/asks/RuleUpdateForSecurity;->descramble([BLjava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_158

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v5}, Lcom/android/server/asks/RUFSContainer;->getPolicyVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/asks/RuleUpdateForSecurity;->setDevice_policyVersionPath(Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/server/asks/RuleUpdateForSecurity;->writeFile([BLjava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/asks/RuleUpdateForSecurity;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_158
    if-eqz p2, :cond_1a3

    .line 137
    iget-object p1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->compSizeofUncompressFiles(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v3, :cond_1a3

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {p2}, Lcom/android/server/asks/RUFSContainer;->getPolicyVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->applyPolicies(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_1b5

    .line 140
    iget-object p0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "policy applied!"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ac

    :cond_1a3
    if-nez p2, :cond_1b5

    .line 144
    iget-object p0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string p1, "Not yet policy applied due to policy list"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1ac
    move v1, v3

    goto :goto_1b5

    .line 156
    :cond_1ae
    iget-object p0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string p1, " mTokenEntry is null plz check "

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b5
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_1b5} :catch_1be
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_1b5} :catch_1bc
    .catchall {:try_start_33 .. :try_end_1b5} :catchall_1b9

    .line 170
    :cond_1b5
    :goto_1b5
    :try_start_1b5
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_1d0

    goto :goto_1d0

    :catchall_1b9
    move-exception p0

    move-object v0, v2

    goto :goto_1c1

    :catch_1bc
    move-object v0, v2

    goto :goto_1c7

    :catch_1be
    move-object v0, v2

    goto :goto_1cd

    :catchall_1c0
    move-exception p0

    :goto_1c1
    if-eqz v0, :cond_1c6

    :try_start_1c3
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c6} :catch_1c6

    .line 172
    :catch_1c6
    :cond_1c6
    throw p0

    :catch_1c7
    :goto_1c7
    if-eqz v0, :cond_1d0

    .line 170
    :goto_1c9
    :try_start_1c9
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1d0

    goto :goto_1d0

    :catch_1cd
    :goto_1cd
    if-eqz v0, :cond_1d0

    goto :goto_1c9

    :catch_1d0
    :cond_1d0
    :goto_1d0
    return v1
.end method
