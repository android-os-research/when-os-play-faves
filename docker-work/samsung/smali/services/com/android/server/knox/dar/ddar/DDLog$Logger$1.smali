.class public Lcom/android/server/knox/dar/ddar/DDLog$Logger$1;
.super Ljava/lang/Object;
.source "DDLog.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/knox/dar/ddar/DDLog$Logger;->cleanupBackupFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$1;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "ddar_fw_log"

    .line 295
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, ".txt"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "ddar_fw_log.txt"

    .line 296
    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method
