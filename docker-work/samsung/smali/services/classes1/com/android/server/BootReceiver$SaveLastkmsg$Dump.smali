.class public Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;
.super Ljava/lang/Object;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver$SaveLastkmsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Dump"
.end annotation


# instance fields
.field public final dumpInFix:Ljava/lang/String;

.field public final fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final listMax:I

.field public final synthetic this$1:Lcom/android/server/BootReceiver$SaveLastkmsg;


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver$SaveLastkmsg;Ljava/util/List;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 672
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;->this$1:Lcom/android/server/BootReceiver$SaveLastkmsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p2, p0, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;->fileList:Ljava/util/List;

    .line 674
    iput p3, p0, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;->listMax:I

    .line 675
    iput-object p4, p0, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;->dumpInFix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDumpInFix()Ljava/lang/String;
    .registers 1

    .line 680
    iget-object p0, p0, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;->dumpInFix:Ljava/lang/String;

    return-object p0
.end method

.method public getFileList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 678
    iget-object p0, p0, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;->fileList:Ljava/util/List;

    return-object p0
.end method

.method public getListMax()I
    .registers 1

    .line 679
    iget p0, p0, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;->listMax:I

    return p0
.end method
