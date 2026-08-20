.class public final Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;
.super Ljava/lang/Object;
.source "DisplayWindowSettingsProvider.java"

# interfaces
.implements Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayWindowSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AtomicFileStorage"
.end annotation


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>(Landroid/util/AtomicFile;)V
    .registers 2

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    return-void
.end method


# virtual methods
.method public finishWrite(Ljava/io/OutputStream;Z)V
    .registers 4

    .line 575
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_14

    .line 578
    check-cast p1, Ljava/io/FileOutputStream;

    if-eqz p2, :cond_e

    .line 580
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_13

    .line 582
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_13
    return-void

    .line 576
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected OutputStream as argument: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openRead()Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 565
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method

.method public startWrite()Ljava/io/OutputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method
