.class public Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;
.super Ljava/lang/Object;
.source "PrePackageInstallerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrePackageInstallLogMsg"
.end annotation


# static fields
.field public static final LOG_FILE_PATH:Ljava/lang/String; = "/data/log/PreloadInstaller.txt"


# instance fields
.field public outputContents:Ljava/lang/StringBuffer;

.field public sdfNow:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->outputContents:Ljava/lang/StringBuffer;

    .line 642
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->sdfNow:Ljava/text/SimpleDateFormat;

    const-string v0, ""

    .line 645
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 7

    .line 664
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/PreloadInstaller.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    :try_start_7
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_48

    .line 666
    :try_start_d
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_3e

    .line 667
    :try_start_14
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v4
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_34

    .line 668
    :try_start_17
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->outputContents:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 669
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->outputContents:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 670
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_31

    .line 671
    :try_start_27
    invoke-virtual {v0, v2, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_34

    .line 672
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3e

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_48

    goto :goto_4e

    :catchall_31
    move-exception p0

    .line 670
    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 665
    :try_start_35
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw p0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p0

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v0

    :try_start_44
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    move-exception p0

    const-string v0, "PrePackageInstaller"

    .line 673
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    return-void
.end method

.method public out(Ljava/lang/String;)V
    .registers 6

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 650
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->sdfNow:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrePackageInstaller"

    .line 652
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v1

    .line 654
    :try_start_17
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->outputContents:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 655
    monitor-exit v1

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public write(Ljava/lang/String;)V
    .registers 4

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "write-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->flush()V

    return-void
.end method
