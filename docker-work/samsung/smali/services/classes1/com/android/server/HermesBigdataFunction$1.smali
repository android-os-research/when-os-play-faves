.class public Lcom/android/server/HermesBigdataFunction$1;
.super Ljava/lang/Object;
.source "HermesBigdataFunction.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HermesBigdataFunction;->unZipDumpstate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/HermesBigdataFunction;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesBigdataFunction;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/android/server/HermesBigdataFunction$1;->this$0:Lcom/android/server/HermesBigdataFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    .line 125
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_21

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "dumpstate_skeymaster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "zip"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method
