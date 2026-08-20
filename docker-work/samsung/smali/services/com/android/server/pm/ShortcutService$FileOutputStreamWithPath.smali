.class Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
.super Ljava/io/FileOutputStream;
.source "ShortcutService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileOutputStreamWithPath"
.end annotation


# instance fields
.field public final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1533
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1534
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .registers 1

    .line 1538
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->mFile:Ljava/io/File;

    return-object p0
.end method
